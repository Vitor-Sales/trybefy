SELECT AR.name AS 'Artista', AL.title AS 'Álbum', SO.title AS 'Música'
FROM
    artists AS AR
    INNER JOIN albums AS AL ON AL.artist_id = AR.id
    INNER JOIN songs AS SO ON AL.id = SO.album_id
WHERE
    AR.id <> 3
ORDER BY AR.name, AL.title, SO.title;