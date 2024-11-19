--Bir davaya ait davacý ve davalýlarýn isimlerini, rolleriyle birlikte listeleyen sorguyu yazýnýz.--
----------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumarasý,
    T.Ad + ' ' + T.Soyad AS TarafAdý,
    DT.Rol AS TarafRolü
FROM 
    Dava AS D
JOIN 
    DavaTarafý AS DT ON D.CaseID = DT.DavaID
JOIN 
    Taraf AS T ON DT.PartyID = T.PartyID;
