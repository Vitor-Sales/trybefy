SELECT name AS 'Artista', COUNT(*) AS 'Quantidade de músicas reproduzidas'
FROM
    artists AS AR
    INNER JOIN albums AS AL ON AL.artist_id = AR.id
    INNER JOIN songs AS SO ON SO.album_id = AL.id
    INNER JOIN history_play_songs AS HPS ON HPS.song_id = SO.id
GROUP BY
    name
HAVING
    COUNT(*) > 10
ORDER BY name;