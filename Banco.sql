create database controlepraia
SET @@global.time_zone = '+3:00';
SET time_zone='Sao_Paulo';
SELECT * FROM mysql.time_zone_name WHERE Name LIKE '%Brazil%';
SELECT @@time_zone;

create table tbatendente(
idAte int  primary key,
NomeAte varchar (200) not null unique,
Telefone varchar (15),
Cpf  varchar (200) not null unique,
email varchar (100),
senha  varchar (100) not null, 
login  varchar (20) not null unique,
perfil varchar (50) not null
);

describe tbcampista

ALTER TABLE tbatendente
DROP COLUMN idate  ;

ALTER TABLE tbatendente
ADD  idAte  int primary key auto_increment;

-- inserir dados da tabela  atendente CRUd

insert into tbatendente(idAte,NomeAte,Telefone,Cpf,email,senha,login,perfil)
                   values (3,' Menna','555','911121','a@h','1234','am','admin');
select * from tbcampista

 -- Editar dados
 update tbatendente set Telefone ='0005' where idAte =1;
 -----------------------
 -- Apagar 
 delete from tbatendente  where idAte =3;
 -----------------------------------------
 create table tbCampista(
 IdCamp int primary key auto_increment,
NomeCamp varchar (100) not null unique,
CpfCamp  varchar (20) not null unique,
TelefoneCamp varchar (20),
PlacaCamp varchar (30),
Obserbações varchar (500)
);
ALTER TABLE tbcampista
DROP COLUMN Obserbações  ;


alter table tbacampar add Situacao varchar (30) not null after DataAcamp
 create  table tbAcampar(
 OrA int primary key auto_increment,
 DataAcamp timestamp default current_timestamp,
 AreaAcamp varchar (100) not null,
 ObsAcamp varchar (500) ,
 Atendente varchar(30),
 valor decimal (10,2),
 IdCamp int not null,
 foreign key (IdCamp) references tbCampista(IdCamp)
 );
 describe tbacampar
 select * from tbcampista
 
 
 );
ALTER TABLE tbacampar DROP DataRegistroAcampa;
ALTER TABLE tbacampar ADD DiasAcampados long not null



alter table tbacampar add DataRegistroAcampa date not null after DataAcamp


select * from tbatendente order by NomeAte,

select * from tbacampar,

ORAC.OrA,DataAcamp,ObsAcamp,DiasAcamp,valor,
CAM.NomeCamp,TelefoneCamp,PlacaCamp,
from tbacampar as ORAC
inner join tbcampista as CAM
on (CAM.IdCamp=ORAC.IdCamp);

insert into tbatendente(idAte,NomeAte,Telefone,Cpf,email,senha,login,perfil)
                values (3,'Alexxandre','555','11112100','a@h','1234','alexxandre','admin');
 delete from tbatendente  where idAte =2;
 select * from tbacampar
SET @@global.time_zone = '+3:00';
-- criando apelidos tabela 
select idCamp as ID, NomeCamp as Nome, endcamp as Endereço, CpfCamp as CPF, TelefoneCamp as Fone,
PlacaCamp as Placa, observacoes as OB from tbcampista where NomeCamp like 'j%';

describe tbacampar