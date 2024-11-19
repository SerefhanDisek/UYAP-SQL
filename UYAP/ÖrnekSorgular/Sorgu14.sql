--Bir hakimin bakt��� t�m davalar� ve bu davalara atanm�� avukatlar�n isimlerini getiriniz.--
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
    Yarg�� Y ON D.UserID = Y.JudgeID
LEFT JOIN 
    Avukat A ON D.CaseID = A.DavaID;
