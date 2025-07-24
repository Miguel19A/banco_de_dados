CREATE DATABASE db_curso_da_minha_vida;

USE db_curso_da_minha_vida;

CREATE TABLE tb_categorias (
id INT AUTO_INCREMENT,
nome_categoria VARCHAR(60) NOT NULL,
area_de_conhecimento VARCHAR(80),
descricao TEXT
);

CREATE TABLE tb_cursos (
id INT AUTO_INCREMENT,
nome VARCHAR(120) NOT NULL,
descricao TEXT,
preco DECIMAL(6, 2),
carga_horario INT,
ativo BOOLEAN,
categoria_id INT,
FOREIGN KEY(categoria_id) REFERENCES tb_categorias(id),
PRIMARY KEY(id)
);

INSERT INTO tb_categorias (nome_categoria, area_de_conhecimento, descricao) VALUES
('Programação', 'Tecnologia', 'Cursos de linguagens de programação'),
('Design', 'Artes Visuais', 'Cursos de design gráfico e UI/UX'),
('Negócios', 'Administração', 'Cursos sobre empreendedorismo e gestão'),
('Idiomas', 'Linguística', 'Cursos de idiomas estrangeiros'),
('Marketing', 'Comunicação', 'Cursos de marketing e publicidade');


INSERT INTO tb_cursos (nome, descricao, preco, carga_horario, ativo, categoria_id) VALUES
('Curso de Java', 'Aprenda Java do básico ao avançado', 799.90, 60, TRUE, 1),
('Curso de Photoshop', 'Domine ferramentas de edição de imagem', 499.00, 40, TRUE, 2),
('Curso de Inglês', 'Inglês para iniciantes', 420.00, 80, TRUE, 4),
('Curso de JavaScript', 'Desenvolvimento web com JavaScript', 700.00, 45, TRUE, 1),
('Curso de Marketing Digital', 'Técnicas de SEO e tráfego pago', 890.00, 55, TRUE, 5),
('Curso de Francês', 'Francês básico para iniciantes', 550.00, 70, TRUE, 4);

SELECT * FROM tb_cursos WHERE preco > 500;

SELECT * FROM tb_cursos WHERE preco BETWEEN 600 AND 1000;

SELECT * FROM tb_cursos WHERE nome LIKE "%J%";

SELECT c.id, c.nome AS nome_curso, c.preco, c.carga_horaria, cat.nome_categoria
FROM tb_cursos AS c
INNER JOIN tb_categorias AS cat
ON c.categoria_id = cat.id;


SELECT c.id, c.nome AS nome_curso, c.preco, c.carga_horaria, cat.nome_categoria
FROM tb_cursos AS c
INNER JOIN tb_categorias AS cat
ON c.categoria_id = cat.id
WHERE cat.nome_categoria = 'Programação';






