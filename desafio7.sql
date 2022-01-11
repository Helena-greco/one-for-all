SELECT artist.nome_artista AS artista,
alb.album AS album,
COUNT(following_artist.artista_id) AS seguidores
FROM artist
INNER JOIN album AS alb
ON artist.artista_id = alb.artista_id
INNER JOIN following_artist
ON artist.artista_id = following_artist.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista ASC, album ASC LIMIT 10;