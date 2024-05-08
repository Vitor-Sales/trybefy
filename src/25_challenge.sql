SELECT AL.title AS 'Álbum', COUNT(*) AS 'Quantidade de músicas reproduzidas'
FROM
    albums AS AL
    INNER JOIN songs AS SO ON AL.id = SO.album_id
    INNER JOIN history_play_songs AS HPS ON HPS.song_id = SO.id
GROUP BY
    AL.title
ORDER BY COUNT(*) DESC, AL.title
LIMIT 5;