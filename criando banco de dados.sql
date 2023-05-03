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



