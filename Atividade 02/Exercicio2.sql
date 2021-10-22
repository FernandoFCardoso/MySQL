create database db_ecommerce

use db_ecommerce;

create table tb_produtos (

id bigint auto_increment,
nome varchar (255) not null,
marca varchar (255) not null,
qualidade varchar (255) not null,
durabilidade varchar (255) not null,
valor decimal (10,2),

primary key (id)

);

insert into tb_produtos (nome,marca,qualidade,durabilidade,valor) values ("Peixe", "Seara","Fresco","Mar/2022",150.00);
insert into tb_produtos (nome,marca,qualidade,durabilidade,valor) values ("Água", "Bonanfonti","Congelada","Set/2022",1500.00);
insert into tb_produtos (nome,marca,qualidade,durabilidade,valor) values ("Whisky", "Lable","Top","Out/2029",15000.00);

select * from tb_produtos; 