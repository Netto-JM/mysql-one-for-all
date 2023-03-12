SELECT 
  a.nome AS "artista",
  ab.album AS "album"
FROM SpotifyClone.album AS ab
INNER JOIN SpotifyClone.artista AS a
ON ab.artista_id = a.artista_id
GROUP BY a.nome, ab.album
HAVING a.nome = 'Elis Regina';