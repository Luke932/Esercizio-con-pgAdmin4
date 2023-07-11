Estarre gli in cui sono state registrate più di 2 fatture con tipologia "A".

SELECT EXTRACT (YEAR FROM "DataFattura") AS "Anno"
FROM public."Fatture"
WHERE "Tipologia" = 'A'
GROUP BY EXTRACT (YEAR FROM "DataFattura")
HAVING COUNT (*) > 2;