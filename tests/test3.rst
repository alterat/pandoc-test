APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 9 DI 26

18app
=====

**Servizio Web per verifica voucher degli esercenti**

Gli esercenti registrati al servizio “\ **18app**\ ” per la vendita
online potranno validare nei propri sistemi i voucher di acquisto di
beni da parte dei 18enni utilizzando uno specifico servizio web di cui
si forniscono di seguito le specifiche di utilizzo.

In merito agli endpoint, si precisa che al momento l’indirizzo
referenziato nel wsdl
(`http://bonus.mibact.it/VerificaVoucher <http://bonus.mibact.it/VerificaVoucher>`__)
è provvisorio.

Il servizio web di **verifica del voucher** da parte degli esercenti
rende disponibili 2 principali operazioni (“**Check**\ ” e
“\ **Confirm**\ ”). La seguente descrizione delle operazioni è
necessaria per valorizzare adeguatamente i campi di input. Pertanto le
operazioni esposte dall’interfaccia wsdl possono essere descritte come
segue:

Check
'''''

+-----------------------+-----------------------+-----------------------+
| INPUT:                | tipo operazione       | *“1”, “2”*            |
+=======================+=======================+=======================+
| OUTPUT:               | codice voucher        | *CF o Nome e Cognome* |
|                       | nominativo            |                       |
|                       | beneficiario          |                       |
+-----------------------+-----------------------+-----------------------+
|                       | partita IVA esercente | *cinema, teatro,      |
|                       | ambito                | libreria…*            |
+-----------------------+-----------------------+-----------------------+
|                       | bene                  | *libri, spettacoli…*  |
+-----------------------+-----------------------+-----------------------+
|                       | importo               | *importo totale del   |
|                       |                       | voucher*              |
+-----------------------+-----------------------+-----------------------+

Se **tipo operazione** verrà valorizzato con **“1”**, il check del
voucher restituerà all’esercente i campi previsti in output senza
consumare il voucher e quindi senza scalare l’importo dal borsellino del
beneficiario. Questa modalità di utilizzo dell’operazione non è
obbligatoria, ma lascia all’esercente la possibilità di eseguire un
controllo tra il nominativo del beneficiario e quello del suo cliente in
sessione.

Se **tipo operazione** verrà valorizzato con **“2”**, il check del
voucher consumerà direttamente l’importo, scalandolo dal borsellino del
beneficiario, e restituerà comunque le informazioni previste in output.
L’esercente potrà scegliere di usare direttamente questa modalità oppure
effettuare due chiamate successive: la prima per il controllo del
beneficiario e la seconda per l’effettivo utilizzo del voucher.

Il sequence diagram seguente descrive ad alto livello l’interazione tra
i vari sistemi coinvolti, nei casi fin qui descritti:

|image0|

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 10 DI 26

Confirm
'''''''

+---------+------------------------+-------------------------------------+
| INPUT:  | tipo operazione        | *“1”*                               |
+=========+========================+=====================================+
|         | codice voucher importo | *importo confermato dall’esercente* |
+---------+------------------------+-------------------------------------+
| OUTPUT: | esito                  |                                     |
+---------+------------------------+-------------------------------------+

In questa versione del servizio il **tipo operazione** verrà valorizzato
sempre con **“1”** e l’esercente potrà comunicare la quota utilizzata
rispetto all’importo totale del voucher, momentaneamente impegnato. Il
sistema scalerà l’importo dal borsellino del beneficiario,
riaccreditando la parte non utilizzata, calcolata come differenza tra il
valore totale del voucher e l’importo comunicato dall’esercente.

L’\ **esito** dell’operazione (**“OK”** / **“KO”**) sarà restituito
all’esercente che potrà eventualmente fornire un feedback al
beneficiario.

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 11 DI 26

Modalità di autenticazione
==========================

Per consumare il web service di verifica del voucher, ogni esercente
dovrà essere dotato di un **certificato di autenticazione** da
installare nel proprio client del servizio e da utilizzare nella
chiamata SOAP per effettuare l’autenticazione in modalità SSL con
certificato client.

Tale certificato X509 sarà generabile e scaricabile in formato .cer
direttamente tramite l’applicazione web dedicata agli esercenti, in area
autenticata. In particolare il processo di generazione del certificato
prevede due step:

1. Il primo step di richiesta del certificato; a seguito di questa
   operazione il sistema prende in carico la richiesta.

2. Il secondo step di verifica esito della richiesta; questa operazione
   controlla se è pronto il certificato emesso da CA dedicata ed
   eventualmente lo rende disponibile per il download.

Durante il primo step sarà necessario caricare un file .der
rappresentante la richiesta di certificato alla CA dedicata al progetto.
Tale csr deve presentare le seguenti caratteristiche:

-  Algoritmo generazione chiavi: RSA

-  Lunghezza chiavi: 2048 bit

Una volta scaricato il certificato X509 va installato, insieme alla
corrispondente chiave privata, nel client utilizzato per il servizio di
verifica voucher. Pertanto l’evento di download del certificato non può
rappresentare la definitiva attivazione dell’esercente. E’ stato
previsto uno step di attivazione, di tipo “Check” con i seguenti valori
di input:

-  tipo operazione = 1

-  codice voucher = 11aa22bb

Questa operazione equivale ad una transazione di attivazione, il cui
unico effetto è quello di portare l’esercente nello stato attivo. Da
questo momento in poi i beneficiari potranno generare voucher reali per
tale esercente.

Endpoint del servizio

Il servizio risponde ai seguenti endpoint
`https://wstest.18app.italia.it/VerificaVoucherWEB/VerificaVoucher <https://wstest.18app.italia.it/VerificaVoucherWEB/VerificaVoucher>`__
(ambiente di prova)
`https://ws.18app.italia.it/VerificaVoucherWEB/VerificaVoucher <https://ws.18app.italia.it/VerificaVoucherWEB/VerificaVoucher>`__
(ambiente reale)

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 12 DI 26

Codici di errore
================

La seguente tabella rappresenta i possibili errori gestiti dal sistema:

+-----------------------------------+-----------------------------------+
| **Codice/Code**                   | **Descrizione/Description**       |
+===================================+===================================+
| 01                                | Errore nel formato dei parametri  |
|                                   | in input, verificarli e riprovare |
+-----------------------------------+-----------------------------------+
|                                   | Error in the input parameters,    |
|                                   | check and try again               |
+-----------------------------------+-----------------------------------+
| 02                                | Il buono richiesto non è          |
|                                   | disponibile sul sistema o è già   |
|                                   | stato riscosso o annullato        |
+-----------------------------------+-----------------------------------+
|                                   | The requested voucher is not      |
|                                   | available on the system. It could |
|                                   | be already collected or canceled  |
+-----------------------------------+-----------------------------------+
| 03                                | Impossibile attivare l'esercente. |
|                                   | Verificare che i dati siano       |
|                                   | corretti e che                    |
|                                   |                                   |
|                                   | l'esercente non sia già stato     |
|                                   | attivato                          |
+-----------------------------------+-----------------------------------+
|                                   | Impossible to activate the user.  |
|                                   | Please verify input parameters    |
|                                   | and that the user has not been    |
|                                   | already activated.                |
+-----------------------------------+-----------------------------------+
| 04                                | L'importo richiesto è superiore   |
|                                   | all'importo del buono selezionato |
+-----------------------------------+-----------------------------------+
|                                   | The amount claimed is greater     |
|                                   | than the amount of the selected   |
|                                   | voucher                           |
+-----------------------------------+-----------------------------------+
| 05                                | Non si può verificare o consumare |
|                                   | il buono poichè l'esercente       |
|                                   | risulta non attivo                |
+-----------------------------------+-----------------------------------+
|                                   | User inactive, voucher impossible |
|                                   | to verify.                        |
+-----------------------------------+-----------------------------------+
| 06                                | Ambito e bene del buono non       |
|                                   | coincidono con ambiti e beni      |
|                                   | trattati dall’esercente           |
+-----------------------------------+-----------------------------------+
|                                   | Category and type of this voucher |
|                                   | are not aligned with category and |
|                                   | type managed by the user.         |
+-----------------------------------+-----------------------------------+

|image1|

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 13 DI 26

Esempi di request/response
==========================

Di seguito si riportano due esempi di request e relativa response, sia
per l’operation “Check” che per l’operation “Confirm”.

“Check”

Check request:

<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:ver="http://bonus.mibact.it/VerificaVoucher/">

<soapenv:Header/>

<soapenv:Body>

<ver:CheckRequestObj>

<checkReq>

<tipoOperazione>1</tipoOperazione>

<codiceVoucher>2a75f266</codiceVoucher>

<!--Optional:

<partitaIvaEsercente>?</partitaIvaEsercente>

-->

</checkReq>

</ver:CheckRequestObj>

</soapenv:Body>

</soapenv:Envelope> Check response:

<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">

<soapenv:Body>

<a:CheckResponseObj xmlns:a="http://bonus.mibact.it/VerificaVoucher/">

<checkResp>

<nominativoBeneficiario>AAABBB10X10X111D</nominativoBeneficiario>

<partitaIvaEsercente>01043931003</partitaIvaEsercente>

|image2|

APPLICAZIONE 18APP ALLEGATO

LINEE GUIDA PER ESERCENTI PAG. 14 DI 26

<ambito>Teatro</ambito>

<bene>Biglietti</bene>

<importo>40.5</importo>

</checkResp>

</a:CheckResponseObj>

</soapenv:Body>

</soapenv:Envelope>

“Confirm”

Confirm request:

<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
xmlns:ver="http://bonus.mibact.it/VerificaVoucher/">

<soapenv:Header/>

<soapenv:Body>

<ver:ConfirmRequestObj>

<checkReq>

<tipoOperazione>1</tipoOperazione>

<codiceVoucher>2a75f266</codiceVoucher>

<importo>30.20</importo>

</checkReq>

</ver:ConfirmRequestObj>

</soapenv:Body>

</soapenv:Envelope> Confirm response:

<soapenv:Envelope
xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/">

<soapenv:Body>

<a:ConfirmResponseObj xmlns:a="http://bonus.mibact.it/VerificaVoucher/">

<checkResp>

<esito>OK</esito>

</checkResp>

</a:ConfirmResponseObj>

</soapenv:Body>

</soapenv:Envelope>

.. |image0| image:: media/image1.png
   :width: 7.27847in
   :height: 9.82569in
.. |image1| image:: media/image3.jpeg
   :width: 7.74167in
   :height: 9.82569in
.. |image2| image:: media/image5.jpeg
   :width: 7.74167in
   :height: 9.82569in
