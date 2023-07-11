Estrarre i prodotti nel 2017 e che sono in produzione oppure in commercio.
SELECT * FROM public."Prodotti"
WHERE EXTRACT (YEAR FROM "DataAttivazione") = 2017
AND ("InProduzione" = True OR "InCommercio" = True);
	