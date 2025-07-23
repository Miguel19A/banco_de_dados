CREATE DATABASE  empresa_rh;
USE empresa_rh;
CREATE TABLE colaboradores(
    id BIGINT AUTO_INCREMENT,
    nome VARCHAR(100) NOT NULL,
    cargo VARCHAR(30),
    salario DECIMAL(10, 2),
    data_admissao DATE,
    primary key(id)
);

INSERT INTO colaboradores (nome, cargo, salario, data_admissao)
VALUES ("Miguel Júnior Adão", "Desenvolvedor Fullstack", 2500, "02/08/2024");
INSERT INTO colaboradores (nome, cargo, salario, data_admissao)
VALUES ("Lucas Oliveira", 'QA', 2300, "01/03/2024");
INSERT INTO colaboradores (nome, cargo, salario, data_admissao)
VALUES ("Pedro Henriques", "Estagiário", 1800, "03/04/2024");

SELECT * FROM colaboradores 
WHERE salario > 2000;

SELECT * FROM colaboradores
WHERE salario < 2000;

UPDATE colaboradores 
SET salario = 2000.00
WHERE nome = "Pedro Henriques";





