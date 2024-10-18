create database biblioteca;

use biblioteca;  

create table livro (
	pk int not null auto_increment, primary key (pk),
    titulo varchar(255) not null,
    autor varchar(255) not null,
    editora varchar(255) not null,
    ano int not null,
    isbn varchar(20) not null
)

select * from livro;

create table exemplar (
	pk int not null auto_increment, primary key (pk),
    livro_fk int not null, foreign key (livro_fk) references livro(pk),
    statu  varchar(255) not null
)

select * from exemplar;

create table usuario(
	pk int not null auto_increment, primary key (pk),
    nome varchar(255) not null
)

