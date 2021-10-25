create database db_pizzaria_legal;

use db_pizzaria_legal;

create table tb_categoria (
id bigint auto_increment,

tipo varchar (255) not null,
tamanho varchar (255) not null,
estoque boolean not null,
refri boolean not null,

primary key (id)

);

insert into tb_categoria (tipo,tamanho ,estoque,refri) values ("Salgada", "Grande",true,true);
insert into tb_categoria (tipo,tamanho ,estoque,refri) values ("Veggie", "média",true,false);
insert into tb_categoria (tipo,tamanho ,estoque,refri) values ("Salgada", "pequena",true,true);


create table tb_pizza(

id bigint auto_increment,

sabor varchar(255) not null, 
preco decimal (5,2) not null,

categoria_id bigint,
primary key (id)

);

insert into tb_pizza (sabor,preco,categoria_id) values ("Pepperonni", 27.50,1);
insert into tb_pizza (sabor,preco,categoria_id) values ("Hot Dog", 45.50,1);
insert into tb_pizza (sabor,preco,categoria_id) values ("Chocolate Branco", 21.00, 3);
insert into tb_pizza (sabor,preco,categoria_id) values ("Choclate com Morango", 27.00 ,3);
insert into tb_pizza (sabor,preco,categoria_id) values ("Rúcula", 59.60 ,2);
insert into tb_pizza (sabor,preco,categoria_id) values ("Palmito", 17.00 ,2 );
insert into tb_pizza (sabor,preco,categoria_id) values ("Portuguesa", 13.00 , 1);

select * from tb_pizza;
select * from tb_categoria;

update tb_pizza set preco = 59.60 where id=5;

select * from tb_pizza where preco > 45.00;

select * from tb_pizza where preco between 29 and 60;

select * from tb_pizza where sabor like 'C%';

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id;

select * from tb_pizza inner join tb_categoria on tb_categoria.id = tb_pizza.categoria_id where categoria_id = 2;





