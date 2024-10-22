-- Dava'ya atanmýþ avukat sayýsýný ve davanýn durumunu birlikte dönen bir scalar fonksiyon. Bu fonksiyon yalnýzca bir dava ID'si alacak ve string olarak dava durumu ile avukat sayýsýný döndürecek.
CREATE FUNCTION dbo.fn_DavaAvukatDurum(
    @DavaID INT 
)
RETURNS NVARCHAR(255) 
AS
BEGIN
    DECLARE @Sonuc NVARCHAR(255); 
    DECLARE @AvukatSayisi INT; 
    DECLARE @Durum NVARCHAR(10); 
    
    SELECT @AvukatSayisi = COUNT(LawyerID)
    FROM Avukat
    WHERE DavaID = @DavaID;
    
    SELECT @Durum = Durum
    FROM Dava
    WHERE CaseID = @DavaID;

    SET @Sonuc = 'Dava Durumu: ' + @Durum + ', Avukat Sayýsý: ' + CAST(@AvukatSayisi AS NVARCHAR(10));
    
    RETURN @Sonuc; 
END;

