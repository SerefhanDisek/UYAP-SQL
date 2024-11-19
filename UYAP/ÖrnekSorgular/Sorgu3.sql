--Bir davaya ait davac� ve daval�lar�n isimlerini, rolleriyle birlikte listeleyen sorguyu yaz�n�z.--
----------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumaras�,
    T.Ad + ' ' + T.Soyad AS TarafAd�,
    DT.Rol AS TarafRol�
FROM 
    Dava AS D
JOIN 
    DavaTaraf� AS DT ON D.CaseID = DT.DavaID
JOIN 
    Taraf AS T ON DT.PartyID = T.PartyID;
