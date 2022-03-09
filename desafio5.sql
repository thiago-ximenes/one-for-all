SELECT c.nome cancao,
COUNt(h.cancao_id) reproducoes
FROM SpotifyClone.cancoes c
LEFT JOIN SpotifyClone.historico h
on h.cancao_id = c.cancao_id
GROUP BY nome
ORDER BY COUNt(h.cancao_id) DESC, c.nome ASC
LIMIT 2;
