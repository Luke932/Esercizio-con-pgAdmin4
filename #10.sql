Estrarre una colonna di nome "Denominazione" contenente il nome, seguito da un carattere "-", seguito dal cognome, per i suoi clienti residenti nella regione Lombardia.

SELECT CONCAT (c."Nome", '-', c."Cognome") AS "Denominazione"
FROM "Clienti" c
WHERE c."RegioneResidenza" = 'Lombardia';