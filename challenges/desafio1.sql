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
CREATE TABLE SpotifyClone.pessoa_usuaria (
  pessoa_usuaria_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  nome_pessoa_usuaria VARCHAR(255) NOT NULL,
  idade INT NOT NULL,
  data_assinatura DATE NOT NULL,
  plano_id INT NOT NULL,
  FOREIGN KEY (plano_id) REFERENCES plano(plano_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.album (
  album_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album VARCHAR(255) NOT NULL,
  artista_id INT NOT NULL,
  ano_lancamento INT NOT NULL,
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.cancao (
  cancao_id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
  album_id INT NOT NULL,
  nome_cancao VARCHAR(255) NOT NULL,
  duracao_segundos INT NOT NULL,
  FOREIGN KEY (album_id) REFERENCES album(album_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.seguindo_artista (
  pessoa_usuaria_id INT NOT NULL,
  artista_id INT NOT NULL,
  PRIMARY KEY (pessoa_usuaria_id, artista_id),
  FOREIGN KEY (pessoa_usuaria_id) REFERENCES pessoa_usuaria(pessoa_usuaria_id),
  FOREIGN KEY (artista_id) REFERENCES artista(artista_id)
) engine = InnoDB;
CREATE TABLE SpotifyClone.historico_reproducao (
  pessoa_usuaria_id INT NOT NULL,
  cancao_id INT NOT NULL,
  data_reproducao DATETIME NOT NULL,
  PRIMARY KEY (pessoa_usuaria_id, cancao_id),
  FOREIGN KEY (pessoa_usuaria_id) REFERENCES pessoa_usuaria(pessoa_usuaria_id),
  FOREIGN KEY (cancao_id) REFERENCES cancao(cancao_id)
) engine = InnoDB;
INSERT INTO SpotifyClone.artista (nome) 
VALUES 
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
INSERT INTO SpotifyClone.pessoa_usuaria (nome_pessoa_usuaria, idade, data_assinatura, plano_id)
VALUES 
  ('Barbara Liskov', 82, '2019-10-20', 1),
  ('Robert Cecil Martin', 58, '2017-01-06', 1),
  ('Ada Lovelace', 37, '2017-12-30', 4),
  ('Martin Fowler', 46, '2017-01-17', 4),
  ('Sandi Metz', 58, '2018-04-29', 4),
  ('Paulo Freire', 19, '2018-02-14', 2),
  ('Bell Hooks', 26, '2018-01-05', 2),
  ('Christopher Alexander', 85, '2019-06-05', 3),
  ('Judith Butler', 45, '2020-05-13', 3),
  ('Jorge Amado', 58, '2017-02-17', 3);
INSERT INTO SpotifyClone.album (album, artista_id, ano_lancamento)
VALUES 
  ('Renaissance', 1, 2022),
  ('Jazz', 2, 1978),
  ('Hot Space', 2, 1982),
  ('Falso Brilhante', 4, 1998),
  ('Vento de Maio', 4, 2001),
  ('QVVJFA?', 5, 2003),
  ('Somewhere Far Beyond', 6, 2007),
  ('I Put A Spell On You', 7, 2012);
INSERT INTO SpotifyClone.cancao (album_id, nome_cancao, duracao_segundos)
VALUES 
  (1, 'BREAK MY SOUL', 279),
  (1, 'VIRGO`S GROOVE', 369),
  (1, 'ALIEN SUPERSTAR', 116),
  (2, 'Dont`t Stop Me Now', 203),
  (3, 'Under Pressure', 152),
  (4, 'Como Nossos Pais', 105),
  (5, 'O Medo de Amar é o Medo de Ser Livre', 207),
  (6, 'Samba em Paris', 267),
  (7, 'The Bard`s Song', 244),
  (8, 'Feeling Good', 100);
INSERT INTO SpotifyClone.seguindo_artista (pessoa_usuaria_id, artista_id)
VALUES 
  (1, 1),
  (1, 2),
  (1, 3),
  (2, 1),
  (2, 3),
  (3, 2),
  (4, 4),
  (5, 5),
  (5, 6),
  (6, 6),
  (6, 1),
  (7, 6),
  (9, 3),
  (10, 2);
INSERT INTO SpotifyClone.historico_reproducao (pessoa_usuaria_id, cancao_id, data_reproducao) 
VALUES
  (1, 8, '2022-02-28 10:45:55'),
  (1, 2, '2020-05-02 05:30:35'),
  (1, 10, '2020-03-06 11:22:33'),
  (2, 10, '2022-08-05 08:05:17'),
  (2, 7, '2020-01-02 07:40:33'),
  (3, 10, '2020-11-13 16:55:13'),
  (3, 2, '2020-12-05 18:38:30'),
  (4, 8, '2021-08-15 17:10:10'),
  (5, 8, '2022-01-09 01:44:33'),
  (5, 5, '2020-08-06 15:23:43'),
  (6, 7, '2017-01-24 00:31:17'),
  (6, 1, '2017-10-12 12:35:20'),
  (7, 4, '2011-12-15 22:30:49'),
  (8, 4, '2012-03-17 14:56:41'),
  (9, 9, '2022-02-24 21:14:22'),
  (10, 3, '2015-12-13 08:30:22');