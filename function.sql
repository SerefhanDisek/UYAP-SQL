-- Dava'ya atanm�� avukat say�s�n� ve davan�n durumunu birlikte d�nen bir scalar fonksiyon. Bu fonksiyon yaln�zca bir dava ID'si alacak ve string olarak dava durumu ile avukat say�s�n� d�nd�recek.
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

    SET @Sonuc = 'Dava Durumu: ' + @Durum + ', Avukat Say�s�: ' + CAST(@AvukatSayisi AS NVARCHAR(10));
    
    RETURN @Sonuc; 
END;

