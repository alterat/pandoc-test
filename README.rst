####################
Casi d'uso di pandoc
####################

Sono riportati alcuni casi in cui la conversione da docx a rst con 
pandoc non è efficace. 

I file sono tutti in `tests`, con nome uguale e diverse
estensioni. Eseguendo `make tests/*` si possono aggiornare tutti

test0
=====

Testo con elenchi puntati, titoli e indentature. 

**Problema**: la conversione fallisce al terzo punto, utilizzando *rubric*.

test1
=====

Testo con elenchi puntati e numerati.

**Problema**: la conversione fallisce con l'elenco numerato. L'indentatura 
non è corretta. 

test2
=====

Testo con diversi titoli ed elenchi.

**Problema**: la conversione scambia il corpo del testo per dei titoli.
L'indentatura è errata. 

test3
=====

Testo complesso, con tabelle, immagini e codice.

**Problema**: l'indentatura è errata in più punti. 

test4
=====

Testo molto complesso: presenza di tabelle con codice e immagini annidati.

**Problema**: la conversione fatica a capire la struttura delle tabelle.

test-code
=========

Testo con parte di codice.

**Problema**: la conversione non riconosce il codice.


test-complex-table
==================

Tabella molto complessa, quasi patologica, per via delle celle multiple non
allineate.

**Problema**: la conversione fallisce e la tabella creata presenta errori 
di struttura.

test-multicell-table
====================

Tabella con celle non uniformi.
