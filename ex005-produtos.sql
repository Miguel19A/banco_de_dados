CREATE DATABASE db_cidade_das_carnes;

USE db_cidades_das_carnes;


CREATE TABLE tb_categorias(
id INT AUTO_INCREMENT,
nome_categoria VARCHAR(60) NOT NULL,
tipo_carne VARCHAR(60),
descricao TEXT
);

CREATE TABLE tb_produtos (
 id INT AUTO_INCREMENT,
 nome VARCHAR(100) NOT NULL,
 descricao TEXT,
 preco DECIMAL(6,2),
 peso_kg DECIMAL(4,2),
 disponivel BOOLEAN,
 categoria_id INT,
 FOREIGN KEY (categoria_id) REFERENCES tb_categorias(id),
 PRIMARY KEY(id)
);

INSERT INTO tb_categorias(nome_categoria, tipo_carne, descrecicao) VALUES
('Bovinos', 'Carne Vermelha', 'Carnes de boi e derivados'),
('Suínos', 'Carne Suína', 'Carnes de porco e cortes especiais'),
('Aves', 'Carne Branca', 'Carnes de frango e peru'),
('Exóticas', 'Outros', 'Carnes menos convencionais'),
('Frios', 'Processados', 'Presuntos, mortadelas e afins');

INSERT INTO tb_produtos (nome, descricao, preco, peso_kg, disponivel, categoria_id) VALUES
('Picanha Bovina', 'Corte nobre de carne bovina', 129.90, 1.00, TRUE, 1),
('Costela Suína', 'Costela de porco temperada', 68.00, 1.20, TRUE, 2),
('Frango Inteiro', 'Frango congelado inteiro', 45.00, 2.50, TRUE, 3),
('Presunto Cozido', 'Presunto fatiado para lanche', 32.50, 0.50, TRUE, 5),
('Coração de Frango', 'Miúdo popular para churrasco', 55.00, 1.00, TRUE, 3),
('Linguiça Toscana', 'Linguiça de porco temperada', 47.90, 1.00, TRUE, 2),
('Carne de Jacaré', 'Carne exótica nobre', 140.00, 0.80, TRUE, 4),
('Contra Filé', 'Corte tradicional bovino', 75.00, 1.10, TRUE, 1);

SELECT * FROM tb_produtos WHERE preco > 50;

SELECT * FROM tb_produtos WHERE preco BETWEEN 50 AND 150;

SELECT * FROM tb_produtos WHERE nome LIKE '%C%';

SELECT p.id, p.nome AS nome_produto, p.preco, c.nome_categoria
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
ON p.categoria_id = c.id;


SELECT p.id, p.nome AS nome_produto, p.preco, c.nome_categoria
FROM tb_produtos AS p
INNER JOIN tb_categorias AS c
ON p.categoria_id = c.id
WHERE c.nome_categoria = 'Aves';






