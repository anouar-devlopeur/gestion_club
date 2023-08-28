create database clb
use clb
create table Admin 
(
   idAdmi               integer   identity(1,1)        not null,
   username             varchar(25)                 not null   ,
   password             varchar(25)    not null   ,
   constraint PK_ADMIN primary key clustered (idAdmi)
);

create table Client 
(
   idclient             integer    identity(1,1)                       not null,
   idculb               integer                        null,
   idSouscategorie      integer                        null,
   Nomclient            varchar(25)                    null,
   Prenom_cl            varchar(25)                   null,
   Email                varchar(25)                  null    ,
   Password             varchar(25)              null    ,
   N_tele               integer                          null,
   datedebut            date                   null,
   Genre                varchar(10)                         null,
   Cinclient            varchar(25)           null        ,
   constraint PK_CLIENT primary key clustered (idclient)
);
select * from Client
  insert into Client values(2,1,'salam','wa3alykom','gamam@gmail.com','dfmfo',06283302,'12-12-2012','Male','HH120J')
  DELETE FROM CLIENT
--ALTER TABLE Client ADD CONSTRAINT c UNIQUE (Email,Password,Cinclient);
--ALTER TABLE Admin ADD CONSTRAINT s UNIQUE (username ,Password);
alter table SousCatgorie add prix float
alter table Client add cash varchar(15)
delete from Client
create table Club 
(
   idAdmi               integer                         null,
   idculb               integer         identity(1,1)                  not null,
   Nomclub              varchar(254)                   null,
   constraint PK_CLUB primary key clustered (idculb)
);


create table Ctaegorie 
(
   idculb               integer                     null,
   idcatgorie           integer        identity(1,1)                   not null,
   NomCategorie         varchar(25)                   null,
   constraint PK_CTAEGORIE primary key clustered (idcatgorie)
);


create table Paiment 
(
   idclient             integer                        null,
   idpaiment            integer                        not null,
   Paypal               varchar(25)                   null,
   espace               varchar(25)                   null,
   constraint PK_PAIMENT primary key clustered (idpaiment)
);

create table SousCatgorie 
(
   idcatgorie           integer                        null,
   idSouscategorie      integer       identity(1,1)                    not null,
   Nomsouscatgorie      varchar(25)                   null,
   constraint PK_SOUSCATGORIE primary key clustered (idSouscategorie)
);

create table "login" 
(
   idclient             integer                        null,
   idlogin              integer            identity(1,1)               not null,
   idAdmi               integer                        null,
   Email                varchar(25)                   null,
   password             varchar(25)                   null,
   constraint PK_LOGIN primary key clustered (idlogin)
);

alter table Client
   add constraint FK_CLIENT_ASSOCIATI_SOUSCATG foreign key (idSouscategorie)
      references SousCatgorie (idSouscategorie)
      --on update restrict
      --on delete restrict;

alter table Client
   add constraint FK_CLIENT_ASSOCIATI_CLUB foreign key (idculb)
      references Club (idculb)
      --on update restrict
      --on delete restrict;

alter table Club
   add constraint FK_CLUB_ASSOCIATI_ADMIN foreign key (idAdmi)
      references Admin (idAdmi)
      --on update restrict
      --on delete restrict;

alter table Ctaegorie
   add constraint FK_CTAEGORI_ASSOCIATI_CLUB foreign key (idculb)
      references Club (idculb)
      --on update restrict
      --on delete restrict;

alter table Paiment
   add constraint FK_PAIMENT_ASSOCIATI_CLIENT foreign key (idclient)
      references Client (idclient)
      --on update restrict
      --on delete restrict;

alter table SousCatgorie
   add constraint FK_SOUSCATG_ASSOCIATI_CTAEGORI foreign key (idcatgorie)
      references Ctaegorie (idcatgorie)
      --on update restrict
      --on delete restrict;

alter table "login"
   add constraint FK_LOGIN_ASSOCIATI_CLIENT foreign key (idclient)
      references Client (idclient)
      --on update restrict
      --on delete restrict;

alter table "login"
   add constraint FK_LOGIN_ASSOCIATI_ADMIN foreign key (idAdmi)
      references Admin (idAdmi)
      --on update restrict
      --on delete restrict;

	