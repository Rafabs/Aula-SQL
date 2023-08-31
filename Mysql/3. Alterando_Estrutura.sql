DESCRIBE pessoas;

ALTER TABLE pessoas
ADD COLUMN profissao varchar(10) AFTER nome;

ALTER TABLE pessoas
ADD COLUMN codigo int FIRST;

ALTER TABLE pessoas
DROP COLUMN codigo;

ALTER TABLE pessoas
MODIFY COLUMN profissao varchar(20) NOT NULL DEFAULT '';

ALTER TABLE pessoas
CHANGE COLUMN profissao prof varchar(20) NOT NULL default '';

ALTER TABLE pessoas
RENAME TO gafanhotos;

SELECT * FROM pessoas;

CREATE TABLE IF NOT exists cursos(
nome varchar(30) NOT NULL unique,
descricao text,
carga int unsigned,
totalaulas int unsigned,
ano year default '2016'
)DEFAULT CHARSET = utf8;

ALTER TABLE cursos
ADD COLUMN idcurso int FIRST;

ALTER TABLE cursos
ADD PRIMARY KEY (idcurso);

DESCRIBE cursos;

SELECT * FROM cursos;

CREATE TABLE IF NOT exists alunos(
nome varchar(30) NOT NULL unique,
descricao text,
idade int unsigned
)DEFAULT CHARSET = utf8;

DROP TABLE IF exists alunos;
