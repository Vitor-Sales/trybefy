SELECT name AS 'Artista', GROUP_CONCAT(title) AS 'Álbuns'
FROM artists AS AR
    INNER JOIN albums AS AL ON AR.id = AL.artist_id
GROUP BY
    name
ORDER BY name;