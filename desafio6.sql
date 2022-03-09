SELECT FORMAT(MIN(p.valor), 2) faturamento_minimo, FORMAT(MAX(p.valor), 2) faturamento_maximo,
FORMAT(AVG(p.valor), 2) faturamento_medio, FORMAT(SUM(p.valor), 2) faturamento_total
FROM SpotifyClone.planos p
LEFT JOIN SpotifyClone.usuarios u
ON u.plano_id = p.plano_id;
