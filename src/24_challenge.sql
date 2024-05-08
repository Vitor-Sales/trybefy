SELECT full_name AS 'Nome', COUNT(*) AS 'Quantidade de músicas reproduzidas'
FROM
    users AS US
    INNER JOIN history_play_songs AS HPS ON HPS.user_id = US.id
GROUP BY
    full_name
ORDER BY COUNT(*) DESC, full_name;