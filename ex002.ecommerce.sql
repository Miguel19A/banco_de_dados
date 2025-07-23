CREATE DATABASE ecommerce;

Use ecommerce;

CREATE TABLE produtos(
  id BIGINT AUTO_INCREMENT,
  nome VARCHAR(50) NOT NULL,
  descricao VARCHAR(300),
  preco DECIMAL(10, 2),
  categoria VARCHAR(20),
  primary key(id)
);

INSERT INTO produtos (nome, descricao, preco, categoria)VALUES 
("Celular", "Samsung Galax 8", 2300, "Eletronico"),
("Notebook", "Mac - 6", 5000, "Eletronico"),
("Cadeira Gamer", "Cadeira ergonômica para jogos e escritório", 950.00, "Móveis"),
("Mouse Wireless", "Mouse sem fio com 6 botões", 120.00, "Acessórios"),
("Teclado Mecânico", "Teclado RGB com switches azuis", 460.00, "Acessórios"),
("Camisa Polo", "Camisa confortável de algodão", 89.90, "Vestuário"),
("Monitor 24", "Monitor Full HD 24 polegadas", 750.00, "Eletrônicos"),
("Fone de Ouvido", "Headset com cancelamento de ruído", 320.00, "Áudio");

SELECT * FROM produtos
WHERE preco > 500;

SELECT * FROM produtos
WHERE preco < 500;

UPDATE produtos

SET preco = 200.45
WHERE nome = "Cadeira Gamer";



