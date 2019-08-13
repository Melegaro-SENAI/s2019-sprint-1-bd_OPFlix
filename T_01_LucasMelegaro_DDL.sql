CREATE DATABASE T_OPFlix;

USE T_OPFlix;

--COME�O DDL


CREATE TABLE CLIENTEADMINISTRADOR(
	IDCLIENTEADMINISTRADOR	INT PRIMARY KEY IDENTITY
	,NOME					VARCHAR (250) NOT NULL UNIQUE 
);

CREATE TABLE CATEGORIA(
	IDCATEGORIA				INT PRIMARY KEY IDENTITY
	,NOME					VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE FILMESERIE(
	IDTIPOFILMESERIE		INT PRIMARY KEY IDENTITY
	,NOME					VARCHAR (250) NOT NULL UNIQUE
);

CREATE TABLE USUARIOS(
	IDUSUARIO				INT PRIMARY KEY IDENTITY
	,NOME					VARCHAR (250) NOT NULL 
	,EMAIL					VARCHAR (250) NOT NULL UNIQUE
	,SENHA					VARCHAR (250) NOT NULL 
	,IDCLIENTEADMINISTRADOR	INT FOREIGN KEY REFERENCES CLIENTEADMINISTRADOR (IDCLIENTEADMINISTRADOR)
);

CREATE TABLE FILMESSERIES(
	IDFILMESSERIES			INT PRIMARY KEY IDENTITY
	,NOME					VARCHAR (250) NOT NULL
	,DATALAN�AMENTO			DATE NOT NULL
);

CREATE TABLE TIPOCATEGORIA(
	IDFILMESSERIES			INT FOREIGN KEY REFERENCES FILMESSERIES (IDFILMESSERIES)
	,CATEGORIA				INT FOREIGN KEY REFERENCES CATEGORIA	(IDCATEGORIA)
);

--FIM DDL