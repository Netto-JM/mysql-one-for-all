SELECT
  pu.nome_pessoa_usuaria AS pessoa_usuaria,
  IF(YEAR(MAX(hr.data_reproducao)) >= 2021, 'Ativa', 'Inativa') AS status_pessoa_usuaria
FROM SpotifyClone.pessoa_usuaria AS pu
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON pu.pessoa_usuaria_id = hr.pessoa_usuaria_id
GROUP BY pu.nome_pessoa_usuaria
ORDER BY pu.nome_pessoa_usuaria;