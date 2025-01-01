-- Dava'ya yeni bir oturum ekleyip dava durumunu güncelleyen bir iþlem gerçekleþtiren Stored Procedure.
-- Bu Stored Procedure, hem INSERT hem de UPDATE iþlemlerini içerir ve Transaction ile TRY-CATCH yapýsý kullanýlmýþtýr.

-- Oluþturulacak nesnenin veri tabanýnda var olup olmadýðýný kontrol eden ve varsa silen kod bölümü 
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

        -- 1. Adým: Oturum tablosuna yeni kayýt ekleme
        INSERT INTO Oturum (DavaID, OturumTarihi, Karar)
        VALUES (@DavaID, @OturumTarihi, @Karar);
        -- Eðer bu iþlem baþarýsýz olursa TRY-CATCH yapýsý devreye girecektir.

        -- 2. Adým: Ýlgili dava için Durum alaný güncelleniyor
        UPDATE Dava
        SET Durum = @YeniDurum
        WHERE CaseID = @DavaID;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        -- Hata durumunda iþlemi geri al
        ROLLBACK TRANSACTION;
        THROW;
    END CATCH
END;
GO
