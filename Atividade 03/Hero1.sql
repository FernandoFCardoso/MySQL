create database db_generation_game_online;

use db_generation_game_online;

create table tb_classe (
id bigint auto_increment,

class varchar (255) not null,
tutor varchar (255) not null,
ativo boolean not null,


primary key (id)

);
insert into tb_classe (class, tutor, ativo) values ("Herói","Zeus",true);
insert into tb_classe (class, tutor, ativo) values ("Vilão","Lucifer",true);
insert into tb_classe (class, tutor, ativo) values ("Anti-Herói","Deadpool",true);

select * from  tb_classe;

create table tb_personagem(
id bigint auto_increment,
nome varchar (255) not null,
ataque decimal (10,2) , 
defesa decimal (10,2) ,
habilidade varchar (255) ,
universo varchar (255),
fraqueza varchar (255),
frase varchar (255),
classe_id bigint,

primary key (id),

FOREIGN KEY (classe_id) REFERENCES tb_classe (id)

);

insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Goku",99999.99 , 77672.00 , "Ultra Instinct","DBS","Ego","Oi eu sou Goku!",1);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Vegeta", 99999.99 , 89700.00 , "Ultra Ego","DBS","Orgulho","Seu verme insolente",2);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Madimbu", 65300.00 , 44700.00 , "Chocolate","DBZ","Bondade","Vou te comer",3);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Naruto", 87300.00 , 67800.00 , "Kurama","Naruto","Sasuke","SASUKEEE!",1);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Sasuke", 82000.00 , 65000.00 , "Susano","Naruto","Naruto","NARUTOOO!",2);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Itachi", 99999.00 , 99999.00 , "Genjutsu","Naruto","Sasuke","Omae wa",2);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Madara", 98999.00 , 86000.00 , "Controle Biju","Naruto","Vingança","Eu vou matar todos vocês",3);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Midorya", 15000.00 , 20000.00 , "One for all","MyHero","100%","Al MIGHTTTT",1);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("All Might ", 33000.00 , 30000.00 , "SMASH OF USA","MyHero","Bondade","Vai ficar tudo bem",1);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Light", 99999.00 , 100.00 , "Death Note","Death Note","Poder","Eu não sou o Kira",2);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Batman", 10000.00 , 7000.00 , "Trevas","DC","Humano","I'm Batman", 2);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Coringa", 9000.00 , 16000.00 , "Psicopatia","DC","Loucura","Why so Sirius?!",3);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Thanos", 88000.00 , 67000.00 , "Joias do Infinito","Marvel","Poder","Eu sou inevitável",3);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Gojo", 100000.00 , 1000000.00 , "Exorcismo","Jujutsu","Humor","Eu trouxe uma lembrancinha",1);
insert into tb_personagem (nome, ataque, defesa, habilidade, universo,fraqueza,frase,classe_id) values ("Minato", 1000000.00 , 2000000.00 , "Relampago","Naruto","Familia","Eu tenho medo da Kushi",1 );

select * from tb_personagem;

select * from tb_personagem where ataque > 2000.00;

select * from tb_personagem where ataque between 60000 and 70000;

select * from tb_personagem where defesa between 30000 and 100000;

select * from tb_personagem where nome like"c%";

select * from tb_personagem  inner join tb_classe on tb_classe.id = tb_personagem.classe_id;

select * from tb_personagem  inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 1;

select * from tb_personagem  inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 2;

select * from tb_personagem  inner join tb_classe on tb_classe.id = tb_personagem.classe_id where classe_id = 3;





