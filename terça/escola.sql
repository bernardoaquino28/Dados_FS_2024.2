create database escola;
use escola;

/* estudantes ,professores, diciplinas */

create table Estudantes (
id_estudante INT primary key,
nome varchar(20),
idade int,
sexo varchar(12)
);

create table Professores (
id_professor INT primary key,
nome varchar(20),
idade int,
sexo varchar(12)
);

create table disciplina ( 
id_diciplina INT primary key,
nome varchar(20),
horario char (20),
sala varchar(12)
);
/* insert alunos */

insert into Estudantes ( id_estudante, nome, idade, sexo)
values (001, "Rafael ", 24, "Masculino"); 
insert into Estudantes ( id_estudante, nome, idade, sexo)
values (002, "Augusto ",22, "Masculino"); 
insert into Estudantes ( id_estudante, nome, idade, sexo)
values (003, "Berna ", 28, "Masculino"); 
insert into Estudantes ( id_estudante, nome, idade, sexo)
values (004, "Julia ", 25, "Feminino"); 
insert into Estudantes ( id_estudante, nome, idade, sexo)
values (005, "Helena ", 30, "Feminino"); 

/* professores */
insert into Professores ( id_professor, nome, idade, sexo) values (001, "Cesar", 42 , "Masculino"); 
insert into Professores ( id_professor, nome, idade, sexo) values (002, "Roberto ", 55, "Masculino");
insert into Professores ( id_professor, nome, idade, sexo) values (003, " Leo ", 32, "Masculino");  
insert into Professores ( id_professor, nome, idade, sexo) values (004, "Rafaela ", 37, "Feminino"); 
insert into Professores ( id_professor, nome, idade, sexo) values (005, "Carol ",46 , "Feminino"); 

/* disciplina */


insert into disciplina ( id_diciplina, nome, horario, sala ) values (01, "Matematica ", "oito as 10", "Sala f-1"); 
insert into disciplina ( id_diciplina, nome, horario, sala ) values (02, "Historia", "duas as quatro", "Sala f-2"); 
insert into disciplina ( id_diciplina, nome, horario, sala ) values (03, "Portugues ", " sete as nove", "Sala f-3"); 
insert into disciplina ( id_diciplina, nome, horario, sala ) values (04, "Fisica", "oito as 10", "Sala f-4"); 
insert into disciplina ( id_diciplina, nome, horario, sala ) values (05, "Geografia", " oito as 10", "Sala f-5"); 


#select * from estudantes
#SELECT max(idade) FROM professores 


UPDATE Professores 
SET nome = "Bento", idade = 60
WHERE id_professor = 001;

















