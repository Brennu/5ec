-- Criar tabela estado
create table estado(
	idEstado int primary key auto_increment,
    nomeEstado varchar(50)
);
-- excluir tabela estado
drop table estado;

-- Listar dados de uma tabela
select * from estado;

-- Adicionar dados na tabela
insert into estado(idEstado,nomeEstado) values(1,"São Paulo");
insert into estado(idEstado,nomeEstado) values(2,"Rio de Janeiro");
insert into estado(idEstado,nomeEstado) values(3,"Espirito Santo");

insert into estado(nomeEstado) values("São Paulo");
insert into estado(nomeEstado) values("Rio de Janeiro");



create table municipio(
	idMuninicipio int primary key auto_increment,
    nomeMunicipio varchar(100),
    fk_idEstado int,
    foreign key (fk_idEstado) references estado (idEstado)
);