--"DavaNo" alaný "DV2024001" olan davaya ait tüm taraflarýn ve karar bilgilerinin yer aldýðý sorguyu yazýnýz--
--------------------------------------------------------------------------------------------------------------

SELECT 
    D.DavaNo AS DavaNumarasý,
    T.Ad + ' ' + T.Soyad AS TarafAdý,
    DT.Rol AS TarafRolü,
    K.KararMetni AS KararMetni,
    K.KararTarihi AS KararTarihi
FROM 
    Dava AS D
LEFT JOIN 
    DavaTarafý AS DT ON D.CaseID = DT.DavaID
LEFT JOIN 
    Taraf AS T ON DT.PartyID = T.PartyID
LEFT JOIN 
    Karar AS K ON D.CaseID = K.DavaID
WHERE 
    D.DavaNo = 'DV2024001';
