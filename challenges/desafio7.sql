SELECT 
  a.nome AS "artista",
  ab.album AS "album",
  COUNT(sa.pessoa_usuaria_id) AS "pessoas_seguidoras"
FROM SpotifyClone.album AS ab
INNER JOIN SpotifyClone.artista AS a
ON ab.artista_id = a.artista_id
INNER JOIN SpotifyClone.seguindo_artista AS sa
ON a.artista_id = sa.artista_id
GROUP BY a.nome, ab.album
ORDER BY pessoas_seguidoras DESC, artista, album;