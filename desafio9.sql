SELECT COUNT(h.id_usuario) AS quantidade_musicas_no_historico
FROM SpotifyClone.usuario AS usuario
INNER JOIN SpotifyClone.historico AS h ON usuario.id_usuario = h.id_usuario
WHERE usuario.usuario = 'Barbara Liskov';