SELECT u.nome usuario,
IF(YEAR(MAX(h.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') condicao_usuario
FROM SpotifyClone.usuarios u
LEFT JOIN SpotifyClone.historico h
ON u.usuario_id  = h.usuario_id
GROUP BY u.nome;
