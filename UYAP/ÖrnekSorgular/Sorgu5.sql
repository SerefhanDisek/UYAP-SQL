--Her bir yarg�c�n toplam ka� oturuma ba�kanl�k etti�ini listeleyen sorguyu yaz�n�z.--
---------------------------------------------------------------------------------------

SELECT 
    Y.Ad + ' ' + Y.Soyad AS Yarg��Ad�,
    COUNT(O.HearingID) AS OturumSay�s�
FROM 
    Yarg�� AS Y
JOIN 
    DavaOturumu AS O ON Y.JudgeID = O.Yarg��ID
GROUP BY 
    Y.Ad, Y.Soyad
ORDER BY 
    OturumSay�s� DESC;
