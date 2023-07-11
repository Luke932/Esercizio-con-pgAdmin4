Riportare l'elenco delle fatture (numero,importo,iva e data) con in aggiunta il nome del fornitore.

SELECT f."NumeroFattura", f."Importo", f."Iva", f."DataFattura", fo."Denominazione"
FROM "Fatture" f
INNER JOIN "Fornitori" fo ON f."NumeroFornitore" = fo."NumeroFornitore";