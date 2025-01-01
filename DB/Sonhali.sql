use UYAP

INSERT INTO Kullanici (Ad, Soyad, Email, Sifre, Rol) VALUES 
('Ali', 'Yýlmaz', 'ali.yilmaz@example.com', 'hashed_password_1', 'Admin'),
('Ayþe', 'Demir', 'ayse.demir@example.com', 'hashed_password_2', 'Hakim'),
('Mehmet', 'Çelik', 'mehmet.celik@example.com', 'hashed_password_3', 'Avukat'),
('Zeynep', 'Koç', 'zeynep.koc@example.com', 'hashed_password_4', 'Diðer'),
('Selin', 'Kaya', 'selin.kaya@example.com', 'hashed_password_5', 'Avukat'),
('Oðuz', 'Arslan', 'oguz.arslan@example.com', 'hashed_password_6', 'Hakim'),
('Burcu', 'Aydýn', 'burcu.aydin@example.com', 'hashed_password_7', 'Admin'),
('Emre', 'Polat', 'emre.polat@example.com', 'hashed_password_8', 'Diðer'),
('Meltem', 'Yurt', 'meltem.yurt@example.com', 'hashed_password_9', 'Hakim'),
('Hakan', 'Akman', 'hakan.akman@example.com', 'hashed_password_10', 'Avukat');

INSERT INTO Dava (DavaNo, DavaTipi, BaslangicTarihi, Durum, UserID) VALUES 
('2024/1', 'Hukuk', '2024-01-15', 'Açýk', 1),
('2024/2', 'Ceza', '2024-02-10', 'Kapalý', 2),
('2024/3', 'Ýdare', '2024-03-05', 'Açýk', 3),
('2024/4', 'Hukuk', '2024-04-20', 'Kapalý', 4),
('2024/5', 'Ceza', '2024-05-10', 'Açýk', 5),
('2024/6', 'Ýdare', '2024-06-15', 'Kapalý', 6),
('2024/7', 'Hukuk', '2024-07-25', 'Açýk', 7),
('2024/8', 'Ceza', '2024-08-30', 'Kapalý', 8),
('2024/9', 'Ýdare', '2024-09-10', 'Açýk', 9),
('2024/10', 'Hukuk', '2024-10-15', 'Kapalý', 10);

INSERT INTO Dokuman (DavaID, BelgeTipi, YuklemeTarihi, DosyaYolu) VALUES 
(1, 'Dilekçe', '2024-01-16', 'C:/Belgeler/Dava1_Dilekce.pdf'),
(1, 'Tanýk Ýfadesi', '2024-01-20', 'C:/Belgeler/Dava1_Tanik.pdf'),
(2, 'Karar', '2024-02-11', 'C:/Belgeler/Dava2_Karar.pdf'),
(3, 'Delil', '2024-03-06', 'C:/Belgeler/Dava3_Delil.pdf'),
(4, 'Duruþma Tutanaðý', '2024-04-21', 'C:/Belgeler/Dava4_Tutanaðý.pdf'),
(5, 'Ek Belgeler', '2024-05-11', 'C:/Belgeler/Dava5_EkBelgeler.pdf'),
(6, 'Ýtiraz', '2024-06-16', 'C:/Belgeler/Dava6_Itiraz.pdf'),
(7, 'Görüþ', '2024-07-26', 'C:/Belgeler/Dava7_Gorus.pdf'),
(8, 'Olay Tespit Raporu', '2024-08-31', 'C:/Belgeler/Dava8_Tespit.pdf'),
(9, 'Özet', '2024-09-11', 'C:/Belgeler/Dava9_Ozet.pdf');

INSERT INTO Mahkeme (MahkemeAdi, MahkemeTuru, Konum) VALUES 
('Ýstanbul 1. Asliye Hukuk Mahkemesi', 'Hukuk', 'Beyoðlu, Ýstanbul'),
('Ankara 2. Ceza Mahkemesi', 'Ceza', 'Çankaya, Ankara'),
('Ýzmir 3. Ýdare Mahkemesi', 'Ýdare', 'Konak, Ýzmir'),
('Bursa 1. Sulh Hukuk Mahkemesi', 'Hukuk', 'Osmangazi, Bursa'),
('Antalya 2. Asliye Ceza Mahkemesi', 'Ceza', 'Muratpaþa, Antalya'),
('Ýstanbul 5. Ticaret Mahkemesi', 'Hukuk', 'Þiþli, Ýstanbul'),
('Konya 1. Ýdare Mahkemesi', 'Ýdare', 'Selçuklu, Konya'),
('Sakarya 1. Sulh Ceza Mahkemesi', 'Ceza', 'Adapazarý, Sakarya'),
('Kayseri 3. Asliye Ceza Mahkemesi', 'Hukuk', 'Kocasinan, Kayseri'),
('Trabzon 2. Ýdare Mahkemesi', 'Ýdare', 'Ortahisar, Trabzon');

INSERT INTO Oturum (DavaID, OturumTarihi, Karar) VALUES 
(1, '2024-01-20', 'Açýk'),
(1, '2024-02-15', 'Kapalý'),
(2, '2024-02-20', 'Açýk'),
(3, '2024-03-10', 'Kapalý'),
(4, '2024-04-25', 'Açýk'),
(5, '2024-05-15', 'Kapalý'),
(6, '2024-06-01', 'Açýk'),
(7, '2024-07-15', 'Kapalý'),
(8, '2024-08-05', 'Açýk'),
(9, '2024-09-12', 'Kapalý');

