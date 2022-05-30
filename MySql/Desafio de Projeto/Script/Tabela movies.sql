create table movies(id         integer primary key AUTO_INCREMENT COMMENT 'Identificador do registro', 
                    type       integer NOT NULL COMMENT 'Indica se é um filme(1) ou série (0)',
                    name       varchar(30) NOT NULL COMMENT 'Nome do filme ou série', 
                    total_ep   integer COMMENT 'Total de episódios; preenchido quando for uma série',
                    atual_ep   integer COMMENT 'Episódio atual; preenchido quando for uma série',
                    last_view  datetime default  CURRENT_TIMESTAMP  COMMENT 'Data/hora da última vez que a série/filme foi visto',
                    CONSTRAINT CHK_TIPO CHECK (type in (0,1))
                    );
                    
ALTER TABLE movies COMMENT = "Tabela para armazenar filmes e séries assistidas";                    
                    

insert into movies (type,name,total_ep,atual_ep) values (0,"Friends",10,1);
insert into movies (type,name,total_ep,atual_ep) values (1,"Avangers",NULL,NULL);
insert into movies (type,name,total_ep,atual_ep) values (1,"Todo Mundo Odeia o Cris",20,3);
insert into movies (type,name,total_ep,atual_ep) values (1,"300",NULL,NULL);
insert into movies (type,name,total_ep,atual_ep) values (1,"1917",NULL,NULL);