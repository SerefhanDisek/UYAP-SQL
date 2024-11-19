--Her davada yer alan taraflar�n bilgilerini d�nd�recek sorguyu yaz�n�z.--
--------------------------------------------------------------------------

SELECT 
    d.DavaNo,
    t.Ad AS TarafAd,
    t.Soyad AS TarafSoyad,
    dt.Rol
FROM 
    DavaTaraf� dt
JOIN 
    Dava d ON dt.DavaID = d.CaseID
JOIN 
    Taraf t ON dt.PartyID = t.PartyID
ORDER BY 
    d.DavaNo;