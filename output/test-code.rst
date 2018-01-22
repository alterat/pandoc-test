    **Appendice 2 - Esempio di fattura elettronica (formato .xml)
    compilata per l’iniziativa 18APP**

    Si riporta nel seguito un esempio di fattura elettronica in formato
    XML conforme allo standard di fatturazione elettronica e alle linee
    guida specifiche fornite per l’iniziativa 18APP.

    <ns2:FatturaElettronica versione='FPA12'
    `xmlns:ns2='http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2'> <http://ivaservizi.agenziaentrate.gov.it/docs/xsd/fatture/v1.2%27>`__

    <FatturaElettronicaHeader>

    <DatiTrasmissione>

    <IdTrasmittente>

    <IdPaese>IT</IdPaese>

    <IdCodice>ABCDFG00A11B123C</IdCodice>

    </IdTrasmittente>

    <ProgressivoInvio>0</ProgressivoInvio>

    <FormatoTrasmissione>FPA12</FormatoTrasmissione>

    <CodiceDestinatario>CY0MHE</CodiceDestinatario>

    </DatiTrasmissione>

    <CedentePrestatore>

    <DatiAnagrafici>

    <IdFiscaleIVA>

    <IdPaese>IT</IdPaese>

    <IdCodice>1000000000</IdCodice>

    </IdFiscaleIVA>

    <CodiceFiscale>10000000</CodiceFiscale>

    <Anagrafica>

    <Denominazione>Libreria Mario Rossi</Denominazione>

    </Anagrafica>

    <RegimeFiscale>RF01</RegimeFiscale>

    </DatiAnagrafici>

    <Sede>

    <Indirizzo>Via Esempio</Indirizzo>

    <NumeroCivico>1</NumeroCivico>

    <CAP>00100</CAP>

    <Comune>Roma</Comune>

    <Provincia>RM</Provincia>

    <Nazione>IT</Nazione>

    </Sede>

    <Contatti>

    <Telefono>123456789</Telefono>

    `<Email>esempio@esempio.it</Email> <mailto:esempio@esempio.it>`__

    </Contatti>

    </CedentePrestatore>

    <CessionarioCommittente>

    <Sede>

    <Nazione>IT</Nazione>

    <Indirizzo>Via del Collegio Romano</Indirizzo>

    <NumeroCivico>27</NumeroCivico>

    <CAP>00186</CAP>

    <Comune>Roma</Comune>

    <Provincia>RM</Provincia>

    </Sede>

    <DatiAnagrafici>

    <CodiceFiscale>97904380587</CodiceFiscale>

    <Anagrafica>

    <Denominazione>Ministero dei Beni e delle Attività Culturali e del
    Turismo</Denominazione>

    </Anagrafica>

    </DatiAnagrafici>

    </CessionarioCommittente>

    </FatturaElettronicaHeader>

    <FatturaElettronicaBody>

    <DatiBeniServizi>

    <DettaglioLinee>

    <CodiceArticolo>

    <CodiceValore>hul09Tk</CodiceValore>

    <CodiceTipo>18app</CodiceTipo>

    </CodiceArticolo>

    <PrezzoTotale>10.00</PrezzoTotale>

    <Descrizione>Pagamento Buono</Descrizione>

    <Quantita>1.00</Quantita>

    <PrezzoUnitario>10.00</PrezzoUnitario>

    <AliquotaIVA>0.00</AliquotaIVA>

    <Natura>N2</Natura>

    <NumeroLinea>1</NumeroLinea>

    </DettaglioLinee>

    <DatiRiepilogo>

    <AliquotaIVA>0.00</AliquotaIVA>

    <ImponibileImporto>10.00</ImponibileImporto>

    <Natura>N2</Natura>

    <Imposta>0.00</Imposta>

    <RiferimentoNormativo>Art. 2 DPR 633/72</RiferimentoNormativo>

    </DatiRiepilogo>

    </DatiBeniServizi>

    <DatiGenerali>

    <DatiGeneraliDocumento>

    <TipoDocumento>TD01</TipoDocumento>

    <Numero>1</Numero>

    <Data>2017-01-10</Data>

    <ImportoTotaleDocumento>10.00</ImportoTotaleDocumento>

    <Divisa>EUR</Divisa>

    </DatiGeneraliDocumento>

    </DatiGenerali>

    <DatiPagamento>

    <DettaglioPagamento>

    <Beneficiario>Mario Rossi</Beneficiario>

    <ModalitaPagamento>MP05</ModalitaPagamento>

    <ImportoPagamento>10.00</ImportoPagamento>

    <IBAN>IT0000000000000000</IBAN>

    </DettaglioPagamento>

    <CondizioniPagamento>TP02</CondizioniPagamento>

    </DatiPagamento>

    </FatturaElettronicaBody>

    </ns2:FatturaElettronica>
