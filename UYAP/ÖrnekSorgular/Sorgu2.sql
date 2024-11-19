--BaroNo "BAR12345" olan avukat�n atanm�� oldu�u t�m a��k davalar� listeleyen sorguyu yaz�n�z.--
-----------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumaras�,
    D.Durum AS DavaDurumu,
    A.Ad + ' ' + A.Soyad AS AvukatAd�
FROM 
    Dava AS D
JOIN 
    Avukat AS A ON D.CaseID = A.DavaID
WHERE 
    A.BaroNo = 'BAR12345' 
    AND D.Durum = 'A��k';
