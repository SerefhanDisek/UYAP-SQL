/* Bu sorgu, her dava durumuna göre (Açýk, Kapalý) kaç kullanýcý olduðunu döndürecektir */
SELECT 
    d.Durum,
    COUNT(DISTINCT k.UserID) AS KullaniciSayisi
FROM 
    Dava d
JOIN 
    Kullanici k ON d.UserID = k.UserID
GROUP BY 
    d.Durum;

/* Bu sorgu, belirli bir tarih aralýðýnda gerçekleþen oturumlarý ve hangi yargýcýn bu oturumlarda görev aldýðýný listeleyecktir */
SELECT 
    o.DavaID,
    o.OturumTarihi,
    y.Ad AS YargicAd,
    y.Soyad AS YargicSoyad,
    d.DavaNo
FROM 
    DavaOturumu o
JOIN 
    Yargýç y ON o.YargýçID = y.JudgeID
JOIN 
    Dava d ON o.DavaID = d.CaseID
WHERE 
    o.OturumTarihi BETWEEN '2024-01-01' AND '2024-12-31';

/*Bu sorgu, her dava için en son kararýn detaylarýný döndürecektir */
SELECT 
    d.DavaNo,
    k.Ad AS KullaniciAd,
    k.Soyad AS KullaniciSoyad,
    dc.KararTarihi,
    dc.KararMetni,
    dc.Sonuc
FROM 
    Dava d
JOIN 
    Kullanici k ON d.UserID = k.UserID
LEFT JOIN 
    Karar dc ON d.CaseID = dc.DavaID
WHERE 
    dc.KararTarihi = (
        SELECT MAX(KararTarihi) 
        FROM Karar 
        WHERE DavaID = d.CaseID
    );

/*Bu sorgu, her avukatýn üstlendiði davalarý sayarak bir daðýlým tablosu oluþturacaktýr */
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

/*Bu sorgu, her davada yer alan taraflarýn bilgilerini döndürecektir */
SELECT 
    d.DavaNo,
    t.Ad AS TarafAd,
    t.Soyad AS TarafSoyad,
    dt.Rol
FROM 
    DavaTarafý dt
JOIN 
    Dava d ON dt.DavaID = d.CaseID
JOIN 
    Taraf t ON dt.PartyID = t.PartyID
ORDER BY 
    d.DavaNo;



