SELECT a.nome artista,
alb.nome album
FROM SpotifyClone.artistas a
INNER JOIN SpotifyClone.albuns alb
ON a.artista_id = alb.artista_id
WHERE a.artista_id = 1
ORDER BY alb.nome ASC;
