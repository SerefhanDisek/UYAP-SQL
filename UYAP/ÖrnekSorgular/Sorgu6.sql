--Dava durumlar�na g�re toplam dava say�s�n� listeleyen sorguyu yaz�n�z--
-------------------------------------------------------------------------

SELECT 
    Durum AS DavaDurumu,
    COUNT(CaseID) AS ToplamDavaSay�s�
FROM 
    Dava
GROUP BY 
    Durum;

