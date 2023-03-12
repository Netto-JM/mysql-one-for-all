SELECT 
  COUNT(hr.cancao_id) AS "musicas_no_historico"
FROM SpotifyClone.pessoa_usuaria AS pu
INNER JOIN SpotifyClone.historico_reproducao AS hr
ON pu.pessoa_usuaria_id = hr.pessoa_usuaria_id
GROUP BY pu.nome_pessoa_usuaria
HAVING pu.nome_pessoa_usuaria = 'Barbara Liskov';
