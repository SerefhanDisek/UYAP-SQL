CREATE TABLE Kullanici (
    UserID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100),
    Soyad NVARCHAR(100),
    Email NVARCHAR(100) UNIQUE,
    Sifre NVARCHAR(255),
    Rol NVARCHAR(50) CHECK (Rol IN ('Admin', 'Hakim', 'Avukat', 'Di�er'))
);

CREATE TABLE Dava (
    CaseID INT PRIMARY KEY IDENTITY(1,1),
    DavaNo NVARCHAR(50) UNIQUE,
    DavaTipi NVARCHAR(100),
    BaslangicTarihi DATE,
    Durum NVARCHAR(10) CHECK (Durum IN ('A��k', 'Kapal�')),
    UserID INT,
    FOREIGN KEY (UserID) REFERENCES Kullanici(UserID)
);

CREATE TABLE Dokuman (
    DocumentID INT PRIMARY KEY IDENTITY(1,1),
    DavaID INT,
    BelgeTipi NVARCHAR(100),
    YuklemeTarihi DATE,
    DosyaYolu NVARCHAR(255),
    FOREIGN KEY (DavaID) REFERENCES Dava(CaseID)
);

CREATE TABLE Mahkeme (
    CourtID INT PRIMARY KEY IDENTITY(1,1),
    MahkemeAdi NVARCHAR(100),
    MahkemeTuru NVARCHAR(50) CHECK (MahkemeTuru IN ('Ceza', 'Hukuk', '�dare')),
    Konum NVARCHAR(255)
);

CREATE TABLE Oturum (
    SessionID INT PRIMARY KEY IDENTITY(1,1),
    DavaID INT,
    OturumTarihi DATE,
    Karar NVARCHAR(10) CHECK (Karar IN ('A��k', 'Kapal�')),
    FOREIGN KEY (DavaID) REFERENCES Dava(CaseID)
);

CREATE TABLE Taraf (
    PartyID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100),
    Soyad NVARCHAR(100),
    TCKN_VKN NVARCHAR(50) UNIQUE,
    Adres NVARCHAR(255),
    Telefon NVARCHAR(15),
    Email NVARCHAR(100)
);

CREATE TABLE Avukat (
    LawyerID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100),
    Soyad NVARCHAR(100),
    BaroNo NVARCHAR(50) UNIQUE,
    Email NVARCHAR(100),
    Telefon NVARCHAR(15),
    DavaID INT,
    FOREIGN KEY (DavaID) REFERENCES Dava(CaseID)
);

CREATE TABLE DavaTaraf� (
    CasePartyID INT PRIMARY KEY IDENTITY(1,1),
    DavaID INT,
    PartyID INT,
    Rol NVARCHAR(10) CHECK (Rol IN ('Davac�', 'Daval�')),
    FOREIGN KEY (DavaID) REFERENCES Dava(CaseID),
    FOREIGN KEY (PartyID) REFERENCES Taraf(PartyID)
);

CREATE TABLE Karar (
    DecisionID INT PRIMARY KEY IDENTITY(1,1),
    DavaID INT,
    KararTarihi DATE,
    KararMetni NVARCHAR(MAX),
    Sonuc NVARCHAR(10) CHECK (Sonuc IN ('Kabul', 'Red', '�tiraz')),
    FOREIGN KEY (DavaID) REFERENCES Dava(CaseID)
);

CREATE TABLE Yarg�� (
    JudgeID INT PRIMARY KEY IDENTITY(1,1),
    Ad NVARCHAR(100),
    Soyad NVARCHAR(100),
    MahkemeID INT,
    FOREIGN KEY (MahkemeID) REFERENCES Mahkeme(CourtID)
);

CREATE TABLE DavaOturumu (
    HearingID INT PRIMARY KEY IDENTITY(1,1),
    DavaID INT,
    Yarg��ID INT,
    OturumTarihi DATE,
    OturumNotlar� NVARCHAR(MAX),
    FOREIGN KEY (DavaID) REFERENCES Dava(CaseID),
    FOREIGN KEY (Yarg��ID) REFERENCES Yarg��(JudgeID)
);