INSERT INTO Taraf (Ad, Soyad, TCKN_VKN, Adres, Telefon, Email) VALUES 
('Ahmet', 'Kaya', '11111111111', 'Ýstanbul, Beyoðlu', '0530-111-1111', 'ahmet.kaya@example.com'),
('Fatma', 'Arslan', '22222222222', 'Ankara, Çankaya', '0530-222-2222', 'fatma.arslan@example.com'),
('Ayþe', 'Öztürk', '33333333333', 'Ýzmir, Konak', '0530-333-3333', 'ayse.ozturk@example.com'),
('Mehmet', 'Kara', '44444444444', 'Bursa, Osmangazi', '0530-444-4444', 'mehmet.kara@example.com'),
('Seda', 'Ateþ', '55555555555', 'Antalya, Muratpaþa', '0530-555-5555', 'seda.ates@example.com'),
('Can', 'Kaya', '66666666666', 'Konya, Selçuklu', '0530-666-6666', 'can.kaya@example.com'),
('Merve', 'Demirtaþ', '77777777777', 'Sakarya, Adapazarý', '0530-777-7777', 'merve.demirtas@example.com'),
('Ali', 'Turan', '88888888888', 'Kayseri, Kocasinan', '0530-888-8888', 'ali.turan@example.com'),
('Burak', 'Erdoðan', '99999999999', 'Trabzon, Ortahisar', '0530-999-9999', 'burak.erdogan@example.com'),
('Elif', 'Çetin', '10101010101', 'Ýstanbul, Þiþli', '0530-101-0101', 'elif.cetin@example.com');

INSERT INTO Avukat (Ad, Soyad, BaroNo, Email, Telefon, DavaID) VALUES 
('Ali', 'Yýlmaz', '12345', 'ali.avukat@example.com', '0500-123-4567', 1),
('Ayþe', 'Demir', '67890', 'ayse.avukat@example.com', '0500-987-6543', 2),
('Mehmet', 'Çelik', '54321', 'mehmet.avukat@example.com', '0500-654-3210', 3),
('Zeynep', 'Koç', '13579', 'zeynep.avukat@example.com', '0500-321-6549', 4),
('Selin', 'Kaya', '24680', 'selin.avukat@example.com', '0500-456-7890', 5),
('Oðuz', 'Arslan', '11223', 'oguz.avukat@example.com', '0500-234-5678', 6),
('Burcu', 'Aydýn', '44556', 'burcu.avukat@example.com', '0500-789-0123', 7),
('Emre', 'Polat', '77889', 'emre.avukat@example.com', '0500-012-3456', 8),
('Meltem', 'Yurt', '99000', 'meltem.avukat@example.com', '0500-654-9870', 9),
('Hakan', 'Akman', '22334', 'hakan.avukat@example.com', '0500-321-9876', 10);

INSERT INTO Yargýç (Ad, Soyad, MahkemeID) VALUES 
('Ahmet', 'Yýlmaz', 1),
('Fatma', 'Kara', 2),
('Mehmet', 'Çelik', 3),
('Ayþe', 'Demir', 1),
('Zeynep', 'Koç', 2),
('Ali', 'Yurt', 3),
('Emre', 'Aydýn', 1),
('Burcu', 'Arslan', 2),
('Oðuz', 'Güneþ', 3),
('Selin', 'Akman', 1);

INSERT INTO DavaTarafý (DavaID, PartyID, Rol) VALUES 
(1, 1, 'Davacý'),
(1, 2, 'Davalý'),
(2, 3, 'Davacý'),
(2, 4, 'Davalý'),
(3, 5, 'Davacý'),
(3, 6, 'Davalý'),
(4, 7, 'Davacý'),
(4, 8, 'Davalý'),
(5, 9, 'Davacý'),
(5, 10, 'Davalý');

INSERT INTO Karar (DavaID, KararTarihi, KararMetni, Sonuc) VALUES 
(1, '2024-01-20', 'Davanýn kabulü', 'Kabul'),
(1, '2024-02-15', 'Ýtirazýn reddi', 'Ýtiraz'),
(2, '2024-03-10', 'Davanýn reddi', 'Red'),
(3, '2024-04-25', 'Davacý lehine karar', 'Kabul'),
(4, '2024-05-15', 'Delil yetersizliðinden red', 'Red'),
(5, '2024-06-01', 'Ýtirazýn kabulü', 'Kabul'),
(6, '2024-07-15', 'Davanýn kabulü', 'Kabul'),
(7, '2024-08-05', 'Davalý lehine karar', 'Red'),
(8, '2024-09-12', 'Davacý lehine karar', 'Kabul'),
(9, '2024-10-10', 'Kararýn bozulmasý', 'Ýtiraz');

INSERT INTO DavaOturumu (DavaID, YargýçID, OturumTarihi, OturumNotlarý) VALUES 
(1, 1, '2024-01-20', 'Duruþma açýk alanda gerçekleþtirildi.'),
(1, 2, '2024-02-15', 'Tanýk dinlendi.'),
(2, 3, '2024-03-10', 'Ýtirazlar yapýldý.'),
(3, 4, '2024-04-25', 'Ek belgeler incelendi.'),
(4, 5, '2024-05-15', 'Tanýk ifadesi alýndý.'),
(5, 6, '2024-06-01', 'Karar açýklandý.'),
(6, 7, '2024-07-15', 'Dava sonuçlandý.'),
(7, 8, '2024-08-05', 'Duruþma günü belirlendi.'),
(8, 9, '2024-09-12', 'Sonuçlar deðerlendirildi.'),
(9, 10, '2024-10-10', 'Karar üzerine tartýþmalar yapýldý.');
