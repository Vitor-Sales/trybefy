SELECT name AS 'Artista'
FROM artists AS AR
    INNER JOIN albums AS AL ON AR.id = AL.artist_id
GROUP BY
    name
HAVING
    COUNT(*) >= 3
ORDER BY name;