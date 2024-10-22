-- Dava detaylar�n�, mahkemeyi, oturum say�s�n� ve avukat durumunu i�eren View. 
CREATE VIEW vw_DavaDetaylari
AS
SELECT 
    D.CaseID,
    D.DavaNo,
    D.DavaTipi,
    M.MahkemeAdi,
    M.Konum AS MahkemeKonumu,
    FORMAT(D.BaslangicTarihi, 'dd.MM.yyyy') AS BaslangicTarihi, 
    dbo.fn_DavaAvukatDurum(D.CaseID) AS DavaAvukatDurum, 
    CASE 
        WHEN D.Durum = 'A��k' THEN 'Dava Halen Devam Ediyor'
        WHEN D.Durum = 'Kapal�' THEN 'Dava Sonu�land�'
        ELSE 'Bilinmeyen Durum'
    END AS DavaDurumDetayi, 
    COUNT(O.SessionID) AS OturumSayisi 
FROM 
    Dava D
    INNER JOIN Mahkeme M ON D.UserID = M.CourtID 
    LEFT JOIN Oturum O ON D.CaseID = O.DavaID 
GROUP BY 
    D.CaseID, D.DavaNo, D.DavaTipi, M.MahkemeAdi, M.Konum, D.BaslangicTarihi, D.Durum;
