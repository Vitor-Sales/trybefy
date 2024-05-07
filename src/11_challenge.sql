SELECT title AS 'Album', release_year AS 'Ano de lançamento', name AS 'Artista'
FROM artists AS AR
    INNER JOIN albums AS AL ON AL.artist_id = AR.id
WHERE
    title LIKE '%you%'
ORDER BY release_year;