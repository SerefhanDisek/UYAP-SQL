-- Dava detaylar�n�, mahkemeyi, oturum say�s�n� ve avukat durumunu i�eren View. 

-- Olu�turulacak nesnenin veri taban�nda var olup olmad���n� kontrol eden ve varsa silen kod b�l�m� 
IF OBJECT_ID('dbo.vw_DavaDetaylari', 'V') IS NOT NULL
BEGIN
    DROP VIEW dbo.vw_DavaDetaylari;
END;
GO 

-- View'i olu�turma
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
GO 
