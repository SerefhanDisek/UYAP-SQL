--Her dava durumuna göre (Açýk, Kapalý) kaç kullanýcý olduðunu döndürecek sorguyu yazýnýz.--
--------------------------------------------------------------------------------------------

SELECT 
    d.Durum,
    COUNT(DISTINCT k.UserID) AS KullaniciSayisi
FROM 
    Dava d
JOIN 
    Kullanici k ON d.UserID = k.UserID
GROUP BY 
    d.Durum;