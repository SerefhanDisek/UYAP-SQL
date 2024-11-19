--Her dava i�in en son karar�n detaylar�n� d�nd�recek sorguyu yaz�n�.--
-----------------------------------------------------------------------

SELECT 
    d.DavaNo,
    k.Ad AS KullaniciAd,
    k.Soyad AS KullaniciSoyad,
    dc.KararTarihi,
    dc.KararMetni,
    dc.Sonuc
FROM 
    Dava d
JOIN 
    Kullanici k ON d.UserID = k.UserID
LEFT JOIN 
    Karar dc ON d.CaseID = dc.DavaID
WHERE 
    dc.KararTarihi = (
        SELECT MAX(KararTarihi) 
        FROM Karar 
        WHERE DavaID = d.CaseID
    );