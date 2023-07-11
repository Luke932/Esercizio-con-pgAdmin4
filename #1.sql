Riportare il numero delle fatture e la somma dei relativi importi divisi per anno di fatturazione.
SELECT EXTRACT (YEAR FROM "DataFattura") AS "AnnoFatturazione", 
COUNT(*) "NumeroFattura",SUM("Importo") AS "SommaImporti"
FROM "Fatture"
GROUP BY "AnnoFatturazione"