SELECT name AS 'Artista', COUNT(*) AS 'Total de seguidores'
FROM
    artists AS AR
    INNER JOIN artists_followers AS AF ON AR.id = AF.artist_id
GROUP BY
    name
HAVING
    COUNT(*) < 5;