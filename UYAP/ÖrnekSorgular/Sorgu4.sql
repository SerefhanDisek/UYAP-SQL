--Son bir ay içinde karar verilen davalarýn numaralarýný ve karar tarihlerini listeleyen sorguyu yazýnýz.--
------------------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumarasý,
    K.KararTarihi AS KararTarihi,
    K.Sonuc AS KararSonucu
FROM 
    Karar AS K
JOIN 
    Dava AS D ON K.DavaID = D.CaseID
WHERE 
    K.KararTarihi >= DATEADD(MONTH, -1, GETDATE());
