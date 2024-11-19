--Belirli bir tarih arasýnda gerçekleþen oturumlarý ve hangi yargýcýn bu oturumlarda görev aldýðýný listeleyecek sorguyu yazýnýz.--
-----------------------------------------------------------------------------------------------------------------------------------

SELECT 
    o.DavaID,
    o.OturumTarihi,
    y.Ad AS YargicAd,
    y.Soyad AS YargicSoyad,
    d.DavaNo
FROM 
    DavaOturumu o
JOIN 
    Yargýç y ON o.YargýçID = y.JudgeID
JOIN 
    Dava d ON o.DavaID = d.CaseID
WHERE 
    o.OturumTarihi BETWEEN '2024-01-01' AND '2024-12-31';