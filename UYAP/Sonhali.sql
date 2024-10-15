use UYAP

INSERT INTO Kullanici (Ad, Soyad, Email, Sifre, Rol) VALUES 
('Ali', 'Y�lmaz', 'ali.yilmaz@example.com', 'hashed_password_1', 'Admin'),
('Ay�e', 'Demir', 'ayse.demir@example.com', 'hashed_password_2', 'Hakim'),
('Mehmet', '�elik', 'mehmet.celik@example.com', 'hashed_password_3', 'Avukat'),
('Zeynep', 'Ko�', 'zeynep.koc@example.com', 'hashed_password_4', 'Di�er'),
('Selin', 'Kaya', 'selin.kaya@example.com', 'hashed_password_5', 'Avukat'),
('O�uz', 'Arslan', 'oguz.arslan@example.com', 'hashed_password_6', 'Hakim'),
('Burcu', 'Ayd�n', 'burcu.aydin@example.com', 'hashed_password_7', 'Admin'),
('Emre', 'Polat', 'emre.polat@example.com', 'hashed_password_8', 'Di�er'),
('Meltem', 'Yurt', 'meltem.yurt@example.com', 'hashed_password_9', 'Hakim'),
('Hakan', 'Akman', 'hakan.akman@example.com', 'hashed_password_10', 'Avukat');

INSERT INTO Dava (DavaNo, DavaTipi, BaslangicTarihi, Durum, UserID) VALUES 
('2024/1', 'Hukuk', '2024-01-15', 'A��k', 1),
('2024/2', 'Ceza', '2024-02-10', 'Kapal�', 2),
('2024/3', '�dare', '2024-03-05', 'A��k', 3),
('2024/4', 'Hukuk', '2024-04-20', 'Kapal�', 4),
('2024/5', 'Ceza', '2024-05-10', 'A��k', 5),
('2024/6', '�dare', '2024-06-15', 'Kapal�', 6),
('2024/7', 'Hukuk', '2024-07-25', 'A��k', 7),
('2024/8', 'Ceza', '2024-08-30', 'Kapal�', 8),
('2024/9', '�dare', '2024-09-10', 'A��k', 9),
('2024/10', 'Hukuk', '2024-10-15', 'Kapal�', 10);

INSERT INTO Dokuman (DavaID, BelgeTipi, YuklemeTarihi, DosyaYolu) VALUES 
(1, 'Dilek�e', '2024-01-16', 'C:/Belgeler/Dava1_Dilekce.pdf'),
(1, 'Tan�k �fadesi', '2024-01-20', 'C:/Belgeler/Dava1_Tanik.pdf'),
(2, 'Karar', '2024-02-11', 'C:/Belgeler/Dava2_Karar.pdf'),
(3, 'Delil', '2024-03-06', 'C:/Belgeler/Dava3_Delil.pdf'),
(4, 'Duru�ma Tutana��', '2024-04-21', 'C:/Belgeler/Dava4_Tutana��.pdf'),
(5, 'Ek Belgeler', '2024-05-11', 'C:/Belgeler/Dava5_EkBelgeler.pdf'),
(6, '�tiraz', '2024-06-16', 'C:/Belgeler/Dava6_Itiraz.pdf'),
(7, 'G�r��', '2024-07-26', 'C:/Belgeler/Dava7_Gorus.pdf'),
(8, 'Olay Tespit Raporu', '2024-08-31', 'C:/Belgeler/Dava8_Tespit.pdf'),
(9, '�zet', '2024-09-11', 'C:/Belgeler/Dava9_Ozet.pdf');

INSERT INTO Mahkeme (MahkemeAdi, MahkemeTuru, Konum) VALUES 
('�stanbul 1. Asliye Hukuk Mahkemesi', 'Hukuk', 'Beyo�lu, �stanbul'),
('Ankara 2. Ceza Mahkemesi', 'Ceza', '�ankaya, Ankara'),
('�zmir 3. �dare Mahkemesi', '�dare', 'Konak, �zmir'),
('Bursa 1. Sulh Hukuk Mahkemesi', 'Hukuk', 'Osmangazi, Bursa'),
('Antalya 2. Asliye Ceza Mahkemesi', 'Ceza', 'Muratpa�a, Antalya'),
('�stanbul 5. Ticaret Mahkemesi', 'Hukuk', '�i�li, �stanbul'),
('Konya 1. �dare Mahkemesi', '�dare', 'Sel�uklu, Konya'),
('Sakarya 1. Sulh Ceza Mahkemesi', 'Ceza', 'Adapazar�, Sakarya'),
('Kayseri 3. Asliye Ceza Mahkemesi', 'Hukuk', 'Kocasinan, Kayseri'),
('Trabzon 2. �dare Mahkemesi', '�dare', 'Ortahisar, Trabzon');

INSERT INTO Oturum (DavaID, OturumTarihi, Karar) VALUES 
(1, '2024-01-20', 'A��k'),
(1, '2024-02-15', 'Kapal�'),
(2, '2024-02-20', 'A��k'),
(3, '2024-03-10', 'Kapal�'),
(4, '2024-04-25', 'A��k'),
(5, '2024-05-15', 'Kapal�'),
(6, '2024-06-01', 'A��k'),
(7, '2024-07-15', 'Kapal�'),
(8, '2024-08-05', 'A��k'),
(9, '2024-09-12', 'Kapal�');

