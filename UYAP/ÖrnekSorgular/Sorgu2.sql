--BaroNo "BAR12345" olan avukatýn atanmýþ olduðu tüm açýk davalarý listeleyen sorguyu yazýnýz.--
-----------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumarasý,
    D.Durum AS DavaDurumu,
    A.Ad + ' ' + A.Soyad AS AvukatAdý
FROM 
    Dava AS D
JOIN 
    Avukat AS A ON D.CaseID = A.DavaID
WHERE 
    A.BaroNo = 'BAR12345' 
    AND D.Durum = 'Açýk';
