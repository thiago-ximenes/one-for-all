SELECT usuarios.nome usuario,
COUNT(historico.usuario_id) qtde_musicas_ouvidas,
ROUND(SUM(c.duracao_segundos) / 60, 2) total_minutos
FROM SpotifyClone.usuarios AS usuarios
LEFT JOIN SpotifyClone.historico AS historico
ON usuarios.usuario_id = historico.usuario_id
INNER JOIN SpotifyClone.cancoes c
ON historico.cancao_id = c.cancao_id
GROUP BY usuarios.nome;
