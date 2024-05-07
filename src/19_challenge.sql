SELECT SO.title AS 'Título', duration_in_seconds AS 'Duração', AL.title AS 'Álbum'
FROM songs AS SO
    INNER JOIN albums AS AL ON AL.id = SO.album_id
WHERE
    duration_in_seconds BETWEEN 300 AND 680
ORDER BY duration_in_seconds;