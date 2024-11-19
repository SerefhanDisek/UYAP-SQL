--Bir hakimin baktýðý tüm davalarý ve bu davalara atanmýþ avukatlarýn isimlerini getiriniz.--
---------------------------------------------------------------------------------------------

SELECT 
    Y.Ad AS HakimAd, 
    Y.Soyad AS HakimSoyad, 
    D.DavaNo, 
    D.DavaTipi, 
    A.Ad AS AvukatAd, 
    A.Soyad AS AvukatSoyad
FROM 
    Dava D
INNER JOIN 
    Yargýç Y ON D.UserID = Y.JudgeID
LEFT JOIN 
    Avukat A ON D.CaseID = A.DavaID;
