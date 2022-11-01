SELECT a.artista, al.album FROM SpotifyClone.artista AS a
INNER JOIN SpotifyClone.album AS al
ON a.id_artista = al.id_artista
WHERE a.artista = 'Elis Regina';