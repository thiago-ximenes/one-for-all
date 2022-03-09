SELECT COUNT(*) quantidade_musicas_no_historico
FROM SpotifyClone.historico h
INNER JOIN SpotifyClone.usuarios u
ON u.usuario_id = h.usuario_id
WHERE u.nome = 'Bill';
