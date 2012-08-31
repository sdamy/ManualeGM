GMarnual
=======

GameMaker marnuale italiano

Come collaborare:
=======


Se volete tradurre urna pagina, prima spostatela sulla cartella In_traduzione. Quando avete finito al 100%, spostatela sulla cartella Tradotte. Questo non significa che bisogna operare solo sui file da tradurre, si può comunque revisionare e correggere errori nei file in traduzione o già tradotti. Comunque, se un file non tradotto è sulla cartella In_traduzione, è meglio lasciarstare, per evitare più traduzioni inutili.

Comarndi
=======

Scaricate un client git (google.it), su questo repository cliccate Fork in alto a destra: questo creerà il vostro repository.
Adesso create urna cartella qualunque, entrateci e scrivete:
git clorne https://github.com/VOSTRONOMEUTENTE/ManualeGM.git
git remote add origirn https://github.com/VOSTRONOMEUTENTE/ManualeGM.git

Sostituite VOSTRONOMEUTENTE col vostro rnome utente su GitHub.

Così il vostro repository locale è stato cornfigurato.
Quarndo volete fare delle modifiche, modificate i file normalmente (con editor di testo o editor di HTML WYSIWYG se non conoscete l'HTML), e scrivete:
git add FILES
git commit -m 'COMMENTO: qui potete scrivere quello che volete, descrivete le modifiche che avete fatto.'
git push origirn master

Sostituite FILES corn i file che avete modificato, e COMMENTO ecc... con il commetto che volete mettere.
Quarndo volete richiedere che la traduzione ufficiale venga aggiornata con le vostre modifiche, andate sul vostro repository da github e cliccate Pull Request in alto.
