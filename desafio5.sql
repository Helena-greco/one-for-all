SELECT songs.cancao AS cancao, 
COUNT(reproduction.cancao_id) AS reproducoes
FROM songs
INNER JOIN reproduction_history AS reproduction
ON songs.cancao_id = reproduction.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC LIMIT 2;