create database ger_join; 
use ger_join;

create table funcionarios(
cod int primary key not null,
nome varchar(255) not null,
especialidade varchar(255) not null
);

create table dependentes (
cod int primary key not null,
nome varchar(255) not null,
cod_func int not null
);

insert into funcionarios(cod, nome, especialidade)
values (1, "José", "Engenheiro"),
		(2, "João", "Mestre de obras"),
        (3, "Maria", "Contabilista");
        
insert into dependentes(cod, nome, cod_func)
values (1, "Pedro", 1),
		(2, "Alice", 1),
		(3, "Luana", 3);
        
select funcionarios.nome, dependentes.nome
from funcionarios
inner join dependentes
on funcionarios.cod = dependentes.cod_func
where funcionarios.cod = 1;

select funcionarios.nome nome_func, dependentes.nome nome_dep
from funcionarios 
left join dependentes 
on funcionarios.cod = dependentes.cod_func
where dependentes.nome is null;

select funcionarios.nome nome_func, dependentes.nome nome_dep
from funcionarios 
right join dependentes 
on funcionarios.cod = dependentes.cod_func
where funcionarios.cod is null;


        