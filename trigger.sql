--Bir oturumun eklendi�inde o oturumun tarihinin davan�n ba�lang�� tarihinden sonra olup olmad���n� kontrol eden ve oturum say�s�n� g�ncelleyen trigger.

--Olu�turulacak nesnenin veri taban�nda var olup olmad���n� kontrol eden ve varsa silen kod b�l�m�
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
        -- Transaction ba�lat
        BEGIN TRANSACTION;

        -- Eklenen veriyi kontrol et
        IF EXISTS (
            SELECT 1
            FROM INSERTED i
            JOIN Dava d ON i.DavaID = d.CaseID
            WHERE i.OturumTarihi < d.BaslangicTarihi
        )
        BEGIN
            -- E�er oturum tarihi davan�n ba�lang�� tarihinden �nceyse, i�lem iptal edilir
            ROLLBACK TRANSACTION;
            THROW 50001, 'Oturum tarihi, davan�n ba�lang�� tarihinden �nce olamaz.', 1;
        END;

        -- Oturum say�s�n� g�ncelle
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
        -- Hata durumunda i�lemi geri al
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
