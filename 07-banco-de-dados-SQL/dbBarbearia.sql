drop database dbBarbearia;
 
create database dbBarbearia;
 
use dbBarbearia;
 
create table tbProdutos(
codProd int not null auto_increment,
descricao varchar(100),
marca varchar(50),
preco decimal(9,2),
primary key(codProd)
);
 
insert into tbProdutos(descricao,marca,preco)
    values('Shampoo','Nivea', 30.0);
insert into tbProdutos(descricao,marca,preco)
    values('Sabonete','Phebo', 50.0);
insert into tbProdutos(descricao,marca, preco)
    values('Creme de barbear','Barbers', 70.0);
insert into tbProdutos(descricao,marca,preco)
    values('Gel para cabelos','Salome', 25.0);
insert into tbProdutos(descricao, marca, preco)
    values('Escova de Dentes', 'colgate', 12.0);
 
select * from tbProdutos;
 
-- delete from tbProdutos where codProd = 2;
 
select * from tbProdutos;
 
select codProd as 'Código',
    descricao as 'Descrição',
    marca as 'Marca',
    preco as 'Preço' from tbProdutos;

SELECT codProd as 'Código',
 descricao as 'Descrição',
 'Promoção' as 'Promo',
 Marca as 'Marca',
'Sim' as 'Vendido',
 preco as 'Preço' from tbprodutos; 

-- Aplicando aumento
UPDATE tbProdutos SET preco = preco * 1.10 WHERE codProd = 2;
SELECT * FROM tbProdutos;

UPDATE tbProdutos SET preco = preco * 1.10;
SELECT * FROM tbProdutos;

SELECT codProd * 3.141692 AS "Calculando o PI",
preco * 0.90 AS "Preco com desconto",
preco * 1.10 AS "Preco com aumento" FROM tbProdutos;

-- Atualizando o preco do primeiro produto.
UPDATE tbProdutos SET preco = preco * 0.20 WHERE codProd = 1;
SELECT * FROM tbProdutos;


