SELECT u.usuario AS usuario, 
IF (MAX(YEAR(reproducao.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.historico AS reproducao
ON u.id_usuario = reproducao.id_usuario
GROUP BY u.usuario
ORDER BY usuario;