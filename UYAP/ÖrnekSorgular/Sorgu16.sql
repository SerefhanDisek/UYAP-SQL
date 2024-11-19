--Her bir mahkeme türünde toplam kaç dava bulunduðunu ve bu davalardan kaçý "Açýk" durumda olduðunu gösterecek sorguyu yazýnýz.--
---------------------------------------------------------------------------------------------------------------------------------

SELECT 
    M.MahkemeTuru, 
    COUNT(D.CaseID) AS ToplamDavaSayisi,
    SUM(CASE WHEN D.Durum = 'Açýk' THEN 1 ELSE 0 END) AS AcikDavaSayisi
FROM 
    Mahkeme M
LEFT JOIN 
    Dava D ON M.CourtID = D.UserID
GROUP BY 
    M.MahkemeTuru;
