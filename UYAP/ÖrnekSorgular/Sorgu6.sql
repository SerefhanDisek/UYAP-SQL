--Dava durumlarýna göre toplam dava sayýsýný listeleyen sorguyu yazýnýz--
-------------------------------------------------------------------------

SELECT 
    Durum AS DavaDurumu,
    COUNT(CaseID) AS ToplamDavaSayýsý
FROM 
    Dava
GROUP BY 
    Durum;

