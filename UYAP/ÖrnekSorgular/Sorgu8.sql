--Davalarýn karar oranlarýný gösteren sorguyu yazýnýz--
-------------------------------------------------------

SELECT 
    Sonuc AS KararSonucu,
    COUNT(DecisionID) * 100.0 / (SELECT COUNT(*) FROM Karar) AS OranYüzde
FROM 
    Karar
GROUP BY 
    Sonuc;
