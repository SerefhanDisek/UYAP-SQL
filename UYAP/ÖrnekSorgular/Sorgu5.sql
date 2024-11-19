--Her bir yargýcýn toplam kaç oturuma baþkanlýk ettiðini listeleyen sorguyu yazýnýz.--
---------------------------------------------------------------------------------------

SELECT 
    Y.Ad + ' ' + Y.Soyad AS YargýçAdý,
    COUNT(O.HearingID) AS OturumSayýsý
FROM 
    Yargýç AS Y
JOIN 
    DavaOturumu AS O ON Y.JudgeID = O.YargýçID
GROUP BY 
    Y.Ad, Y.Soyad
ORDER BY 
    OturumSayýsý DESC;
