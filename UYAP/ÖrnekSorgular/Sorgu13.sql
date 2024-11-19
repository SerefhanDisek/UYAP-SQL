--Her davada yer alan taraflarýn bilgilerini döndürecek sorguyu yazýnýz.--
--------------------------------------------------------------------------

SELECT 
    d.DavaNo,
    t.Ad AS TarafAd,
    t.Soyad AS TarafSoyad,
    dt.Rol
FROM 
    DavaTarafý dt
JOIN 
    Dava d ON dt.DavaID = d.CaseID
JOIN 
    Taraf t ON dt.PartyID = t.PartyID
ORDER BY 
    d.DavaNo;