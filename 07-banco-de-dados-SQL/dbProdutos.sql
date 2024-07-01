-- Apagando, criando e usando a database.
drop database dbProdutos;

create database dbProdutos;

use dbProdutos;

-- Criando tabela produtos
CREATE TABLE produtos (
    codigo INT,
    nome VARCHAR(50),
    tipo VARCHAR(25),
    quantidade INT,
    valor DECIMAL(10, 2)
);

-- Inserindo dados na tabela produtos.
INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (1, 'IMPRESSORA', 'INFORMATICA', 200, 600.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (2, 'CAMERA DIGITAL', 'DIGITAIS', 300, 400.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (3, 'DVDPLAYER', 'ELETRONICOS', 250, 500.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (4, 'MONITOR', 'INFORMATICA', 400, 900.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (5, 'TELEVISOR', 'ELETRONICOS', 350, 650.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (6, 'FILMADORA DIGITAL', 'DIGITAIS', 500, 700.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (7, 'CELULAR', 'TELEFONE', 450, 850.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (8, 'TECLADO', 'INFORMATICA', 300, 450.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (9, 'VIDEOCASSETE', 'ELETRONICOS', 200, 300.00);

INSERT INTO
    produtos (codigo, nome, tipo, quantidade, valor)
VALUES
    (10, 'MOUSE', 'INFORMATICA', 400, 60.00);

-- Fazendo pesquisas
SELECT
    *
FROM
    produtos;

SELECT
    *
FROM
    produtos
WHERE
    tipo = 'INFORMATICA';

SELECT
    DISTINCT tipo
FROM
    produtos
ORDER BY
    tipo;

-- seleciona produtos onde o valor é maior que 600 e a quantidade seja maior de 350.
SELECT
    *
FROM
    produtos
WHERE
    valor > 600
    AND quantidade > 350;

SELECT
    *
FROM
    produtos
WHERE
    tipo = 'INFORMATICA'
    OR tipo = 'DIGITAIS'
    AND valor > 500;

-- Seleciona todos de produtos e filtra o tipo que começa com a letra "i".
SELECT
    *
FROM
    produtos
WHERE
    tipo LIKE 'i%';

-- Seleciona todos de produtos e filtra o tipo que termina com a letra "s".
SELECT
    *
FROM
    produtos
WHERE
    tipo LIKE '%s';

-- Selectiona todos de produtos e filtra o tipo que contenha a letra "s".
SELECT
    *
FROM
    produtos
WHERE
    tipo LIKE '%s%';

-- Seleciona todos produtos onde o tipo possui letra 'a' E possui e termina com 's'.
SELECT
    *
FROM
    produtos
WHERE
    tipo like '%a%'
    AND tipo like '%s';

-- Seleciona todos produtos onde o tipo possui letra 'a' OU possui e termina com 's'.
SELECT
    *
FROM
    produtos
WHERE
    tipo like '%a%'
    OR tipo like '%s';

-- Seleciona todos produtos onde o tipo contenha 'o' E o valor é maior ou igual a 600.
SELECT
    *
FROM
    produtos
WHERE
    tipo LIKE '%o%'
    AND valor <= 600;

-- Seleciona todos produtos onde o tipo contenha 'o' OU o valor é maior ou igual a 600.
SELECT
    *
FROM
    produtos
WHERE
    tipo LIKE '%o%'
    OR valor <= 600;

-- Seleciona todos produtos onde o tipo contenha 'informatica' OU tipo contenha 'telefone'.
SELECT
    *
FROM
    produtos
WHERE
    tipo = 'INFORMATICA'
    OR tipo = 'TELEFONE';

-- Seleciona todos produtos onde o tipo contenha 'informatica e telefone' E o valor é maior ou igual a '600'.
SELECT
    *
FROM
    produtos
WHERE
    tipo IN ('INFORMATICA', 'TELEFONE')
    AND valor >= 600;

-- Seleciona todos produtos onde o tipo não contenha 'informatica e telefone'.
SELECT
    *
FROM
    produtos
WHERE
    NOT tipo IN ('INFORMATICA', 'TELEFONE');

-- Seleciona todos produtos onde o valor é maior que '100' E o valor é menor que '300'.
SELECT
    *
FROM
    produtos
WHERE
    valor >= 100
    AND valor <= 300;

-- Seleciona todos produtos onde o valor é maior que '400' E o valor é menor que '700'.
SELECT
    *
FROM
    produtos
WHERE
    valor BETWEEN 400
    AND 700;

-- Seleciona todos produtos onde o valor é maior que '100' E o valor é menor que '300'.
SELECT
    *
FROM
    produtos
WHERE
    valor BETWEEN 100
    AND 300;

-- Seleciona todos produtos onde o valor NÃO é maior que '100' E o valor NÃO é menor que '300'.
SELECT
    *
FROM
    produtos
WHERE
    valor NOT BETWEEN 100
    AND 300;

-- ----------------------------------
-- ---------- EXERCICIOS ------------
-- ----------------------------------
-- 1. Aumente em 12% o valor dos produtos cujos nomes iniciem com a letra 'F'.
UPDATE
    produtos
SET
    valor = valor * 1.12
WHERE
    nome LIKE 'F%';

SELECT
    *
FROM
    produtos;

-- 2. Aumentar em 50 unidades todos os produtos cujo valor seja maior que 400 e inferior a 600.
UPDATE
    produtos
SET
    quantidade = quantidade + 50
WHERE
    valor BETWEEN 400
    AND 600;

SELECT
    *
FROM
    Produtos;

-- 3. Aplicar um desconto de 50% (*0.5) em todos os produtos que as unidades de estoque sejam maiores que 300.
UPDATE
    produtos
SET
    valor = valor * 0.5
WHERE
    quantidade > 300;

SELECT
    *
FROM
    produtos;

-- 4. Exiba o produto de CODIGO = 4.
SELECT
    *
FROM
    produtos
WHERE
    codigo = 4;

-- 5. Exibir todos os produtos que não tenham a letra 'Y'.
SELECT
    *
FROM
    produtos
WHERE
    nome NOT LIKE '%Y%';

-- 6. Exibir todos os produtos que se iniciem com nome 'MO' e tenham como tipo as letras 'MA'.
SELECT
    *
FROM
    produtos
WHERE
    nome LIKE 'MO%'
    and tipo LIKE '%MA%';

-------------------------------
--------- Aula 11-06 ----------
-------------------------------
-- Pesquisar tudo da tabela produtos e ordernar por tipo
SELECT
    *
FROM
    produtos
ORDER BY
    tipo;

-- Pesquisar tudo da tabela produtos e ordernar o tipo em ordem alfabetica.
SELECT
    *
FROM
    produtos
ORDER BY
    tipo DESC;

-- Pesquisar por tipo e em ordem alfabetica
SELECT
    DISTINCT TIPO
FROM
    produtos
ORDER BY
    tipo ASC;

-- Pesquisar todos da tabela produto, ordernar por valor e ter o limite em 5.
SELECT
    *
FROM
    produtos
ORDER BY
    valor
LIMIT
    5;

-------------------------
---- Laboratório P53 ----
-------------------------
-- 1. Escreva uma consulta que exiba os dados da tabela PRODUTOS na forma crescente pelo campo NOME.
SELECT
    *
FROM
    produtos
ORDER BY
    nome ASC;

-- 2. Escreva uma consulta que exiba o NOME dos produtos ordenado de forma decrescente e o VALOR de forma crescente.
SELECT
    nome,
    valor
FROM
    produtos
ORDER BY
    nome DESC,
    valor ASC;

-- 3. Escreva uma consulta que exiba os três produtos mais caros.
SELECT
    nome
FROM
    produtos
ORDER BY
    valor DESC
limit
    3;

-- 4. Escreva uma consulta que exiba o VALOR do produto mais barato.
SELECT
    *
FROM
    produtos
ORDER BY
    valor DESC
LIMIT
    1;

-- Somar todos produtos
SELECT
    SUM(quantidade) AS "qtd total"
FROM
    produtos;

-- Listar a qtd de produtos
SELECT
    COUNT(*) AS "Total Produtos"
from
    produtos;

-- Listar o maior valor
SELECT
    MAX(valor) AS "Maior valor"
FROM
    produtos;

-- Listar o menor valor
SELECT
    MIN(valor) AS "Menor valor"
FROM
    produtos;

--Listar a media de valores
SELECT
    AVG(valor) AS "Media de valores"
FROM
    produtos;