DROP DATABASE IF EXISTS SpotifyClone;
CREATE SCHEMA SpotifyClone;
CREATE DATABASE IF NOT EXISTS SpotifyClone;

CREATE TABLE SpotifyClone.plano (
	id_plano INT PRIMARY KEY AUTO_INCREMENT,
	plano VARCHAR(255),
	valor_plano DECIMAL(3,2)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.usuario(
	id_usuario INT PRIMARY KEY AUTO_INCREMENT,
	usuario VARCHAR(255),
	idade INT,
	data_assinatura DATE,
	id_plano INT, 
    FOREIGN KEY (id_plano) REFERENCES plano(id_plano)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.artista (
	id_artista INT PRIMARY KEY AUTO_INCREMENT,
    artista VARCHAR(255)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.album (
	id_album INT PRIMARY KEY AUTO_INCREMENT,
    album VARCHAR(255),
    ano_lancamento YEAR,
    id_artista INT, 
    FOREIGN KEY (id_artista) REFERENCES artista(id_artista) 
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.cancoes (
	id_cancao INT PRIMARY KEY AUTO_INCREMENT,
    cancoes VARCHAR(255),
	duracao_segundos INT,
    id_album INT,
    FOREIGN KEY (id_album) REFERENCES album(id_album)
 ) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.historico (
    id_cancao INT,
    id_usuario INT,
    data_reproducao DATETIME,
    CONSTRAINT PRIMARY KEY (id_cancao, id_usuario),
    FOREIGN KEY (id_cancao) REFERENCES cancoes(id_cancao),
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario)
) ENGINE=InnoDB;

CREATE TABLE SpotifyClone.seguindo_artistas (
	id_artista INT,
    id_usuario INT,
    CONSTRAINT PRIMARY KEY (id_artista, id_usuario),
    FOREIGN KEY (id_artista) REFERENCES artista(id_artista),
    FOREIGN KEY (id_usuario) REFERENCES usuario(id_usuario)
) ENGINE=InnoDB;

INSERT INTO SpotifyClone.plano(plano, valor_plano)
	VALUES
    ('gratuito', 0.00), 
    ('universitario', 5.99),
    ('pessoal', 6.99),
    ('familiar', 7.99);
    
INSERT INTO SpotifyClone.usuario(usuario, idade, data_assinatura, id_plano)
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

INSERT INTO SpotifyClone.artista(artista)
	VALUES
	('Beyonce'),
    ('Queen'),
    ('Elis Regina'),
    ('Baco Exu do Blues'),
    ('Blind Guardian'),
    ('Nina Simone');
    
INSERT INTO SpotifyClone.album(album, ano_lancamento, id_artista)
	VALUES
    ('Renaissance', 2022, 1),
    ('Jazz', 1978, 2),
    ('Hot Space', 1982, 2),
    ('Falso Brilhante', 1998, 3),
    ('Vento de Maio', 2001, 3),
    ('QVVJFA?', 2003, 4),
    ('Somewhere Far Beyond', 2007, 5),
    ('I Put A Spell On You', 2012, 6);
    
INSERT INTO SpotifyClone.cancoes(cancoes, id_album, duracao_segundos)
	VALUES
    ('BREAK MY SOUL', 1, 279),
    ('VIRGO’S GROOVE', 1, 369),
    ('ALIEN SUPERSTAR', 1, 116),
    ('Don’t Stop Me Now', 2, 203),
    ('Under Pressure', 3, 152),
    ('Como Nossos Pais', 4, 105),
    ('O Medo de Amar é o Medo de Ser Livre', 5, 207),
    ('Samba em Paris', 6, 267),
    ('The Bard’s Song', 7, 244),
    ('Feeling Good', 8, 100);
    
INSERT INTO SpotifyClone.historico(id_cancao, id_usuario, data_reproducao)
    VALUES
    ( 8, 1, "2022-02-28 10:45:55"),
    ( 2, 1, "2020-05-02 05:30:35"),
    ( 10, 1, "2020-03-06 11:22:33"),
    ( 10, 2, "2022-08-05 08:05:17"),
    ( 7, 2, "2020-01-02 07:40:33"),
    ( 10, 3, "2020-11-13 16:55:13"),
    ( 2, 3, "2020-12-05 18:38:30"),
    ( 8, 4, "2021-08-15 17:10:10"),
    ( 8, 5, "2022-01-09 01:44:33"),
    ( 5, 5, "2020-08-06 15:23:43"),
    ( 7, 6, "2017-01-24 00:31:17"),
    ( 1, 6, "2017-10-12 12:35:20"),
    ( 4, 7, "2011-12-15 22:30:49"),
    ( 4, 8, "2012-03-17 14:56:41"),
    ( 9, 9, "2022-02-24 21:14:22"),
    ( 3, 10, "2015-12-13 08:30:22");
        
INSERT INTO SpotifyClone.seguindo_artistas(id_artista, id_usuario)
	VALUES 
    (1, 1),
    (2, 1),
    (3, 1),
    (1, 2),
    (3, 2),
    (2, 3),
    (4, 4),
    (5, 5),
    (6, 5),
    (6, 6),
    (1, 6),
    (6, 7),
    (3, 9),
    (2, 10);


