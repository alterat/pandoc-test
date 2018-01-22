Appendice 3: regole tecniche di dettaglio per la compilazione della fattura
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~

    La valorizzazione degli elementi del tracciato xml deve rispettare i
    requisiti formali e di obbligatorietà previsti dalle regole di
    fatturazione elettronica e deve tener conto delle ulteriori
    indicazioni riportate nella tabella seguente:

+-------------+-------------+-------------+-------------+-------------+
|             |             |     **ID e  |     **Descr |     **NOTE* |
|             |             |     Nome    | izione      | *           |
|             |             |     Tag     |     funzion |             |
|             |             |     XML**   | ale**       |             |
+=============+=============+=============+
|     **1     |             |             |
|     <Fattur |             |             |
| aElettronic |             |             |
| aHeader>**  |             |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.1   | blocco      |             |
|             |     <DatiTr | sempre      |             |
|             | asmissione> | obbligatori |             |
|             | **          | o           |             |
|             |             | contenente  |             |
|             |             | informazion |             |
|             |             | i           |             |
|             |             | che         |             |
|             |             | identifican |             |
|             |             | o           |             |
|             |             | univocament |             |
|             |             | e           |             |
|             |             | il soggetto |             |
|             |             | che         |             |
|             |             | trasmette,  |             |
|             |             | il          |             |
|             |             | documento   |             |
|             |             | trasmesso,  |             |
|             |             | il          |             |
|             |             |             |             |
|             |             | formato in  |             |
|             |             | cui è stato |             |
|             |             | trasmesso   |             |
|             |             | il          |             |
|             |             | documento,  |             |
|             |             | il soggetto |             |
|             |             | destinatari |             |
|             |             | o           |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.1.1 | è           |             |
|             |     <IdTras | l’identific |             |
|             | mittente>** | ativo       |             |
|             |             | univoco del |             |
|             |             | soggetto    |             |
|             |             | trasmittent |             |
|             |             | e;          |             |
|             |             | per i       |             |
|             |             | soggetti    |             |
|             |             | residenti   |             |
|             |             | in Italia,  |             |
|             |             | siano essi  |             |
|             |             | persone     |             |
|             |             | fisiche o   |             |
|             |             | giuridiche, |             |
|             |             | corrisponde |             |
|             |             | al codice   |             |
|             |             | fiscale     |             |
|             |             | preceduto   |             |
|             |             | da **IT**;  |             |
|             |             | per i       |             |
|             |             | soggetti    |             |
|             |             | non         |             |
|             |             | residenti   |             |
|             |             | corrisponde |             |
|             |             | al numero   |             |
|             |             | identificat |             |
|             |             | ivo         |             |
|             |             | IVA (dove i |             |
|             |             | primi due   |             |
|             |             | caratteri   |             |
|             |             | rappresenta |             |
|             |             | no          |             |
|             |             | il paese    |             |
|             |             | secondo lo  |             |
|             |             | standard    |             |
|             |             | ISO 3166-1  |             |
|             |             | alpha-2     |             |
|             |             | code, ed i  |             |
|             |             | restanti,   |             |
|             |             | fino ad un  |             |
|             |             |             |             |
|             |             | massimo di  |             |
|             |             | 28, il      |             |
|             |             | codice vero |             |
|             |             | e proprio)  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.1.1.1   | codice      | [**IT**],   |
|             | <IdPaese>** | della       | [**ES**],   |
|             |             | nazione     | [**DK**],[* |
|             |             | espresso    | *…**]       |
|             |             | secondo lo  |             |
|             |             | standard    |             |
|             |             | ISO 3166-1  |             |
|             |             | alpha-2     |             |
|             |             | code        |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.1.1.2   | codice      | formato     |
|             | <IdCodice>* | identificat | alfanumeric |
|             | *           | ivo         | o           |
|             |             | fiscale     |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.1.2 | progressivo | formato     |
|             |     <Progre | univoco,    | alfanumeric |
|             | ssivoInvio> | attribuito  | o           |
|             | **          | dal         |             |
|             |             | soggetto    |             |
|             |             | che         |             |
|             |             | trasmette,  |             |
|             |             | relativo ad |             |
|             |             | ogni        |             |
|             |             | singolo     |             |
|             |             | documento   |             |
|             |             | fattura     |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.1.3 | contiene il | valori      |
|             | **          | codice      | ammessi:    |
|             |             | identificat | [**FPA12**] |
|             |     **<Form | ivo         |             |
|             | atoTrasmiss | del         |             |
|             | ione>**     | formato/ver |             |
|             |             | sione       |             |
|             |             | con cui è   |             |
|             |             | stato       |             |
|             |             | trasmesso   |             |
|             |             | il          |             |
|             |             | documento   |             |
|             |             | fattura     |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.1.4 | codice      | codice IPA  |
|             |     <Codice | dell'uffici | da          |
|             | Destinatari | o           | indicare:   |
|             | o>**        | dell’ammini | **CY0MHE**  |
|             |             | strazione   |             |
|             |             | dello stato |             |
|             |             | destinatari |             |
|             |             | o           |             |
|             |             | della       |             |
|             |             |             |             |
|             |             | fattura,    |             |
|             |             | definito    |             |
|             |             | dall'ammini |             |
|             |             | strazione   |             |
|             |             | di          |             |
|             |             | appartenenz |             |
|             |             | a           |             |
|             |             | come        |             |
|             |             | riportato   |             |
|             |             | nella       |             |
|             |             | rubrica     |             |
|             |             | “Indice     |             |
|             |             | PA”.        |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.2   | blocco      |             |
|             |     <Cedent | sempre      |             |
|             | ePrestatore | obbligatori |             |
|             | >**         | o           |             |
|             |             | contenente  |             |
|             |             | dati        |             |
|             |             | relativi al |             |
|             |             | cedente /   |             |
|             |             | prestatore  |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.2.1 | blocco      |             |
|             | <DatiAnagra | sempre      |             |
|             | fici>**     | obbligatori |             |
|             |             | o           |             |
|             |             | contenente  |             |
|             |             | i dati      |             |
|             |             | anagrafici, |             |
|             |             | professiona |             |
|             |             | li          |             |
|             |             | e fiscali   |             |
|             |             | del cedente |             |
|             |             | /           |             |
|             |             | prestatore  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.1   | numero di   |             |
|             | <IdFiscaleI | identificaz |             |
|             | VA>**       | ione        |             |
|             |             | fiscale ai  |             |
|             |             | fini IVA; i |             |
|             |             | primi due   |             |
|             |             | caratteri   |             |
|             |             | rappresenta |             |
|             |             | no          |             |
|             |             | il paese (  |             |
|             |             | **IT**,     |             |
|             |             | **DE**,     |             |
|             |             | **ES** …..) |             |
|             |             | ed i        |             |
|             |             | restanti    |             |
|             |             | (fino ad un |             |
|             |             | massimo di  |             |
|             |             | 28) il      |             |
|             |             | codice vero |             |
|             |             | e proprio   |             |
|             |             | che, per i  |             |
|             |             | residenti   |             |
|             |             | in Italia,  |             |
|             |             | corrisponde |             |
|             |             | al          |             |
|             |             |             |             |
|             |             | numero di   |             |
|             |             | partita     |             |
|             |             | IVA.        |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.1.1 | codice      | [**IT**],   |
|             | <IdPaese>** | della       | [**ES**],   |
|             |             | nazione     | [**DK**],[* |
|             |             | espresso    | *…**]       |
|             |             | secondo lo  |             |
|             |             | standard    |             |
|             |             | ISO 3166-1  |             |
|             |             | alpha-2     |             |
|             |             | code        |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.1.2 | codice      | formato     |
|             | <IdCodice>* | identificat | alfanumeric |
|             | *           | ivo         | o           |
|             |             | fiscale     |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.2   | numero di   | formato     |
|             | <CodiceFisc | Codice      | alfanumeric |
|             | ale>**      | Fiscale     | o           |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.3   | dati        |             |
|             | <Anagrafica | anagrafici  |             |
|             | >**         | identificat |             |
|             |             | ivi         |             |
|             |             | del cedente |             |
|             |             | /           |             |
|             |             | prestatore  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.3.1 | ditta,      | formato     |
|             | **          | denominazio | alfanumeric |
|             |             | ne          | o           |
|             | **<Denomina | o ragione   |             |
|             | zione>**    | sociale     |             |
|             |             | (ditta,     |             |
|             |             | impresa,    |             |
|             |             | società,    |             |
|             |             | ente), da   |             |
|             |             | valorizzare |             |
|             |             | in          |             |
|             |             | alternativa |             |
|             |             | ai campi    |             |
|             |             | **1.2.1.3.2 |             |
|             |             | **          |             |
|             |             | e           |             |
|             |             | **1.2.1.3.3 |             |
|             |             | **          |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.3.2 | nome della  | formato     |
|             | <Nome>**    | persona     | alfanumeric |
|             |             | fisica. Da  | o           |
|             |             | valorizzare |             |
|             |             | insieme al  |             |
|             |             | campo       |             |
|             |             | **1.2.1.3.3 |             |
|             |             | **          |             |
|             |             | ed in       |             |
|             |             | alternativa |             |
|             |             | al campo    |             |
|             |             | **1.2.1.3.1 |             |
|             |             | **          |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.3.3 | cognome     | formato     |
|             | **          | della       | alfanumeric |
|             |             | persona     | o           |
|             | **<Cognome> | fisica. Da  |             |
|             | **          | valorizzare |             |
|             |             | insieme al  |             |
|             |             | campo       |             |
|             |             | **1.2.1.3.2 |             |
|             |             | **          |             |
|             |             |             |             |
|             |             | ed in       |             |
|             |             | alternativa |             |
|             |             | al campo    |             |
|             |             | **1.2.1.3.1 |             |
|             |             | **          |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.1.3.5 | numero del  | formato     |
|             | <CodEORI>** | Codice EORI | alfanumeric |
|             |             | (Economic   | o           |
|             |             | Operator    |             |
|             |             | Registratio |             |
|             |             | n           |             |
|             |             | and         |             |
|             |             |             |             |
|             |             | Identificat |             |
|             |             | ion)        |             |
|             |             | in base al  |             |
|             |             | Regolamento |             |
|             |             | (CE) n. 312 |             |
|             |             | del 16      |             |
|             |             | aprile      |             |
|             |             | 2009. In    |             |
|             |             | vigore dal  |             |
|             |             | 1 luglio    |             |
|             |             | 2009        |             |
+-------------+-------------+-------------+-------------+-------------+

