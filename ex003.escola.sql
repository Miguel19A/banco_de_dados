CREATE DATABASE registro_escola;
Use registro_escola;

CREATE TABLE estudantes(
 id BIGINT AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 idade INT,
 serie VARCHAR(20),
 nota_final DECIMAL(5,2),
 situacao VARCHAR(18),
 PRIMARY KEY (id)
   
);


INSERT INTO  estudantes (nome, idade, serie, nota_final, situacao) VALUES
("Júlia Mendes",  12, "7º Ano", 8.5, "Aprovada!"),
("Crisitina Silva", 13, "8º Ano", 6.8, "Aprovada!"),
("Larrisa Costa", 14, "9º Ano", 7.8, "Aprovada!"),
("Pedro João", 14, "9º Ano", 9, "Aprovado!"),
("Joaquim Fernando", 15, "1º Ano", 5.6, "Reprovado!"),
("Fernando Pedro", 15, "1º Ano", 7.8, "Aprovado!"),
("Vinícius Rocha", 13, "8º Ano", 6.5, "Recuperação!"),
("Marina Dias", 12, '7º Ano', 8.9, "Aprovado!");

SELECT * FROM estudantes

WHERE nota_final > 7;

SELECT * FROM estudantes

WHERE nota_final < 7;

UPDATE estudadentes
SET nota_final = 7, situtacao = "Aprovado!"
WHERE nome = "Pedro joão";



