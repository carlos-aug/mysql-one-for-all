SELECT c.cancoes AS cancao,
COUNT(h.id_cancao) AS reproducoes
FROM SpotifyClone.cancoes AS c
INNER JOIN SpotifyClone.historico AS h
ON c.id_cancao = h.id_cancao
GROUP BY h.id_cancao
ORDER BY reproducoes DESC, c.cancoes LIMIT 2;