+-------------+-------------+-------------+-------------+-------------+
|             |             |     **ID e  |     **Descr |     **NOTE* |
|             |             |     Nome    | izione      | *           |
|             |             |     Tag     |     funzion |             |
|             |             |     XML**   | ale**       |             |
+=============+=============+=============+=============+
|             | **1.2.1.8   | regime      | valori      |
|             | <RegimeFisc | fiscale     | ammessi:    |
|             | ale>**      |             |             |
|             |             |             | **vedi      |
|             |             |             | tabella dei |
|             |             |             | Codici dei  |
|             |             |             | regimi      |
|             |             |             | fiscali     |
|             |             |             | riportata   |
|             |             |             | in          |
|             |             |             | Appendice   |
|             |             |             | 1**         |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.2.2 | blocco      |             |
|             |     <Sede>* | sempre      |             |
|             | *           | obbligatori |             |
|             |             | o           |             |
|             |             | contenente  |             |
|             |             | i dati      |             |
|             |             | della sede  |             |
|             |             | del cedente |             |
|             |             | /           |             |
|             |             | prestatore  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.2.1   | indirizzo   | formato     |
|             | <Indirizzo> | della sede  | alfanumeric |
|             | **          | del cedente | o           |
|             |             | o           |             |
|             |             | prestatore  |             |
|             |             | (nome della |             |
|             |             | via, piazza |             |
|             |             | etc.)       |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.2.2   | numero      | formato     |
|             | <NumeroCivi | civico      | alfanumeric |
|             | co>**       | riferito    | o           |
|             |             | all'indiriz |             |
|             |             | zo          |             |
|             |             | (non        |             |
|             |             | indicare se |             |
|             |             | già         |             |
|             |             | presente    |             |
|             |             | nel campo   |             |
|             |             | indirizzo)  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.2.3   | Codice      | formato     |
|             | <CAP>**     | Avviamento  | numerico    |
|             |             | Postale     |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.2.4   | comune      | formato     |
|             | <Comune>**  | relativo    | alfanumeric |
|             |             | alla sede   | o           |
|             |             | del cedente |             |
|             |             | /           |             |
|             |             | prestatore  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.2.5   | sigla della | [**RM**],   |
|             | <Provincia> | provincia   | [**MI**],   |
|             | **          | di          | [**…**]     |
|             |             | appartenenz |             |
|             |             | a           |             |
|             |             | del comune  |             |
|             |             | indicato    |             |
|             |             | nel campo   |             |
|             |             |             |             |
|             |             | **1.2.2.4** |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.2.6   | codice      | [**IT**],   |
|             | <Nazione>** | della       | [**ES**],   |
|             |             | nazione     | [**DK**],[* |
|             |             | espresso    | *…**]       |
|             |             | secondo lo  |             |
|             |             | standard    |             |
|             |             | ISO 3166-1  |             |
|             |             | alpha-2     |             |
|             |             | code        |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.2.5 | dati        |             |
|             |     <Contat | relativi ai |             |
|             | ti>**       | contatti    |             |
|             |             | del cedente |             |
|             |             | /           |             |
|             |             | prestatore  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.5.1   | contatto    | Necessariam |
|             | <Telefono>* | telefonico  | ente        |
|             | *           | fisso o     | da          |
|             |             | mobile      | valorizzare |
|             |             |             | per         |
|             |             |             |             |
|             |             |             | essere      |
|             |             |             | eventualmen |
|             |             |             | te          |
|             |             |             | contattati  |
|             |             |             | per         |
|             |             |             | chiarimenti |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.2.5.3   | indirizzo   | Necessariam |
|             | <Email>**   | di posta    | ente        |
|             |             | elettronica | da          |
|             |             |             | valorizzare |
|             |             |             | per essere  |
|             |             |             | eventualmen |
|             |             |             | te          |
|             |             |             | contattati  |
|             |             |             | per         |
|             |             |             |             |
|             |             |             | chiarimenti |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.2.6 | codice      | Necessariam |
|             | **          | identificat | ente        |
|             |             | ivo         | da          |
|             |     **<Rife | del cedente | valorizzare |
|             | rimentoAmmi | /           | riportando  |
|             | nistrazion  | prestatore  | fedelmente  |
|             |     e>**    | ai fini     | il Codice   |
|             |             | amministrat | esercente   |
|             |             | ivo-contabi | assegnato   |
|             |             | li          | all’esercen |
|             |             |             | te          |
|             |             |             |             |
|             |             |             | dall’applic |
|             |             |             | azione      |
|             |             |             | 18APP3      |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.4** | blocco      | **Dati      |
|             |             | sempre      | relativi al |
|             |     **<Cess | obbligatori | Ministero   |
|             | ionarioComm | o           | dei**       |
|             | ittente>**  | contenente  |             |
|             |             | dati        | **Beni e    |
|             |             | relativi al | delle       |
|             |             | cessionario | Attività    |
|             |             | /           | Culturali e |
|             |             | committente | del         |
|             |             |             | Turismo**   |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.4.1 | blocco      |             |
|             |     <DatiAn | contenente  |             |
|             | agrafici>** | i dati      |             |
|             |             | fiscali e   |             |
|             |             | anagrafici  |             |
|             |             | del         |             |
|             |             | cessionario |             |
|             |             | /committent |             |
|             |             | e           |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.1.2   | numero di   | valore da   |
|             | <CodiceFisc | Codice      | indicare:   |
|             | ale>**      | Fiscale     | **979043805 |
|             |             |             | 87**        |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.1.3   | dati        |             |
|             | <Anagrafica | anagrafici  |             |
|             | >**         | identificat |             |
|             |             | ivi         |             |
|             |             | del         |             |
|             |             | cessionario |             |
|             |             | /committent |             |
|             |             | e           |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.1.3.1 | ditta,      | Ministero   |
|             | **          | denominazio | dei Beni e  |
|             |             | ne          | delle       |
|             | **<Denomina | o ragione   | Attività    |
|             | zione>**    | sociale     | Culturali e |
|             |             | (ditta,     | del Turismo |
|             |             | impresa,    |             |
|             |             | società,    |             |
|             |             | ente), da   |             |
|             |             | valorizzare |             |
|             |             | in          |             |
|             |             | alternativa |             |
|             |             | ai campi    |             |
|             |             | **1.4.1.3.2 |             |
|             |             | **          |             |
|             |             | e           |             |
|             |             | **1.4.1.3.3 |             |
|             |             | **          |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **1.4.2 | blocco      |             |
|             |     <Sede>* | sempre      |             |
|             | *           | obbligatori |             |
|             |             | o           |             |
|             |             | contenente  |             |
|             |             | i dati      |             |
|             |             | della sede  |             |
|             |             | del         |             |
|             |             | cessionario |             |
|             |             | /           |             |
|             |             | committente |             |
|             |             | (nel caso   |             |
|             |             | di          |             |
|             |             | somministra |             |
|             |             | zione       |             |
|             |             | di servizi  |             |
|             |             | quali       |             |
|             |             | energia     |             |
|             |             | elettrica,  |             |
|             |             | gas … , i   |             |
|             |             | dati        |             |
|             |             | possono     |             |
|             |             | fare        |             |
|             |             | riferimento |             |
|             |             | all'ubicazi |             |
|             |             | one         |             |
|             |             | dell'utenza |             |
|             |             | ,           |             |
|             |             | ex DM       |             |
|             |             | 370/2000)   |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.2.1   | indirizzo   | Via del     |
|             | <Indirizzo> | della sede  | Collegio    |
|             | **          | del         | Romano      |
|             |             | cessionario |             |
|             |             | /           |             |
|             |             | committente |             |
|             |             | (nome della |             |
|             |             | via, piazza |             |
|             |             | etc.)       |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.2.2   | numero      | 27          |
|             | <NumeroCivi | civico      |             |
|             | co>**       | riferito    |             |
|             |             | all'indiriz |             |
|             |             | zo          |             |
|             |             | (non        |             |
|             |             | indicare se |             |
|             |             | già         |             |
|             |             | presente    |             |
|             |             | nel campo   |             |
|             |             | indirizzo)  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.2.3   | Codice      | 00186       |
|             | <CAP>**     | Avviamento  |             |
|             |             | Postale     |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.2.4   | comune      | ROMA        |
|             | <Comune>**  | relativo    |             |
|             |             | alla        |             |
|             |             | stabile     |             |
|             |             | organizzazi |             |
|             |             | one         |             |
|             |             | in Italia   |             |
+-------------+-------------+-------------+-------------+-------------+

    3 Riportare fedelmente tale codice, per il quale sono significativi
    e distinti i caratteri maiuscoli da quelli minuscoli (codice *case
    sensitive*)

