SELECT name AS 'Artista', COUNT(*) AS 'Quantidade de álbuns'
FROM artists AS AR
    INNER JOIN albums AS AL ON AL.artist_id = AR.id
GROUP BY
    artist_id
ORDER BY COUNT(*) DESC, name;