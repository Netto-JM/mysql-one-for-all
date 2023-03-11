-- Descomente e altere as linhas abaixo:

DROP DATABASE IF EXISTS SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;
CREATE TABLE SpotifyClone.artista (
  id INT NOT NULL AUTO_INCREMENT,
  nome VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.plano(
  plano_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  plano VARCHAR(255) NOT NULL,
  valor_plano DECIMAL(5,2) NOT NULL
) engine = InnoDB;
INSERT INTO SpotifyClone.artista (nome) VALUES 
  ('Beyoncé'),
  ('Queen'),
  ('Elis Regina'),
  ('Baco Exu do Blues'),
  ('Blind Guardian'),
  ('Nina Simone');
INSERT INTO SpotifyClone.plano (plano, valor_plano)
VALUES 
  ('gratuito', 0),
  ('universitário', 5.99),
  ('pessoal', 6.99),
  ('familiar', 7.99);
