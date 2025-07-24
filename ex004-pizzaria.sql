CREATE DATABASE db_pizzaria_legal;

Use db_pizzaria_legal;

CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
nome_categoria VARCHAR(100) NOT NULL,
descricao TEXT,
 PRIMARY KEY(id)
);


CREATE TABLE tb_pizzas(
id INT AUTO_INCREMENT,
nome VARCHAR(200) NOT NULL,
descricao TEXT,
preco DECIMAL(6, 2),
disponivel BOOLEAN,
categoria_id INT,
FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id),
primary key(id)
);

INSERT INTO  tb_categorias(nome_categoria, descricao) VALUES
('Doce', 'Pizzas com recheios doces como chocolate e frutas'),
('Salgada', 'Pizzas com recheios tradicionais salgados'),
('Vegetariana', 'Pizzas sem ingredientes de origem animal'),
('Especial', 'Sabores diferenciados e gourmet'),
('Tradicional', 'Sabores clássicos das pizzarias brasileiras');

INSERT INTO tb_pizzas(nome, descricao, preco, disponivel,categoria_id) VALUES
('Calabresa', 'Pizza de calabresa com cebola e azeitonas', 48.00, TRUE, 2),
('Margherita', 'Molho de tomate, mussarela e manjericão', 42.00, TRUE, 5),
('Quatro Queijos', 'Mussarela, provolone, gorgonzola e parmesão', 55.00, TRUE, 4),
('Chocolate com Morango', 'Chocolate ao leite com cobertura de morango', 58.00, TRUE, 1),
('Frango com Catupiry', 'Frango desfiado com catupiry e milho', 53.00, TRUE, 2),
('Brócolis com Alho', 'Brócolis temperado com alho e azeite', 45.00, TRUE, 3),
('Banana com Canela', 'Banana fatiada com canela e açúcar', 39.00, TRUE, 1),
('Portuguesa', 'Presunto, ovos, cebola, azeitonas e ervilhas', 50.00, TRUE, 5);


SELECT *FROM tb_pizzas WHERE preco > 45;

SELECT * FROM tb_pizzas WHERE preco BETWEEN 50 AND 100;

SELECT * FROM tb_pizzas WHERE nome LIKE "%M%";

SELECT p.id, p.nome AS nome_pizza, p.preco, c.nome_categoria
FROM tb_pizzas AS p
INNER JOIN tb_categorias AS c
ON p.categoria_id = c.id;


SELECT p.id, p.nome AS nome_pizza, p.preco, c.nome_categoria
FROM tb_pizzas AS p
INNER JOIN tb_categorias AS c
ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Banana com Canela';




