SELECT AL.title AS 'Álbum', SUM(duration_in_seconds) AS 'Duração'
FROM albums AS AL
    INNER JOIN songs AS SO ON AL.id = SO.album_id
GROUP BY
    AL.title
ORDER BY SUM(duration_in_seconds) DESC;