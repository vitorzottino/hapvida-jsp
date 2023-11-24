create table tipo_usuario(
id number primary key,
descricao varchar2(100));
insert into tipo_usuario values (0, 'Paciente');
insert into tipo_usuario values (1, 'Ortopedista');
insert into tipo_usuario values (2, 'Cardiologista');
insert into tipo_usuario values (3, 'Neurologista');


create table usuarios(
id number GENERATED ALWAYS AS IDENTITY primary key,
nome varchar2(100),
email varchar2(100),
senha varchar2(100),
cpf varchar2(11),
idade int,
tipo number);
alter table usuarios add foreign key(tipo) references tipo_usuario(id);
insert into usuarios (nome, email, senha, cpf, idade, tipo) values('Paciente', 'paciente@fiap.com', 'admin', '00000000001', 20, 0);
insert into usuarios (nome, email, senha, cpf, idade, tipo) values('Ortopedista', 'ortoped@fiap.com', 'admin', '00000000001', 20, 1);
insert into usuarios (nome, email, senha, cpf, idade, tipo) values('Cardiologista', 'cardio@fiap.com', 'admin', '00000000001', 20, 2);
insert into usuarios (nome, email, senha, cpf, idade, tipo) values('Neurologista', 'neuro@fiap.com', 'admin', '00000000001', 20, 3);

create table status_pesquisa(
id number primary key,
descricao varchar2(100));
insert into status_pesquisa values(1, 'Assinada');
insert into status_pesquisa values(0, 'Nao Assinada');

create table especialidades(
id number primary key,
descricao varchar2(100));
insert into especialidades values (1, 'Ortopedia');
insert into especialidades values (2, 'Cardiologia');
insert into especialidades values (3, 'Neurologia');


create table pesquisa(
id number GENERATED ALWAYS AS IDENTITY primary key,
id_usuario number,
p1 int,
p2 int, 
p3 int, 
p4 int,
p5 int,
id_especialidade number,
status number,
data date,
id_sugestao number);

alter table pesquisa add foreign key (id_usuario) references usuarios(id);
alter table pesquisa add foreign key(status) references status_pesquisa(id);
alter table pesquisa add foreign key (id_especialidade) references especialidades(id);
alter table pesquisa add foreign key (id_sugestao) references sugestao(id);


create table consulta(
id int GENERATED ALWAYS AS IDENTITY primary key,
id_especialidade number,
id_usuario number,
data date,
horario varchar2(50));

alter table consulta add foreign key(id_especialidade) references especialidades(id);
alter table consulta add foreign key(id_usuario) references usuarios(id);

create table dados_biometricos(
id number GENERATED ALWAYS AS IDENTITY primary key,
id_usuario number,
tipo_sangue varchar2(10),
altura varchar2(10),
peso varchar2(10),
oxigenacao varchar2(20),
pressao varchar2(20),
data date);

alter table dados_biometricos add foreign key (id_usuario) references usuarios(id);

create table avaliacao(
id_especialidade number,
nota number);

alter table avaliacao add foreign key (id_especialidade) references especialidades(id);

create table sugestao (
id number primary key,
descricao varchar2(200));