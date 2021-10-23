use db_escola;

create table tb_estudantes (
	id bigint auto_increment,
    nome varchar (255) not null,
	nota decimal (3,2),
	matricula varchar(255),
    serie varchar (255),

	primary key (id)
);

insert into tb_estudantes (nome,nota,matricula,serie) values ("Pedro",7.5 , "ZX123", "5ª Série");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Antonio",5.5 , "EX765", "2º Colegial");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Ana",9.5 , "ZW987", "3º Colegial");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Felipe", 4.5, "EY900", "1º Colegial");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Fernando",8.0 , "AW900", "3º Colegial");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Sabrina",9.0 , "AW910", "4ª Série");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Vittor", 3.5, "AS356", "1ª Série");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Maria", 8.0, "AV987", "2ª Série");
insert into tb_estudantes (nome,nota,matricula,serie) values ("Tonita", 6.5, "AD626", "8ª Série");

select * from tb_estudantes;

select * from tb_estudantes where nota > 7.0;

select * from tb_estudantes where nota < 7.0;

update tb_estudantes set nota = 9.0 where id= 9;

select * from tb_estudantes;
update tb_estudantes set nota = 8.0 where id= 13;
