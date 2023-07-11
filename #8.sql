Estrarre il totale degli importi delle fatture divisi per residenza dei clienti.

SELECT c."RegioneResidenza", SUM (f."Importo") AS "TotaleImporti"
FROM "Fatture" f
INNER JOIN "Clienti" c ON f."IdCliente" = c."NumeroCliente"
GROUP BY c."RegioneResidenza";