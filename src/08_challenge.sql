SELECT full_name as 'Nome completo', email as 'E-mail', name as 'Plano'
FROM users AS US
    INNER JOIN plans AS PL ON US.plan_id = PL.id
ORDER BY full_name;