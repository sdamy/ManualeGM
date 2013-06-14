#!/bin/sh
#Usare con ./pre-revisione.sh scelta-default

echo > traduttori
for file in $(ls -1 | grep '\.html$')
	do

	if [ "$file" = "gmi.html" ]; then
		continue
	fi

	IFS="
"
	authors=$(git log -E --grep='(TRADOTTO|REVISIONATO)' master -- $file | grep -o 'Author: [^ ]*' | sed 's/Author: //' | uniq)
	trcount=$(echo "$authors" | wc -l)

	if [ $trcount -ne 1 ]; then
		echo "Chi ha tradotto $file? (probabilmente è l'ultimo)"
		echo "     0	(Altro)"
		echo "$authors" | cat -n
		read choice

		if [ "$choice" -gt 0 ]; then
			author=$(echo "$authors" | sed -n "${choice}p")
		else
			echo "Scrivi il nome dell'autore/i (separati da spazi, in cui il primo è il più importante)"
			read author
		fi
	else
		author=$(echo "$authors" | sed -n 1p)
	fi

	for link in $(grep -o '<a[^>\n]*href="[^"\n]*"[^>\n]*>.*</a>' $file)
		do
		atitle=`echo $link | grep -m 1 -o '>[^<]*<' | grep -o '[^<>]*'`
		file2=`echo $link | grep -o 'href="[^"]*"' | grep -o '="[^"]*' | grep -o '[^="]*'`
		ttitle=`grep -m 1 -o '<title>.*</title>' $file2 | grep -o '>[^<]*<' | grep -o '[^<>]*'`
		htitle=`grep -m 1 -o '<[hH][1-7]>.*</[hH][1-7]>' $file2 | grep -o '>[^<]*<' | grep -o '[^<>]*'`
		
		if [ "$atitle" != "$htitle" -o "$htitle" != "$ttitle" ]; then
			echo "Titoli diversi. Inserisci il numero di uno di questi, oppure inserisci un altro titolo."
			echo "1) $atitle"
			echo "2) $ttitle"
			echo "3) $htitle"
			echo "4) (Lascia così)"

			choice="$1"

			if [ "$1" = "NO" ]; then
				choice="$ttitle"
				echo Scelta automatica.
			else
				read choice
			fi

			if [ -z "$choice" ]; then
				choice="$1"
			fi

			if [ "$choice" = "1" ]; then
				newtitle=$atitle
			elif [ "$choice" = "2" ]; then
				newtitle=$ttitle;
			elif [ "$choice" = "3" ]; then
				newtitle=$htitle;
			elif [ "$choice" = "4" ]; then
				newtitle=""
			else
				newtitle="$choice"
			fi

			if [ -n "$newtitle" ]; then
				newtitle=$(echo "$newtitle" | sed -e 's/[\/&]/\\&/g')
				sed "s/$atitle/$newtitle/" < $file > _
				mv _ $file
				sed -e "s/$htitle/$newtitle/" -e "s/$ttitle/$newtitle/" < $file2 > _
				mv _ $file2
			fi
			echo "======="
		fi
	done

	echo "A#$author#T#$(grep -m 1 -o '<title>.*</title>' $file | grep -o '>[^<]*<' | grep -o '[^<>]*')#F#$file#" >> traduttori

	sed -f correzioni.sed < $file > _
	mv _ $file
done

sed -f modifiche < traduttori > _
mv _ traduttori
sort traduttori > _
mv _ traduttori

echo '<!-- Questa pagina verrà generata automaticamente dopo aver inserito i dati sui traduttori, e questo verrà fatto dopo la revisione con lo script. -->
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<html>
<head>
<title>Crediti</title><link href="style.css" rel="stylesheet" type="text/css">
</head>
<body background="images/back.gif">

<center><h1>Crediti</h1></center>

Utenti che hanno contribuito alla traduzione:
	<ul>
' > gmi.html

last="---"

while read file
do
	authors=$(echo $file | grep -o 'A#[^#]*#' | grep -o '#[^#]*' | grep -o '[^#]*' | sed 's/ /\n/')
	current=$(echo "$authors" | sed -n 1p)
	others=$(echo "$authors" | sed -n '2,$p')
	title=$(echo $file | grep -o 'T#[^#]*#' | grep -o '#[^#]*' | grep -o '[^#]*')
	filename=$(echo $file | grep -o 'F#[^#]*#' | grep -o '#[^#]*' | grep -o '[^#]*')

	if [ "$current" != "$last" ]; then
		if [ "$last" != "---" ]; then
			echo "
			</ul>
		</li>
			" >> gmi.html
		fi

		echo "
		<li>
			<b>$current</b>
			<ul>
		" >> gmi.html
	fi

	if [ "$others" != "" ]; then
		add="(con parti tradotte da $others)"
	else
		add=""
	fi

	echo "				<li><a href=\"$filename\">$title</a> $add</li>" >> gmi.html

	last="$current"
done < traduttori

echo '	</ul>
</body>
</html>' >> gmi.html
