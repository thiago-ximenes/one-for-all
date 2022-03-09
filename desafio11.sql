SELECT * FROM (
SELECT c.nome nome_musica,
CASE
	WHEN c.nome LIKE '%Streets' THEN REPLACE(c.nome, 'Streets', 'Code Review')
	WHEN c.nome LIKE '%Her Own'THEN REPLACE(c.nome, 'Her Own', 'Trybe')
	WHEN c.nome LIKE '%Inner Fire' THEN REPLACE(c.nome, 'Inner Fire', 'Project')
	WHEN c.nome LIKE '%Silly' THEN REPLACE(c.nome, 'Silly', 'Nice')
	WHEN c.nome LIKE '%Circus' THEN REPLACE(c.nome, 'Circus', 'Pull Request')
	ELSE NULL
END novo_nome
FROM SpotifyClone.cancoes c
) nova_tabela
WHERE novo_nome IS NOT NULL
ORDER BY novo_nome ASC;
