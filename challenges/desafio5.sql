SELECT
  c.nome_cancao AS cancao,
  COUNT(hr.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON c.cancao_id = hr.cancao_id
GROUP BY c.nome_cancao
ORDER BY reproducoes DESC, cancao
LIMIT 2;