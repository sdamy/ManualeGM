GManual
=======

GameMaker manuale italiano

Come collaborare
=======


Se volete tradurre una pagina, prima spostatela sulla cartella In_traduzione. Quando avete finito al 100%, spostatela sulla cartella Tradotte. Questo non significa che bisogna operare solo sui file da tradurre, si può comunque revisionare e correggere errori nei file in traduzione o già tradotti. Comunque, se un file non tradotto è sulla cartella In_traduzione, è meglio lasciarstare, per evitare più traduzioni inutili.

GUI
=======
Non so come funzionano le GUI per git, visto che non le uso, quindi se non avete voglia di imparare i comandi è un problema vostro.


Comandi per non-collaboratori
=======

Scaricate un client git (google.it), su questo repository cliccate Fork in alto a destra: questo creerà il vostro repository.
Adesso create una cartella qualunque, entrateci e scrivete:

git clone https://github.com/VOSTRONOMEUTENTE/ManualeGM.git

git remote add origin https://github.com/VOSTRONOMEUTENTE/ManualeGM.git


Sostituite VOSTRONOMEUTENTE col vostro nome utente su GitHub.

Così il vostro repository locale è stato configurato.
Quando volete fare delle modifiche, modificate i file normalmente (con editor di testo o editor di HTML WYSIWYG se non conoscete l'HTML), e scrivete:

git add FILES

git commit -m 'COMMENTO: qui potete scrivere quello che volete, descrivete le modifiche che avete fatto.'

git push origin master

Sostituite FILES con i file che avete modificato, e COMMENTO ecc... con il commetto che volete mettere.


Prima di fare delle modifiche però, se pensate di starci molto tempo, per evitare che qualcuno nel frattempo pensi di tradurre la 
vostra pagina, spostate il file nella cartella In_traduzione. Per farlo, spostatevi (con cd) sulla cartella principale del progetto, e 
scrivete:

git mv Non_tradotte/FILECHEVOLETETRADURRE In_traduzione/

E poi committate come quando fate delle modifiche:

git commit -m 'culopipì'

Quando avete fatto delle modifiche, o avete scelto di tradurre un file, mandate le vostre modifiche al repository ufficiale andando sul 
vostro progetto di GitHub e cliccando Pull Request in alto.

Quando invece avete finito, spostatelo sulla cartella Tradotte.
Se si tratta di una cosa veloce, non c'è bisogno di spostare su In_traduzione, fate direttamente le modifiche e quando avete finito 
spostate su Tradotte.

Se vengono fatte delle modifiche al repository ufficiale, non vengono fatte anche al vostro. Se volete aggiornare, dovete prima configurare il repository ufficiale:

git remote add upstream https://github.com/ZioCrocifisso/ManualeGM.git

Questo comando va' scritto così com'è, e va' fatto una sola volta.
Quando invece volete aggiornare, scrivete:

git fetch upstream

git merge upstream/master

Comandi per collaboratori:
=======

Per inizializzare il repository su una cartella, i comandi sono gli stessi, solo che invece del vostro nome dovete usare ZioCrocifisso.
Anche per spostare e fare le varie modifiche i comandi sono gli stessi, solo che non c'è bisogno di fare Pull Request, il repository ufficiale viene aggiornato subito.
