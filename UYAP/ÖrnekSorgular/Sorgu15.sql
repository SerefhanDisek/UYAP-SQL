--Sonu�lar� "Kabul" olan ve 2024 y�l�nda verilen kararlar�n dava numaras�n� ve karar tarihlerini listeleyecek sorguyu yaz�n�z.--
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
