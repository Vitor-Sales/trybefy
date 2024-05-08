SELECT name AS 'Artista', COUNT(album_id) AS 'Quantidade de músicas'
FROM
    artists AS AR
    INNER JOIN albums AS AL ON AL.artist_id = AR.id
    INNER JOIN songs AS SO ON SO.album_id = AL.id
GROUP BY
    name
ORDER BY COUNT(album_id) DESC, name
LIMIT 3;