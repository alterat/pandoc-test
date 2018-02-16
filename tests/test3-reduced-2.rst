18app
=====

    **Servizio Web per verifica voucher degli esercenti**

    Gli esercenti registrati al servizio “\ **18app**\ ” per la vendita
    online potranno validare nei propri sistemi i voucher di acquisto di
    beni da parte dei 18enni utilizzando uno specifico servizio web di
    cui si forniscono di seguito le specifiche di utilizzo.

    In merito agli endpoint, si precisa che al momento l’indirizzo
    referenziato nel wsdl
    (`http://bonus.mibact.it/VerificaVoucher <http://bonus.mibact.it/VerificaVoucher>`__)
    è provvisorio.

    Il servizio web di **verifica del voucher** da parte degli esercenti
    rende disponibili 2 principali operazioni (“**Check**\ ” e
    “\ **Confirm**\ ”). La seguente descrizione delle operazioni è
    necessaria per valorizzare adeguatamente i campi di input. Pertanto
    le operazioni esposte dall’interfaccia wsdl possono essere descritte
    come segue:

Check
'''''

+-----------------------+-----------------------+-----------------------+
|     INPUT:            | tipo operazione       |     *“1”, “2”*        |
+=======================+=======================+=======================+
|     OUTPUT:           |     codice voucher    |     *CF o Nome e      |
|                       |     nominativo        |     Cognome*          |
|                       |     beneficiario      |                       |
+-----------------------+-----------------------+-----------------------+
|                       |     partita IVA       | *cinema, teatro,      |
|                       |     esercente ambito  | libreria…*            |
+-----------------------+-----------------------+-----------------------+
|                       |     bene              |     *libri,           |
|                       |                       |     spettacoli…*      |
+-----------------------+-----------------------+-----------------------+
|                       | importo               | *importo totale del   |
|                       |                       | voucher*              |
+-----------------------+-----------------------+-----------------------+

..

    Se **tipo operazione** verrà valorizzato con **“1”**, il check del
    voucher restituerà all’esercente i campi previsti in output senza
    consumare il voucher e quindi senza scalare l’importo dal borsellino
    del beneficiario. Questa modalità di utilizzo dell’operazione non è
    obbligatoria, ma lascia all’esercente la possibilità di eseguire un
    controllo tra il nominativo del beneficiario e quello del suo
    cliente in sessione.

    Se **tipo operazione** verrà valorizzato con **“2”**, il check del
    voucher consumerà direttamente l’importo, scalandolo dal borsellino
    del beneficiario, e restituerà comunque le informazioni previste in
    output. L’esercente potrà scegliere di usare direttamente questa
    modalità oppure effettuare due chiamate successive: la prima per il
    controllo del beneficiario e la seconda per l’effettivo utilizzo del
    voucher.
