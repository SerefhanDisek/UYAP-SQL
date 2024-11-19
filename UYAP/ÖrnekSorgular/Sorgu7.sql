--"DavaNo" alan� "DV2024001" olan davaya ait t�m taraflar�n ve karar bilgilerinin yer ald��� sorguyu yaz�n�z--
--------------------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumaras�,
    T.Ad + ' ' + T.Soyad AS TarafAd�,
    DT.Rol AS TarafRol�,
    K.KararMetni AS KararMetni,
    K.KararTarihi AS KararTarihi
FROM 
    Dava AS D
LEFT JOIN 
    DavaTaraf� AS DT ON D.CaseID = DT.DavaID
LEFT JOIN 
    Taraf AS T ON DT.PartyID = T.PartyID
LEFT JOIN 
    Karar AS K ON D.CaseID = K.DavaID
WHERE 
    D.DavaNo = 'DV2024001';
