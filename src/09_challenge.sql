SELECT name AS 'Plano', COUNT(*) AS 'Quantidade de usuários'
FROM users AS US
    INNER JOIN plans AS PL ON US.plan_id = PL.id
GROUP BY
    plan_id
ORDER BY name;