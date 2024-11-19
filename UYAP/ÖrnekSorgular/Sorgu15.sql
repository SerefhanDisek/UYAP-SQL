--Sonuçlarý "Kabul" olan ve 2024 yýlýnda verilen kararlarýn dava numarasýný ve karar tarihlerini listeleyecek sorguyu yazýnýz.--
--------------------------------------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo, 
    K.KararTarihi, 
    K.KararMetni
FROM 
    Karar K
INNER JOIN 
    Dava D ON K.DavaID = D.CaseID
WHERE 
    K.Sonuc = 'Kabul' AND 
    YEAR(K.KararTarihi) = 2024;
