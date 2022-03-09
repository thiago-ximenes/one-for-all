SELECT COUNT(DISTINCT cancao_id) AS cancoes,
COUNT(DISTINCT artistas.artista_id)  AS artistas,
COUNT(DISTINCT albuns.album_id) as albuns
FROM SpotifyClone.cancoes cancoes,
SpotifyClone.artistas artistas,
SpotifyClone.albuns;
