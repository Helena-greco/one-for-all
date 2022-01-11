SELECT art.nome_artista AS artista,
alb.album AS album
FROM artist AS art
INNER JOIN album AS alb
ON art.artista_id = alb.artista_id LIMIT 2;