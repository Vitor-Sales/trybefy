SELECT full_name AS 'Pessoa usuária', COUNT(*) AS 'Artistas que segue'
FROM
    artists_followers AS AF
    INNER JOIN users AS US ON US.id = AF.user_id
    INNER JOIN artists AS AR ON AR.id = AF.artist_id
GROUP BY
    full_name
ORDER BY full_name;