INSERT INTO Taraf (Ad, Soyad, TCKN_VKN, Adres, Telefon, Email) VALUES 
('Ahmet', 'Kaya', '11111111111', '�stanbul, Beyo�lu', '0530-111-1111', 'ahmet.kaya@example.com'),
('Fatma', 'Arslan', '22222222222', 'Ankara, �ankaya', '0530-222-2222', 'fatma.arslan@example.com'),
('Ay�e', '�zt�rk', '33333333333', '�zmir, Konak', '0530-333-3333', 'ayse.ozturk@example.com'),
('Mehmet', 'Kara', '44444444444', 'Bursa, Osmangazi', '0530-444-4444', 'mehmet.kara@example.com'),
('Seda', 'Ate�', '55555555555', 'Antalya, Muratpa�a', '0530-555-5555', 'seda.ates@example.com'),
('Can', 'Kaya', '66666666666', 'Konya, Sel�uklu', '0530-666-6666', 'can.kaya@example.com'),
('Merve', 'Demirta�', '77777777777', 'Sakarya, Adapazar�', '0530-777-7777', 'merve.demirtas@example.com'),
('Ali', 'Turan', '88888888888', 'Kayseri, Kocasinan', '0530-888-8888', 'ali.turan@example.com'),
('Burak', 'Erdo�an', '99999999999', 'Trabzon, Ortahisar', '0530-999-9999', 'burak.erdogan@example.com'),
('Elif', '�etin', '10101010101', '�stanbul, �i�li', '0530-101-0101', 'elif.cetin@example.com');

INSERT INTO Avukat (Ad, Soyad, BaroNo, Email, Telefon, DavaID) VALUES 
('Ali', 'Y�lmaz', '12345', 'ali.avukat@example.com', '0500-123-4567', 1),
('Ay�e', 'Demir', '67890', 'ayse.avukat@example.com', '0500-987-6543', 2),
('Mehmet', '�elik', '54321', 'mehmet.avukat@example.com', '0500-654-3210', 3),
('Zeynep', 'Ko�', '13579', 'zeynep.avukat@example.com', '0500-321-6549', 4),
('Selin', 'Kaya', '24680', 'selin.avukat@example.com', '0500-456-7890', 5),
('O�uz', 'Arslan', '11223', 'oguz.avukat@example.com', '0500-234-5678', 6),
('Burcu', 'Ayd�n', '44556', 'burcu.avukat@example.com', '0500-789-0123', 7),
('Emre', 'Polat', '77889', 'emre.avukat@example.com', '0500-012-3456', 8),
('Meltem', 'Yurt', '99000', 'meltem.avukat@example.com', '0500-654-9870', 9),
('Hakan', 'Akman', '22334', 'hakan.avukat@example.com', '0500-321-9876', 10);

INSERT INTO Yarg�� (Ad, Soyad, MahkemeID) VALUES 
('Ahmet', 'Y�lmaz', 1),
('Fatma', 'Kara', 2),
('Mehmet', '�elik', 3),
('Ay�e', 'Demir', 1),
('Zeynep', 'Ko�', 2),
('Ali', 'Yurt', 3),
('Emre', 'Ayd�n', 1),
('Burcu', 'Arslan', 2),
('O�uz', 'G�ne�', 3),
('Selin', 'Akman', 1);

INSERT INTO DavaTaraf� (DavaID, PartyID, Rol) VALUES 
(1, 1, 'Davac�'),
(1, 2, 'Daval�'),
(2, 3, 'Davac�'),
(2, 4, 'Daval�'),
(3, 5, 'Davac�'),
(3, 6, 'Daval�'),
(4, 7, 'Davac�'),
(4, 8, 'Daval�'),
(5, 9, 'Davac�'),
(5, 10, 'Daval�');

INSERT INTO Karar (DavaID, KararTarihi, KararMetni, Sonuc) VALUES 
(1, '2024-01-20', 'Davan�n kabul�', 'Kabul'),
(1, '2024-02-15', '�tiraz�n reddi', '�tiraz'),
(2, '2024-03-10', 'Davan�n reddi', 'Red'),
(3, '2024-04-25', 'Davac� lehine karar', 'Kabul'),
(4, '2024-05-15', 'Delil yetersizli�inden red', 'Red'),
(5, '2024-06-01', '�tiraz�n kabul�', 'Kabul'),
(6, '2024-07-15', 'Davan�n kabul�', 'Kabul'),
(7, '2024-08-05', 'Daval� lehine karar', 'Red'),
(8, '2024-09-12', 'Davac� lehine karar', 'Kabul'),
(9, '2024-10-10', 'Karar�n bozulmas�', '�tiraz');

INSERT INTO DavaOturumu (DavaID, Yarg��ID, OturumTarihi, OturumNotlar�) VALUES 
(1, 1, '2024-01-20', 'Duru�ma a��k alanda ger�ekle�tirildi.'),
(1, 2, '2024-02-15', 'Tan�k dinlendi.'),
(2, 3, '2024-03-10', '�tirazlar yap�ld�.'),
(3, 4, '2024-04-25', 'Ek belgeler incelendi.'),
(4, 5, '2024-05-15', 'Tan�k ifadesi al�nd�.'),
(5, 6, '2024-06-01', 'Karar a��kland�.'),
(6, 7, '2024-07-15', 'Dava sonu�land�.'),
(7, 8, '2024-08-05', 'Duru�ma g�n� belirlendi.'),
(8, 9, '2024-09-12', 'Sonu�lar de�erlendirildi.'),
(9, 10, '2024-10-10', 'Karar �zerine tart��malar yap�ld�.');
