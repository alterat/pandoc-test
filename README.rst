####################
Casi d'uso di pandoc
####################

Sono riportati alcuni casi in cui la conversione da docx a rst con 
pandoc non è efficace. 

I file di output sono ottenuti con

``pandoc file-input.docx -t rst -o file-output.rst``

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

Testo molto complesso, con tabelle annidate, immagini e codice.

**Problema**: la conversione fatica a capire la struttura delle tabelle.

test-code
=========

Testo con parte di codice.

**Problema**: la conversione non riconosce il codice.

test-complex-table
=============

Tabella molto complessa, quasi patologica, per via delle celle multiple non
allineate.

**Problema**: la conversione fallisce e la tabella creata presenta errori 
di struttura.

##############
Come Compilare
##############

I file HTML si possono aggiornare tramite `make rst2html/*`, che
aggiornerà anche i file RST necessari. Per aggiornare solo i files
RST, eseguire `make output/*`
