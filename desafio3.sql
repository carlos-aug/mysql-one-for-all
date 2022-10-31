SELECT usuario.usuario AS usuario, 
COUNT(historico.id_usuario) AS qt_de_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos / 60), 2) AS total_minutos
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico AS historico
ON usuario.id_usuario = historico.id_usuario
INNER JOIN SpotifyClone.cancoes AS c 
ON historico.id_cancao = c.id_cancao
GROUP BY usuario.usuario
ORDER BY usuario;