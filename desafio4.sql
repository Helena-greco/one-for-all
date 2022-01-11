SELECT users.usuario AS usuario,
IF(MAX(YEAR(reproduction.data_reproducao)) = 2021, 'Usuário ativo', 'Usuário inativo')
AS condicao_usuario
FROM SpotifyClone.users
INNER JOIN reproduction_history AS reproduction
ON users.usuario_id = reproduction.usuario_id
GROUP BY usuario
ORDER BY usuario;