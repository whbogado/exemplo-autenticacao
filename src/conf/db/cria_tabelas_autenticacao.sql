create table usuario (
    login   varchar(15) not null primary key,
    senha   varchar(15) not null
);

create table perfil (
    login   varchar(15) not null,
    perfil  varchar(20) not null,
    primary key (login, perfil),
    foreign key (login) references usuario(login)
);

insert into usuario values ('prof1', 'prof1');
insert into usuario values ('prof2', 'prof2');
insert into usuario values ('aluno1', 'aluno1');
insert into usuario values ('aluno2', 'aluno2');

insert into perfil values ('prof1', 'professor');
insert into perfil values ('prof1', 'administrador');
insert into perfil values ('prof2', 'professor');
insert into perfil values ('aluno1', 'aluno');
insert into perfil values ('aluno2', 'aluno');

