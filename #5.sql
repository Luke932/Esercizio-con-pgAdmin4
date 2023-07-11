Considerando soltanto le fatture con Iva al 20 per cento, estrarre il numero di fatture per ogni anno.
SELECT EXTRACT (YEAR FROM "DataFattura") AS "Anno", 
COUNT(*) AS "NumeroFattura" FROM public."Fatture"
WHERE "Iva" = 20
GROUP BY "Anno";