Estrarre il numero dei clienti nati nel 1980 che hanno almeno una fattura superiore a 50 euro.

SELECT COUNT (DISTINCT c."NumeroCliente") AS "NumeroClienti"
FROM "Clienti" c
INNER JOIN "Fatture" f ON c."NumeroCliente" = f."IdCliente"
WHERE EXTRACT (YEAR FROM c."DataNascita") = 1982
AND f."Importo" > 50;