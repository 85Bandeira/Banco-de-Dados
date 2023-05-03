use matriculas;
show tables;
describe table_tipo;

insert into tipo (id, tipo) values (1, 'db');
insert into tipo (id, tipo) values (2, 'prog');
insert into tipo (id, tipo) values (3, 'mod d');

insert into instrutor (id, nome, telefone) values (1, 'Andre Milami', 1111-1111);
insert into instrutor (id, nome, telefone) values (2, 'Carlos Tosin', 1212-1212);

insert into curso (id, curso, tipo_id, instrutor_id, valor) values (1, 'java', 2, 2, 270);
insert into curso (id, curso, tipo_id, instrutor_id, valor) values (2, 'java 2', 2, 2, 330);
insert into curso (id, curso, tipo_id, instrutor_id, valor) values (3, 'sql', 1, 1, 170);
insert into curso (id, curso, tipo_id, instrutor_id, valor) values (4, 'php 1', 2, 1, 270);

insert into aluno (cod, nome, endereco, email, nascimento) values (1, 'josé', 'rua XV de novembro 72', 'josé@softblue.com.br', 27/071985);
insert into aluno (cod, nome, endereco, email, nascimento) values (2, 'wagner', 'Av paulista', 'wagner@softblue.com.br', 21/05/1995);
insert into aluno (cod, nome, endereco, email, nascimento) values (3, 'emilio', 'rua lajes 103 ap 701', 'emilio@softblue.com.br', 22/07/1995);
insert into aluno (cod, nome, endereco, email, nascimento) values (4, 'cris', 'rua tauney 22', 'cris@softblue.com.br', 27/071998);
insert into aluno (cod, nome, endereco, email, nascimento) values (5, 'regina', 'rua rua sales305', 'regina@softblue.com.br', 27/07/1989);
insert into aluno (cod, nome, endereco, email, nascimento) values (6, 'fernando', 'Av central 30', 'fernando@softblue.com.br', 27/07/1985);

insert into matricula (id, aluno_cod, data, hora) values (1,2,15/04/2010,'11:23:32');
insert into matricula (id, aluno_cod, data, hora) values (2,2,15/04/2010,'14:23:32');
insert into matricula (id, aluno_cod, data, hora) values (3,3,15/04/2010,'11:17:32');
insert into matricula (id, aluno_cod, data, hora) values (4,4,16/04/2010,'14:27:32');
insert into matricula (id, aluno_cod, data, hora) values (5,5,17/04/2010,'11:18:32');
insert into matricula (id, aluno_cod, data, hora) values (6,6,18/04/2010,'13:47:32');
insert into matricula (id, aluno_cod, data, hora) values (7,6,19/04/2010,'18:13:32');

insert into pedido_detalhe (valor, matricula_id, curso_id) values (270,1,1);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (330,1,2);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (270,2,1);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (330,2,2);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (170,2,3);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (270,3,4);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (330,4,2);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (270,4,4);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (170,5,3);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (170,6,3);
insert into pedido_detalhe (valor, matricula_id, curso_id) values (270,7,4);

select * from aluno;

select curso from curso;
select curso, valor from curso where valor > 200;
select curso, valor from curso where valor > 200 and valor < 300;
select * from matricula where data between 15/04/2010 and 18/04/2010;
select * from matricula where data = 15/04/2010;

update aluno set endereco= 'Av Brasil 778' where cod = 1;
update aluno set email = 'cristiano@softblue.com.br' where cod = 4;

update curso set valor = round (valor * 1.1,2);
select * from curso;

update curso set curso = 'php fund' where id = 4;