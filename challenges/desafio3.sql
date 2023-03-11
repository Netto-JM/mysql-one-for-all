SELECT
  pu.nome_pessoa_usuaria AS pessoa_usuaria,
  COUNT(hr.cancao_id) AS musicas_ouvidas,
  ROUND(SUM(c.duracao_segundos) / 60, 2) AS total_minutos
FROM SpotifyClone.pessoa_usuaria AS pu
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON pu.pessoa_usuaria_id = hr.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancao AS c
ON c.cancao_id = hr.cancao_id
GROUP BY pu.nome_pessoa_usuaria
ORDER BY pu.nome_pessoa_usuaria;