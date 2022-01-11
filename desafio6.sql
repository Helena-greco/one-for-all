SELECT MIN(plans.valor) AS faturamento_minimo,
MAX(plans.valor) AS faturamento_maximo,
ROUND(AVG(plans.valor), 2) AS faturamento_medio,
ROUND(SUM(plans.valor), 2) AS faturamento_total
FROM SpotifyClone.plans
INNER JOIN SpotifyClone.users
ON plans.plano_id = users.plano_id;