USE CADASTRO;

CREATE TABLE GAFANHOTO_ASSISTE_CURSO(
  ID INT auto_increment,
  DATA DATE,
  IDGAFANHOTO INT,
  IDCURSO INT,
  PRIMARY KEY(ID),
  FOREIGN KEY(IDGAFANHOTO) REFERENCES GAFANHOTOS(ID),
  FOREIGN KEY(IDCURSO) REFERENCES CURSOS(IDCURSO)
) DEFAULT CHARSET = UTF8;

INSERT INTO gafanhoto_assiste_curso VALUES
(DEFAULT, '2014-03-01', '1', '2');

SELECT G.NOME, C.NOME FROM GAFANHOTOS G
JOIN gafanhoto_assiste_curso a
ON G.ID = A.IDGAFANHOTO
JOIN CURSOS C
ON C.IDCURSO = A.IDCURSO
ORDER BY G.NOME;