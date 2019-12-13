CREATE DATABASE T_OPFlix

USE T_OPFlix

CREATE TABLE Permissao
(
	IdPermissao INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL
);

CREATE TABLE Categoria
(
	IdCategoria INT PRIMARY KEY 
	,Nome VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE Usuarios 
(
	IdUsuario INT PRIMARY KEY IDENTITY 
	,Nome VARCHAR(255) NOT NULL 
	,Email VARCHAR(255) NOT NULL UNIQUE
	,Senha VARCHAR(255) NOT NULL 
	,Permissao VARCHAR(255) default 'Comum'
	,FotoPerfil VARCHAR(300) 
);

select * from Lancamentos
drop table Lancamentos

drop table Categoria
drop table TipoCategoria

CREATE TABLE Lancamentos
(
	IdLancamento INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL 
	,DataLancamento DATE NOT NULL
	,Sinopse Varchar(255) NOT NULL
	,IdCategoria INT FOREIGN KEY REFERENCES Categoria (IdCategoria)
	,FotoLanc Varchar(300) NOT NULL
);

drop table Lancamentos

update Lancamentos 
set FotoLanc = 'http://br.web.img3.acsta.net/c_215_290/pictures/19/08/14/16/00/5320567.jpg'
where IdLancamento = 1

CREATE TABLE Plataformas
(
	IdPlataforma INT PRIMARY KEY IDENTITY
	,Nome VARCHAR(255) NOT NULL UNIQUE
);

drop table TipoCategoria

sp_help Cadastro


select* from Categoria

select * from Usuarios

select * from Cadastro

select * from Lancamentos