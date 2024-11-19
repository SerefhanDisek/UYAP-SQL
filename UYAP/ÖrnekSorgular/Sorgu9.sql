--Her dava durumuna g�re (A��k, Kapal�) ka� kullan�c� oldu�unu d�nd�recek sorguyu yaz�n�z.--
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