-- https://stackoverflow.com/questions/21950901/round-sum-of-decimal-column-in-sql/21950966 
-- para o cálculo dos segundos em minutos

SELECT users.usuario AS usuario,
COUNT(reproduction_history.cancao_id) AS qtde_musicas_ouvidas,
ROUND(SUM(songs.duracao_segundos/60), 2) AS total_minutos
FROM users
INNER JOIN reproduction_history
INNER JOIN songs
ON users.usuario_id = reproduction_history.usuario_id
AND songs.cancao_id = reproduction_history.cancao_id
GROUP BY usuario
ORDER BY usuario;