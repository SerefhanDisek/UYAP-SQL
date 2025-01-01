-- Dava'ya atanm�� avukat say�s�n� ve davan�n durumunu birlikte d�nen bir scalar fonksiyon. Bu fonksiyon yaln�zca bir dava ID'si alacak ve string olarak dava durumu ile avukat say�s�n� d�nd�recek.

-- Olu�turulacak nesnenin veri taban�nda var olup olmad���n� kontrol eden ve varsa silen kod b�l�m� 
IF OBJECT_ID('dbo.fn_DavaAvukatDurum', 'FN') IS NOT NULL
BEGIN
    DROP FUNCTION dbo.fn_DavaAvukatDurum;
END;
GO

-- Fonksiyonu olu�turuyoruz
CREATE FUNCTION dbo.fn_DavaAvukatDurum(
    @DavaID INT 
)
RETURNS NVARCHAR(255) 
AS
BEGIN
    DECLARE @Sonuc NVARCHAR(255); 
    DECLARE @AvukatSayisi INT; 
    DECLARE @Durum NVARCHAR(10); 
    
    -- Avukat say�s�n� buluyoruz
    SELECT @AvukatSayisi = COUNT(LawyerID)
    FROM Avukat
    WHERE DavaID = @DavaID;
    
    -- Davan�n durumunu al�yoruz
    SELECT @Durum = Durum
    FROM Dava
    WHERE CaseID = @DavaID;

    -- Sonucu birle�tiriyoruz
    SET @Sonuc = 'Dava Durumu: ' + @Durum + ', Avukat Say�s�: ' + CAST(@AvukatSayisi AS NVARCHAR(10));
    
    -- De�eri d�nd�r�yoruz
    RETURN @Sonuc; 
END;

