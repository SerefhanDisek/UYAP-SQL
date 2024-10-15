/* Bu sorgu, her dava durumuna g�re (A��k, Kapal�) ka� kullan�c� oldu�unu d�nd�recektir */
SELECT 
    d.Durum,
    COUNT(DISTINCT k.UserID) AS KullaniciSayisi
FROM 
    Dava d
JOIN 
    Kullanici k ON d.UserID = k.UserID
GROUP BY 
    d.Durum;

/* Bu sorgu, belirli bir tarih aral���nda ger�ekle�en oturumlar� ve hangi yarg�c�n bu oturumlarda g�rev ald���n� listeleyecktir */
SELECT 
    o.DavaID,
    o.OturumTarihi,
    y.Ad AS YargicAd,
    y.Soyad AS YargicSoyad,
    d.DavaNo
FROM 
    DavaOturumu o
JOIN 
    Yarg�� y ON o.Yarg��ID = y.JudgeID
JOIN 
    Dava d ON o.DavaID = d.CaseID
WHERE 
    o.OturumTarihi BETWEEN '2024-01-01' AND '2024-12-31';

/*Bu sorgu, her dava i�in en son karar�n detaylar�n� d�nd�recektir */
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

/*Bu sorgu, her avukat�n �stlendi�i davalar� sayarak bir da��l�m tablosu olu�turacakt�r */
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

/*Bu sorgu, her davada yer alan taraflar�n bilgilerini d�nd�recektir */
SELECT 
    d.DavaNo,
    t.Ad AS TarafAd,
    t.Soyad AS TarafSoyad,
    dt.Rol
FROM 
    DavaTaraf� dt
JOIN 
    Dava d ON dt.DavaID = d.CaseID
JOIN 
    Taraf t ON dt.PartyID = t.PartyID
ORDER BY 
    d.DavaNo;



