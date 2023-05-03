use curso;
select * from funcionarios;
select * from veiculos;

select * from funcionarios inner join veiculos on veiculos.funcionario_id = funcionarios.id;
select * from funcionarios f inner join veiculos v on v.funcionario_id = f.id;

select * from funcionarios left join veiculos on veiculos.funcionario_id = funcionarios.id;
select * from funcionarios right join veiculos on veiculos.funcionario_id = funcionarios.id;

insert into veiculos (funcionario_id, veiculo, placa) values (null, "moto", "SB-0003");

select * from funcionarios full join veiculos on veiculos.funcionario_id = funcionarios.id;

select * from funcionarios left join veiculos on veiculos.funcionario_id = funcionarios.id
union 
select * from funcionarios right join veiculos on veiculos.funcionario_id = funcionarios.id;

create table cpfs 
(
	id int unsigned not null,
    cpf varchar(14) not null,
    primary key (id),
    constraint fk_cpf foreign key (id) references funcionarios (id)
); 

insert into cpfs (id, cpf) values (1,'111.111.111-11');
insert into cpfs (id, cpf) values (2,'222.222.222-22');
insert into cpfs (id, cpf) values (4,'444.444.444-44');
insert into cpfs (id, cpf) values (5,'555.555.555-55');

select * from cpfs;

select * from funcionarios inner join cpfs on funcionarios.id = cpfs.id;
select * from funcionarios inner join cpfs using (id);

create table clientes 
(
id int unsigned not null auto_increment,
nome varchar(45) not null,
quem_indicou int unsigned,
primary key (id),
constraint fk_q_i foreign key (quem_indicou) references clientes (id)
);

insert into clientes (id, nome, quem_indicou) values (1, 'André', NULL);
insert into clientes (id, nome, quem_indicou) values (2, 'Samuel', 1); 
insert into clientes (id, nome, quem_indicou) values (3, 'Carlos', 2); 
 insert into clientes (id, nome, quem_indicou) values (4, 'Rafael', 1); 
 
 select * from clientes;
 
 SELECT a.nome, b.nome FROM clientes a join clientes b ON a.quem_indicou = b.id;
 
 SELECT a.nome AS CLIENTE, b.nome AS "QUEM INDICOU" 
 FROM clientes a join clientes b ON a.quem_indicou = b.id;
 
 select * from funcionarios 
 inner join veiculos on veiculos.funcionario_id = funcionarios.id 
 inner join cpfs ON cpfs.id = funcionarios.id;
 
 /* Criação de visao*/ 
 CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 1700;
 SELECT * FROM funcionarios_a;
 UPDATE funcionarios SET salario = 1500 WHERE id = 3; 
 
 /* mudar a visão*/
 
 DROP VIEW funcionarios_a;
 CREATE VIEW funcionarios_a AS SELECT * FROM funcionarios WHERE salario >= 2000; 