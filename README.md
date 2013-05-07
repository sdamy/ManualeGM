È adesso disponibile un'anteprima delle pagine su: http://ziocrocifisso.github.com/ManualeGM/


Manuale
=======

Traduzione del manuale di Game Maker 8.1 in italiano.

Come collaborare
=======

Alla pagina https://github.com/ZioCrocifisso/ManualeGM è disponibile una lista di files, e a destra del nome c'è scritto lo stato. Ovviamente bisogna cliccare i files con scritto "DA TRADURRE". Una volta scelto il file (cliccandolo), apparirà il suo contenuto: in alto a destra ci sono vari bottoni. Per modificare il file bisogna cliccare il tasto Edit. Nella pagina che si aprirà, ci sarà il contenuto modificabile del file. C'è inoltre un campo da riempire, "Commit summary". Qui dovrà essere inserito lo stato: se non avete ancora finito, scrivete "IN TRADUZIONE" (esattamente così), se avete finito "TRADOTTO", se avete deciso di abbandonare la traduzione, "DA TRADURRE". Cliccate infine Commit Changes. Prima di fare ciò però, è meglio copiare il contenuto del file, poiché potrebbe accadere un errore se qualcun altro stava modificando nel frattempo un altro file. È consigliato inoltre mettere "IN TRADUZIONE" non appena si decide quale file tradurre, anche se non sono state fatte modifiche (in tal caso sarà necessaria comunque una piccola modifica, anche uno spazio in più), per evitare che qualcun altro scelga lo stesso file.

Traduzione di alcuni termini
=======

Tutto ci&ograve; che si trova in GM non va' tradotto. Quindi non solo roba come sprites e background, ma anche i nomi degli eventi, delle azioni, dei menu, cose come advanced mode, ecc...
Perch&eacute;? Perché se tu gli dici di mettere l'evento "Fine del percorso" a uno che non sa' l'inglese, visto che in GM si chiama "End of path", il tizio non sapr&agrave; che evento mettere.
Per&ograve; si può (anzi, &egrave; consigliato) scrivere una traduzione assieme al termine inglese la prima volta che si incontra (per esempio "gli object (oggetti) sono roba blabla").

Coerenza
=======

Cercate di essere coerenti, usate sempre gli stessi termini se sono stati tradotti, e se state traducendo delle pagine in una sezione, per scegliere il titolo guardate nell'indice della sezione (XXX_index.html o altre) come hanno tradotto gli altri. Non &egrave; carino cliccare su "Fantastiche impostazioni riguardo alle preferenze di Game Maker" e ritrovarsi su "Preferenze" o "Preferences".
Per ridurre i problemi di questo tipo, traducete prima gli indici, poi le pagine normali, guardando ovviamente l'indice collegato per sapere il titolo da mettere tra i tag title e h.

Keywords
=======

Alla fine di ogni pagina trovate le keywords: anche queste vanno tradotte, ma vanno messe insieme a quelle in inglese. Quindi, se trovate "<!-- KEYWORDS cat dog -->" dovete cambiare in "<!-- KEYWORDS cat dog gatto cane -->".

Revisione
=======

La revisione è la fase finale della traduzione: in questa fase, tutti i file verranno riletti per vedere se contengono degli errori. La revisione va fatta solo dopo aver tradotto tutto e applicato gli script. Durante la revisione bisogna:
- Controllare se ci sono errori grammaticali, sia tramite strumenti automatici che manualmente.
- Controllare la coerenza con le altre traduzioni, per esempio nella traduzione di termini come "background". Per evitare di dover controllare tutte le pagine ogni volta, verrà creato un file 0_CONVENZIONI dove ognuno potrà dire come ha tradotto un certo termine, contestare le altre traduzioni, fare richiesta per un consiglio su come tradurre, e, ovviamente, sapere come hanno tradotto un certo termine gli altri.
- Controllare nella pagina dei crediti se questi sono corretti per il file che state controllando.
- Sostituire le frasi poco chiare.
- Controllare se nell'anteprima il file viene visualizzato correttamente. (se non sapete come sistemare, segnalateli a ZioCrocifisso)
- (questa lista potrebbe ingrandirsi)

Riguardo al primo punto, è importante una buona conoscenza della lingua italiana. Se pensate di non poter correggere gli errori di grammatica ma di poter sistemare tutti gli altri punti, allora fatelo, ma mettete come stato "DA REVISIONARE" e scrivete all'inizio del file:
&lt;!-- Questo file è stato revisionato ma dev'essere controllata la grammatica --&gt;
O cose simili.

È importante cominciare la revisione dagli indici, e procedere con i file di livello minore (es. indice globale -> indice sezione 1 -> introduzione -> ecc.).
Se state revisionando un file importante come un indice, scrivete nel file 0_CONVENZIONI il modo in cui avete tradotto certi termini su cui potrebbero esserci dubbi, come "background", e fate richiesta se avete dubbi. Se invece state revisionando un file minore, dovete rispettare le traduzioni nel file 0_CONVENZIONI, a meno che non troviate termini nuovi dubbiosi.

Per la revisione, si applicano gli stati "DA REVISIONARE" (significa che è stato scriptato), "IN REVISIONE", e "REVISIONATO".

Manuale originale
=======

Chi non avesse il manuale di GM8.1 e volesse vedere le pagine originali, vada qui: https://github.com/ZioCrocifisso/ManualeGM/tree/0378e0579560b5492c7b36416440c0bb52c2c0da
