SELECT a.nome artista, alb.nome album,
COUNT(seg.usuario_id) seguidores
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns alb
ON alb.artista_id = a.artista_id
LEFT JOIN SpotifyClone.artistas_seguidores seg
ON a.artista_id = seg.artista_id
GROUP BY alb.album_id
ORDER BY seguidores DESC, artista ASC, album ASC;