+-------------+-------------+-------------+-------------+-------------+
|             |             |     **ID e  |     **Descr |     **NOTE* |
|             |             |     Nome    | izione      | *           |
|             |             |     Tag     |     funzion |             |
|             |             |     XML**   | ale**       |             |
+=============+=============+=============+=============+
|             | **1.4.2.5   | sigla della | RM          |
|             | <Provincia> | provincia   |             |
|             | **          | di          |             |
|             |             | appartenenz |             |
|             |             | a           |             |
|             |             | del comune  |             |
|             |             | indicato    |             |
|             |             | nel campo   |             |
|             |             |             |             |
|             |             | **1.4.2.4** |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **1.4.2.6   | codice      | IT          |
|             | <Nazione>** | della       |             |
|             |             | nazione     |             |
|             |             | espresso    |             |
|             |             | secondo lo  |             |
|             |             | standard    |             |
|             |             | ISO 3166-1  |             |
|             |             | alpha-2     |             |
|             |             | code        |             |
+-------------+-------------+-------------+-------------+-------------+
|     **2     | il blocco   |             |
|     <Fattur | ha          |             |
| aElettronic | molteplicit |             |
| aBody>**    | à           |             |
|             | pari a 1    |             |
|             | nel caso di |             |
|             | fattura     |             |
|             | singola;    |             |
|             | nel caso di |             |
|             | lotto di    |             |
|             | fatture, si |             |
|             | ripete per  |             |
|             | ogni        |             |
|             | fattura     |             |
|             | componente  |             |
|             | il lotto    |             |
|             | stesso      |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **2.1   | blocco      |             |
|             |     <DatiGe | sempre      |             |
|             | nerali>**   | obbligatori |             |
|             |             | o           |             |
|             |             | contenente  |             |
|             |             | i dati      |             |
|             |             | generali    |             |
|             |             | del         |             |
|             |             | documento   |             |
|             |             | principale  |             |
|             |             | ed i dati   |             |
|             |             | dei         |             |
|             |             | documenti   |             |
|             |             | correlati   |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **2.1.1 | blocco      |             |
|             | **          | sempre      |             |
|             |             | obbligatori |             |
|             |     **<Dati | o           |             |
|             | GeneraliDoc | contenente  |             |
|             | umento>**   | i dati      |             |
|             |             | generali    |             |
|             |             | del         |             |
|             |             | documento   |             |
|             |             | principale  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.1** | tipologia   | valore      |
|             |             | di          | ammesso:    |
|             | **<TipoDocu | documento   | TD01        |
|             | mento>**    |             |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.2   | codice      | valore      |
|             | <Divisa>**  | (espresso   | ammesso:    |
|             |             | secondo lo  | EUR         |
|             |             | standard    |             |
|             |             | ISO 4217    |             |
|             |             | alpha-3:200 |             |
|             |             | 1)          |             |
|             |             | della       |             |
|             |             | valuta      |             |
|             |             | utilizzata  |             |
|             |             | per         |             |
|             |             | l'indicazio |             |
|             |             | ne          |             |
|             |             | degli       |             |
|             |             | importi     |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.3   | data del    | formato ISO |
|             | <Data>**    | documento   | 8601:2004,  |
|             |             | (secondo il | con la      |
|             |             | formato ISO | precisione  |
|             |             | 8601:2004)  | seguente:   |
|             |             |             | **YYYY-MM-D |
|             |             |             | D**         |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.4   | numero      | formato     |
|             | <Numero>**  | progressivo | alfanumeric |
|             |             | del         | o           |
|             |             | documento   |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.6   | blocco dati |             |
|             | <DatiBollo> | relativi al |             |
|             | **          | bollo       |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.6.1 | bollo       | valore      |
|             | **          | assolto ai  | ammesso     |
|             |             | sensi del   |             |
|             | **<BolloVir | decreto MEF | **[NO]**    |
|             | tuale>**    | 17 giugno   |             |
|             |             | 2014 (art.  |             |
|             |             | 6)          |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.1.1.9** | importo     | formato     |
|             |             | totale del  | numerico; i |
|             | **<ImportoT | documento   | decimali    |
|             | otaleDocume | al netto    | vanno       |
|             | nt          | dell'eventu | separati    |
|             | o>**        | ale         | dall'intero |
|             |             | sconto e    | con il      |
|             |             | comprensivo | carattere   |
|             |             | di imposta  | '.' (punto) |
|             |             | a debito    |             |
|             |             | del         | valore      |
|             |             | cessionario | ammesso:    |
|             |             | /           | valore del  |
|             |             | committente | campo       |
|             |             |             |             |
|             |             |             | 2.2.2.5     |
|             |             |             | ImponibileI |
|             |             |             | mporto      |
+-------------+-------------+-------------+-------------+-------------+
|             |     **2.2   | blocco      |             |
|             |     <DatiBe | sempre      |             |
|             | niServizi>* | obbligatori |             |
|             | *           | o           |             |
|             |             | contenente  |             |
|             |             | natura,     |             |
|             |             | qualità e   |             |
|             |             | quantità    |             |
|             |             | dei beni /  |             |
|             |             | servizi     |             |
|             |             | formanti    |             |
|             |             | oggetto     |             |
|             |             | dell'operaz |             |
|             |             | ione        |             |
+-------------+-------------+-------------+-------------+-------------+
|             |     **2.2.1 | blocco      |             |
|             |     <Dettag | sempre      |             |
|             | lioLinee>** | obbligatori |             |
|             |             | o           |             |
|             |             | contenente  |             |
|             |             | le linee di |             |
|             |             | dettaglio   |             |
|             |             | del         |             |
|             |             | documento   |             |
|             |             | (i campi    |             |
|             |             | del blocco  |             |
|             |             | si ripetono |             |
|             |             | per ogni    |             |
|             |             | riga di     |             |
|             |             | dettaglio)  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.2.1.1   | numero      | formato     |
|             | <NumeroLine | della riga  | numerico    |
|             | a>**        | di          |             |
|             |             | dettaglio   |             |
|             |             | del         |             |
|             |             | documento   |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.2.1.3   | eventuale   |             |
|             | <CodiceArti | codifica    |             |
|             | colo>**     | dell'artico |             |
|             |             | lo          |             |
|             |             | (la         |             |
|             |             | molteplicit |             |
|             |             | à           |             |
|             |             | N del       |             |
|             |             | blocco      |             |
|             |             | consente di |             |
|             |             | gestire la  |             |
|             |             | presenza di |             |
|             |             | più         |             |
|             |             | codifiche)  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.2.1.3.1 | indica la   | valore      |
|             | **          | tipologia   | ammesso:    |
|             |             | di codice   | 18APP       |
|             | **<CodiceTi | articolo    |             |
|             | po>**       | (TARIC,     |             |
|             |             | CPV, EAN,   |             |
|             |             | SSC, ...)   |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.2.1.3.2 | indica il   | Valore      |
|             | **          | valore del  | obbligatori |
|             |             | codice      | o           |
|             | **<CodiceVa | articolo    | da          |
|             | lore>**     | corrisponde | indicare:   |
|             |             | nte         | codice      |
|             |             | alla        | identificat |
|             |             | tipologia   | ivo         |
|             |             | riportata   | buono4      |
|             |             | nel campo   |             |
|             |             | 2.2.1.3.1.  |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.2.1.4   | natura e    | valore      |
|             | <Descrizion | qualità     | ammesso:    |
|             | e>**        | dell'oggett | PAGAMENTO   |
|             |             | o           | BUONO       |
|             |             | della       |             |
|             |             | cessione/pr |             |
|             |             | estazione;  |             |
|             |             | può fare    |             |
|             |             | anche       |             |
|             |             | riferimento |             |
|             |             | ad un       |             |
|             |             | precedente  |             |
|             |             | documento   |             |
|             |             | emesso a    |             |
|             |             | titolo di   |             |
|             |             | 'anticipo/a |             |
|             |             | cconto'     |             |
|             |             | , nel qual  |             |
|             |             | caso il     |             |
|             |             | valore del  |             |
|             |             | campo       |             |
|             |             | **2.2.1.9** |             |
|             |             | e           |             |
|             |             | **2.2.1.11* |             |
|             |             | *           |             |
|             |             | sarà        |             |
|             |             | negativo    |             |
+-------------+-------------+-------------+-------------+-------------+
|             | **2.2.1.9   | prezzo      | formato     |
|             | <PrezzoUnit | unitario    | numerico; i |
|             | ario>**     | del         | decimali    |
|             |             | bene/serviz | vanno       |
|             |             | io;         | separati    |
|             |             | nel caso di | dall'intero |
|             |             | beni ceduti | con il      |
|             |             | a titolo di | carattere   |
|             |             | sconto,     | '.'         |
|             |             | premio o    |             |
|             |             | abbuono,    | (punto) –   |
|             |             | l'importo   | valore da   |
|             |             | indicato    | indicare:   |
|             |             | rappresenta | importo     |
|             |             | il "valore  |             |
|             |             | normale"    |             |
+-------------+-------------+-------------+-------------+-------------+

    4 Riportare fedelmente tale codice, per il quale sono significativi
    e distinti i caratteri maiuscoli da quelli minuscoli (codice *case
    sensitive*)
