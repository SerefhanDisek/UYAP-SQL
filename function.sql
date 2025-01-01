-- Dava'ya atanmýþ avukat sayýsýný ve davanýn durumunu birlikte dönen bir scalar fonksiyon. Bu fonksiyon yalnýzca bir dava ID'si alacak ve string olarak dava durumu ile avukat sayýsýný döndürecek.

-- Oluþturulacak nesnenin veri tabanýnda var olup olmadýðýný kontrol eden ve varsa silen kod bölümü 
IF OBJECT_ID('dbo.fn_DavaAvukatDurum', 'FN') IS NOT NULL
BEGIN
    DROP FUNCTION dbo.fn_DavaAvukatDurum;
END;
GO

-- Fonksiyonu oluþturuyoruz
CREATE FUNCTION dbo.fn_DavaAvukatDurum(
    @DavaID INT 
)
RETURNS NVARCHAR(255) 
AS
BEGIN
    DECLARE @Sonuc NVARCHAR(255); 
    DECLARE @AvukatSayisi INT; 
    DECLARE @Durum NVARCHAR(10); 
    
    -- Avukat sayýsýný buluyoruz
    SELECT @AvukatSayisi = COUNT(LawyerID)
    FROM Avukat
    WHERE DavaID = @DavaID;
    
    -- Davanýn durumunu alýyoruz
    SELECT @Durum = Durum
    FROM Dava
    WHERE CaseID = @DavaID;

    -- Sonucu birleþtiriyoruz
    SET @Sonuc = 'Dava Durumu: ' + @Durum + ', Avukat Sayýsý: ' + CAST(@AvukatSayisi AS NVARCHAR(10));
    
    -- Deðeri döndürüyoruz
    RETURN @Sonuc; 
END;

