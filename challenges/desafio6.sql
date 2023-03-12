SELECT 
  MIN(p.valor_plano) AS "faturamento_minimo",
  MAX(p.valor_plano) AS "faturamento_maximo",
  ROUND(AVG(p.valor_plano), 2) AS "faturamento_medio",
  SUM(p.valor_plano) AS "faturamento_total"
FROM SpotifyClone.plano AS p
INNER JOIN SpotifyClone.pessoa_usuaria AS pu
ON p.plano_id = pu.plano_id;