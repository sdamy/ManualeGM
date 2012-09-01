Manuale
=======

GameMaker manuale in italiano

Come collaborare
=======

Per modificare una pagina basta selezionare il file e premere il tasto edit in alto a destra del textbox. Questo creerà un commit, cioè un oggetto in cui sono contenute le modifiche.

Se volete tradurre una pagina, prima di tutto cambiate il commento del commit (la textbox sotto) alla vostra prima modifica per indicare che ci state lavorando (per esempio scrivendo IN TRADUZIONE) ed eventualmente note per farsi aiutare da altri o consigli semplici su come strutturare la pagina. (per altre discussioni usare gli Issues)
Successivamente passate alla traduzione vera e propria.
Quando avete finito, come commento mettete "TRADOTTO".

TRADOTTO non significa che il file è completo, infatti di solito traduciamo velocemente, ma per considerare completo un file dev'essere prima revisionato: se vuoi fare ciò, rileggi tutto cercando e correggendo errori di grammatica e ortografia e controlla la coerenza con altre pagine collegate (se l'indice chiama questa pagina "cacca", il titolo dev'essere anche qui "cacca"). Una volta fatta la revisione, committa usando come commento "REVISIONATO".
Comunque la revisione va' fatta alla fine, quando la maggior parte delle pagine sono ormai tradotte.
Se trovate SEDATO in un file, significa che quel file è stato revisionato, e sono stati applicati degli script su di esso per correggere gli accenti (è diventa &egrave; per esempio).

Quando modificherete una pagina vi può capitare un'errore che indica che mentre voi la modificavate qualcun'altro ha modificato un file, anche non necessariamente quello con cui state lavorando quindi è sempre consigliabile copiare tutto sulla clipboard o su una copia di backup offline, guardare le modifiche fatte dall'altra persona, e riuppare le vostre modifiche + le sue: se per esempio un file contiene "cat dog", tu stavi inviando "gatto dog", e il tizzio di turno stava inviando "cat cane", unisci le due traduzioni, inviando "gatto cane".

Traduzione di alcuni termini
=======

Tutto ciò che si trova in GM non va' tradotto. Quindi non solo roba come sprites e background, ma anche i nomi degli eventi, delle azioni, dei menu, cose come advanced mode, ecc...
Perché? Perché se tu gli dici di mettere l'evento "Fine del percorso" a uno che non sa' l'inglese, visto che in GM si chiama "End of path", il tizio non saprà che evento mettere.
Però si può (anzi, è consigliato) scrivere una traduzione assieme al termine inglese la prima volta che si incontra (per esempio "gli sprites (sprite) sono roba blabla").

Coerenza!
=======

Cercate di essere coerenti, usate sempre gli stessi termini se sono stati tradotti, e se state traducendo delle pagine in una sezione, per scegliere il titolo guardate nell'indice della sezione (XXX_index.html o altre) come hanno tradotto gli altri. Non è carino cliccare su "Fantastiche impostazioni riguardo alle preferenze di Game Maker" e ritrovarsi su "Preferenze" o "Preferences".

Keywords
=======

Alla fine di ogni pagina trovate le keywords: anche queste vanno tradotte, ma vanno messe insieme a quelle in inglese. Quindi, se trovate "<!-- KEYWORDS cat dog -->" dovete cambiare in "<!-- KEYWORDS cat dog gatto cane -->".