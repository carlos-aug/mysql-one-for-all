SELECT MIN(p.valor_plano) AS faturamento_minimo,
MAX(p.valor_plano) AS faturamento_maximo,
CAST(AVG(p.valor_plano) AS DECIMAL(3,2)) AS faturamento_medio,
SUM(p.valor_plano) AS faturamento_total
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.usuario AS u
ON p.id_plano = u.id_plano;