--Son bir ay i�inde karar verilen davalar�n numaralar�n� ve karar tarihlerini listeleyen sorguyu yaz�n�z.--
------------------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumaras�,
    K.KararTarihi AS KararTarihi,
    K.Sonuc AS KararSonucu
FROM 
    Karar AS K
JOIN 
    Dava AS D ON K.DavaID = D.CaseID
WHERE 
    K.KararTarihi >= DATEADD(MONTH, -1, GETDATE());
