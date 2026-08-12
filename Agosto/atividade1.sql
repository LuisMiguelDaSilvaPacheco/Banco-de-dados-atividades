#numero 1
create database Biblioteca;
show databases;
use Biblioteca;

#numero 2
create table autor(
	id_autor int primary key,
    nome varchar(100) not null,
    nacionalidade varchar(50) 
);
create table livro(
	id_livro int primary key,
    titulo varchar(150) not null,
    ano int,
    editora varchar(80) 
);
create table aluno(
	id_aluno int primary key,
    nome varchar(100) not null,
    email varchar(100) unique,
    curso varchar(50) 
);

#numero 3
alter table aluno add telefone int unique;
alter table livro add isbn int unique;
alter table livro modify editora varchar(120);
alter table livro change ano anoPublicacao int;
alter table aluno drop telefone;

#numero 4
alter table livro add id_autor int;
alter table livro add foreign key (id_autor) references autor (id_autor) on delete cascade on update cascade;
alter table livro modify editora varchar(80) not null;
alter table livro modify anoPublicacao date;
alter table livro add email varchar(100) unique;


#numero 5
drop table aluno;
drop table livro;
drop database Biblioteca;
