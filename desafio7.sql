SELECT a.artista, al.album AS album, COUNT(id_usuario) AS seguidores 
FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.id_artista = al.id_artista
INNER JOIN SpotifyClone.seguindo_artistas AS s
ON s.id_artista = a.id_artista
GROUP BY a.artista, al.album
ORDER BY seguidores DESC, a.artista, al.album;