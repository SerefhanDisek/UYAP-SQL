-- Dava'ya yeni bir oturum ekleyip dava durumunu g�ncelleyen bir i�lem ger�ekle�tiren Stored Procedure.
-- Bu Stored Procedure, hem INSERT hem de UPDATE i�lemlerini i�erir ve Transaction ile TRY-CATCH yap�s� kullan�lm��t�r.

-- Olu�turulacak nesnenin veri taban�nda var olup olmad���n� kontrol eden ve varsa silen kod b�l�m� 
IF OBJECT_ID('dbo.Sp_OturumEkleVeDavaGuncelle', 'P') IS NOT NULL
BEGIN
    DROP PROCEDURE dbo.Sp_OturumEkleVeDavaGuncelle;
END;
GO 

CREATE PROCEDURE Sp_OturumEkleVeDavaGuncelle
    @DavaID INT,              
    @OturumTarihi DATE,       
    @Karar NVARCHAR(10),      
    @YeniDurum NVARCHAR(10)   
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION;

        -- 1. Ad�m: Oturum tablosuna yeni kay�t ekleme
        INSERT INTO Oturum (DavaID, OturumTarihi, Karar)
        VALUES (@DavaID, @OturumTarihi, @Karar);
        -- E�er bu i�lem ba�ar�s�z olursa TRY-CATCH yap�s� devreye girecektir.

        -- 2. Ad�m: �lgili dava i�in Durum alan� g�ncelleniyor
        UPDATE Dava
        SET Durum = @YeniDurum
        WHERE CaseID = @DavaID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Hata durumunda i�lemi geri al
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
