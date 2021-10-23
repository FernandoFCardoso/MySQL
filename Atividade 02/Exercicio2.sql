use db_ecommerce;

create table tb_produtos(
	id bigint auto_increment,
    nome varchar (255) not null,
	valor decimal (8,2),
    validade varchar (255) not null,
    
    primary key (id)

);

insert into tb_produtos (nome,valor,validade) values ("Whisky", 1000.00,"Out/2032");
insert into tb_produtos (nome,valor,validade) values ("Vodka", 500.00,"Set/2022");
insert into tb_produtos (nome,valor,validade) values ("Gin", 400.00,"Nov/2032");
insert into tb_produtos (nome,valor,validade) values ("Refrigerante", 10.00,"Out/2021");

select * from tb_produtos;

select * from tb_produtos where valor > 500.00;

select * from tb_produtos where valor < 500.00;

update tb_produtos set valor = 700 where id=3;

