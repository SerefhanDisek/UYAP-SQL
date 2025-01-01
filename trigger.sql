--Bir oturumun eklendiðinde o oturumun tarihinin davanýn baþlangýç tarihinden sonra olup olmadýðýný kontrol eden ve oturum sayýsýný güncelleyen trigger.

--Oluþturulacak nesnenin veri tabanýnda var olup olmadýðýný kontrol eden ve varsa silen kod bölümü
IF OBJECT_ID('dbo.trg_OturumEkle', 'T') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.trg_OturumEkle;
END;
GO 

CREATE TRIGGER trg_OturumEkle
ON Oturum
AFTER INSERT
AS
BEGIN
    SET NOCOUNT ON;

    BEGIN TRY
        -- Transaction baþlat
        BEGIN TRANSACTION;

        -- Eklenen veriyi kontrol et
        IF EXISTS (
            SELECT 1
            FROM INSERTED i
            JOIN Dava d ON i.DavaID = d.CaseID
            WHERE i.OturumTarihi < d.BaslangicTarihi
        )
        BEGIN
            -- Eðer oturum tarihi davanýn baþlangýç tarihinden önceyse, iþlem iptal edilir
            ROLLBACK TRANSACTION;
            THROW 50001, 'Oturum tarihi, davanýn baþlangýç tarihinden önce olamaz.', 1;
        END;

        -- Oturum sayýsýný güncelle
        UPDATE Dava
        SET
            OturumSayisi = (
                SELECT COUNT(*)
                FROM Oturum
                WHERE DavaID = d.CaseID
            )
        FROM Dava d
        WHERE d.CaseID IN (SELECT DavaID FROM INSERTED);

        -- Transaction onayla
        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Hata durumunda iþlemi geri al
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
