SHOW DATABASES;
USE matriculas;
SHOW TABLES;
CREATE TABLE Aluno (Cod int auto_increment, Nome (varchar) , Endereco varchar, Email varchar, Cod int Primary Key);
USE curso;

CREATE TABLE funcionarios
(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    salario double not null default '0',
    departamento varchar(45) not null,
    PRIMARY KEY (id)
);

CREATE TABLE veiculos
(
	id int unsigned not null auto_increment,
    funcionario_id int unsigned default null,
    veiculo varchar(45) not null default '',
    placa varchar(10) not null default '',
    PRIMARY KEY (id),
    constraint fk_veiculos_funcionarios foreign key (funcionario_id) REFERENCES funcionarios (id)
);

CREATE TABLE salarios
(
faixa varchar(45) not null,
inicio double not null,
fim double not null,
PRIMARY KEY (faixa)
);
ALTER TABLE funcionarios CHANGE COLUMN nome_func(45) not null;

drop table salarios;

create index departamentos on funcionarios (departamento);
create index funcionarios on  funcionarios (nome(6));

SHOW DATABASES;
USE matriculas;
show tables;
create table aluno 
( 	cod int unsigned not null auto_increment,
	nome varchar(30) not null,
    endereco varchar(45) not null,
	email varchar(30),
    primary key(cod)
);
create table instrutor 
(	id int unsigned not null auto_increment,
	nome varchar(30) not null,
    telefone varchar(30) not null,
    primary key (id)
);
create table tipo 
(	id int unsigned not null auto_increment,
	tipo varchar (10) not null,
    primary key (id)
);

create table curso 
(	id int unsigned not null auto_increment,
	tipo_id int unsigned not null,
    instrutor_id int unsigned not null,
	curso varchar (15) not null,
    valor double not null,
    primary key (id),
    constraint fk_curso_tipos foreign key (tipo_id) references instrutor (id),
    constraint fk_curso_instrutors foreign key (instrutor_id) references instrutor (id)
);

create table matricula 
(	id int unsigned not null auto_increment,
	aluno_cod int unsigned not null,
    data datetime,
    hora time,
	primary key (id),
    constraint fk_matricula_aluno foreign key (aluno_cod) references aluno (cod)
);

create table pedido_detalhe 
(	valor double not null,
	matricula_id int unsigned not null,
    curso_id int unsigned not null,
    constraint fk_detalhe_matricula foreign key (matricula_id) references matricula (id),
    constraint fk_detalhe_curso foreign key (curso_id) references curso (id)
);
use matriculas;
	
	/* incluir a coluna data_nascimento na tabela aluno do tipo string, de tamaho 10 caracteres.*/
    ALTER table aluno add data_nascimento varchar(10);
    
    /* Altere a coluna data_nascimento para nascimento e seu tipo de dado para date.*/
    alter table aluno change data_nascimento nascimento date null;
    
    /* Crie um um novo indice na tabela aluno, para o campo aluno*/
    alter table aluno add index index_aluno (nome);
    
    /* Inclua o campo email na tabela instrutor, com tamanho de 100 caracteres.*/
    alter table instrutor add email varchar(100);
    
    /* Crie um novo indice na tabela curso, para o campo instrutor.*/
    alter table curso add index index_instrutor (instrutor_id);
    
    /* Remova o campo email da tabela instrutor*/
    alter table instrutor drop email;
    
    
 
    