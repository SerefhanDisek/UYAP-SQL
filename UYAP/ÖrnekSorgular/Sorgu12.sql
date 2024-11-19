--Her avukat�n �stlendi�i davalar� sayarak bir da��l�m tablosu olu�turacak sorguyu yaz�n�z.--
----------------------------------------------------------------------------------------------

SELECT 
    a.Ad AS AvukatAd,
    a.Soyad AS AvukatSoyad,
    COUNT(d.CaseID) AS DavaSayisi
FROM 
    Avukat a
LEFT JOIN 
    Dava d ON a.DavaID = d.CaseID
GROUP BY 
    a.Ad, a.Soyad
ORDER BY 
    DavaSayisi DESC;