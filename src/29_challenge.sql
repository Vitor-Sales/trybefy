SELECT name AS 'Artista'
FROM
    artists AS AR
    INNER JOIN artists_followers AS AF ON AR.id = AF.artist_id
GROUP BY
    name
ORDER BY COUNT(*) DESC
LIMIT 1;