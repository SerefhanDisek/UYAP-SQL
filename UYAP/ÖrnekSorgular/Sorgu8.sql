--Davalar�n karar oranlar�n� g�steren sorguyu yaz�n�z--
-------------------------------------------------------

SELECT 
    Sonuc AS KararSonucu,
    COUNT(DecisionID) * 100.0 / (SELECT COUNT(*) FROM Karar) AS OranY�zde
FROM 
    Karar
GROUP BY 
    Sonuc;
