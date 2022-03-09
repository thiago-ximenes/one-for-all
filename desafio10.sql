SELECT c.nome, COUNT(h.usuario_id) as reproducoes
FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.cancoes c
ON h.cancao_id = c.cancao_id
INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = h.usuario_id 
INNER JOIN SpotifyClone.planos p
ON p.plano_id = u.plano_id
WHERE p.nome = 'gratuito' OR p.nome = 'pessoal'
GROUP BY c.nome
ORDER BY c.nome ASC;
