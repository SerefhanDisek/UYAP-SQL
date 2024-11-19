--Her bir mahkeme t�r�nde toplam ka� dava bulundu�unu ve bu davalardan ka�� "A��k" durumda oldu�unu g�sterecek sorguyu yaz�n�z.--
---------------------------------------------------------------------------------------------------------------------------------

SELECT 
    M.MahkemeTuru, 
    COUNT(D.CaseID) AS ToplamDavaSayisi,
    SUM(CASE WHEN D.Durum = 'A��k' THEN 1 ELSE 0 END) AS AcikDavaSayisi
FROM 
    Mahkeme M
LEFT JOIN 
    Dava D ON M.CourtID = D.UserID
GROUP BY 
    M.MahkemeTuru;
