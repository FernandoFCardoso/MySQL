use db_RH;

create table tb_funcionarios (

id bigint auto_increment,
nome varchar(255) not null,
genero varchar (200) not null,
cargo varchar (255) not null,
salario decimal (10,2),
horario varchar (255) not null,

primary key (id)

);

insert into tb_funcionarios (nome,genero,cargo,salario,horario) values ("João", "D", "Assistente", 1000.00,"Diurno");
insert into tb_funcionarios (nome,genero,cargo,salario,horario) values ("Paulo","N", "Pleno", 15000,"Diurno");
insert into tb_funcionarios (nome,genero,cargo,salario,horario) values ("Carlos", "N", "Junior", 3.000,"Diurno");
insert into tb_funcionarios (nome,genero,cargo,salario,horario) values ("Luiz", "D", "Estagiário", 2.000,"Diurno");
insert into tb_funcionarios (nome,genero,cargo,salario,horario) values ("Pedro", "I", "Logistica", 10000.00,"Diurno");

select * from tb_funcionarios; 

update tb_funcionarios set salario = 1000.00 where id=1;

select * from tb_funcionarios where salario > 2000.00;
select * from tb_funcionarios where salario < 2000.00;
