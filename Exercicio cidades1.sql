CREATE TABLE estrelas.cidade (

NOME varchar(50) not null,
CEP int primary key,
NUMERO_HABITANTES int not null default 0,
CAPITAL boolean not null,
ESTADO varchar(2) not null,
RENDA_PER_CAPITA decimal(10, 2),
DATA_FUNDACAO date,

CONSTRAINT estado_fk
FOREIGN KEY (estado)
REFERENCES estado (sigla)
);

INSERT INTO estrelas.cidade
VALUES
('Viamão', 89886908, 154987, 0, 'RS',346879.08, '1835-06-04'),
('Parnaíba', 98746575, 149348, 0, 'PI', 13534.25, '1822-09-07'),
('Palmas', 75636328, 217056, 1, 'TO', 28974.17, '1989-05-20'),
('Embu das Artes', 58712230, 259053, 0, 'SP', 37832.19, '1959-02-18'),
('Florianópolis', 12468359, 249477, 1, 'SC', 40162.02, '1673-03-23');

CREATE TABLE esteelas.estado (
SIGLA VARCHAR(2) PRIMARY KEY,
NOME VARCHAR(50) NOT NULL
);

INSERT INTO estrelas.estado
VALUES
('SP',' São Paulo'),
('RS','Rio Grande do Sul'),
('PI','Piauí'),
('SC','Santa Catarina'),
('TO','Tocantins');

ALTER TABLE estrelas.estado
ADD column REGIAO VARCHAR(50) NOT NULL;
