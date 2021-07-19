-- Use database
USE ASP_Ex2;

-- Obtenir les commandes d'un client
CREATE PROCEDURE dbo.CommandesClient 
(
	@NumClient INT
)
AS BEGIN
	SELECT
        c.NumCmd AS [Numéro de la commande]
       ,c1.dateCmd AS [Date de la commande]
       ,COUNT(a.NumArticle) AS [Nombre d'articles commandés]
    FROM Contenir c
    INNER JOIN Commande c1
        ON c1.NumCmd = c.NumCmd
    INNER JOIN Article a
        ON a.NumArticle = c.NumArticle
    WHERE c1.NumClient = @NumClient
    GROUP BY c.NumCmd
            ,c1.dateCmd
END
-- Exécuter
EXEC CommandesClient 3;

-- Les articles d'une commande
SELECT
    *
FROM Article
WHERE NumArticle IN (SELECT
        NumArticle
    FROM Contenir
    WHERE NumCmd = 1)