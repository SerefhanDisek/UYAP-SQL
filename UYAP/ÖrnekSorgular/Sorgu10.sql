--Belirli bir tarih aras�nda ger�ekle�en oturumlar� ve hangi yarg�c�n bu oturumlarda g�rev ald���n� listeleyecek sorguyu yaz�n�z.--
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
    Yarg�� y ON o.Yarg��ID = y.JudgeID
JOIN 
    Dava d ON o.DavaID = d.CaseID
WHERE 
    o.OturumTarihi BETWEEN '2024-01-01' AND '2024-12-31';