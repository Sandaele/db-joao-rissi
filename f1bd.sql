drop database if exists db; 
create database db;
use db;

-- Carros
CREATE TABLE carros (
    idCarro INT AUTO_INCREMENT,
    marca VARCHAR(50),
    modelo VARCHAR(50),
    peso_carro INT,
    potencia_carro VARCHAR(50),
    motor VARCHAR(50),
    material_chassi VARCHAR(50),
    suspensao ENUM('ar', 'independente', 'hidropneumatico'),
    tipo_roda VARCHAR(50),
    PRIMARY KEY (idCarro)
)  DEFAULT CHARSET=UTF8MB4;

insert into carros(marca, modelo, peso_carro, potencia_carro, motor, material_chassi, suspensao, tipo_roda)
values
("Red Bull Racing", "RB20", 798, "1000 cv", "Honda RBPT", "fibra de carbono", "independente", "OZ Racing"),
("Mercedes-AMG Petronas", "MGP-W15", 798, "1.000 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "OZ Racing"),
("Ferrari", "SF24", 780, "1.010 cv", "Ferrari 066/12 V6 Turbo", "Fibra de carbono", "independente", "Pirelli"),
("Mclaren", "MCL38", 750, "1.008 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "Enkei"),
("Alpine", "A524", 770, "995 cv", "Renault E-Tech 24 V6 Turbo", "Fibra de carbono", "independente", "OZ Racing"),
("Aston Martin", "AMR24", 785, "1.005 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "BBS"),
("Stake F1 Team Kick Sauber", "C44", 798, "1.000 cv", "Ferrari 066/12 V6 Turbo", "Fibra de carbono", "independente", "Enkei"),
("Visa Cash App RB Formula One Team", "VCARB 01", 770, "990 cv", "Honda RBPT", "Fibra de carbono", "independente", "OZ Racing"),
("Williams", "FW46", 775, "985 cv", "Mercedes-AMG F1 M15 E Performance", "Fibra de carbono", "independente", "BBS"),
("MoneyGram Haas F1 Team", "C44", 798, "990 cv", "Ferrari 066/12 V6 Turbo", "Fibra de carbono", "independente", "OZ Racing");

-- Pilotos
CREATE TABLE piloto (
    idPiloto INT AUTO_INCREMENT,
    nome VARCHAR(50),
    equipe VARCHAR(50),
    nacionalidade VARCHAR(50),
    pontos INT,
    companheiro VARCHAR(50),
    qtdTitulos INT,
    nasc DATE,
    patrocinador VARCHAR(50),
    idCarro INT,
    PRIMARY KEY (idPiloto),
    FOREIGN KEY (idCarro)
        REFERENCES carros (idCarro)
)  DEFAULT CHARSET=UTF8MB4;

insert into piloto (nome, equipe, nacionalidade, pontos, companheiro, qtdTitulos, nasc, patrocinador, idCarro) values
("Charles Leclerc", "Ferrari", "Mônaco", 235, "Carlos Sainz", 0, "1997-10-16", "HP", 3),
("Max Verstappen", "RedBull Racing", "Holanda", 313, "Sergio Perez", 3, "1997-09-30", "Oracle", 1),
("Carlos Sainz", "Ferrari", "Espanha", 184, "Charles Leclerc", 0, "1994-09-01", "HP", 3),
("Sergio Perez", "RedBull Racing", "México", 134, "Max Verstappen", 0, "1990-01-26", "Oracle", 1),
("Lando Norris", "McLaren", "Inglaterra", 254, "Oscar Piastri", 0, "1999-11-13", "eBay", 4),
("Oscar Piastri", "McLaren", "Austrália", 222, "Lando Norris", 0, "2001-04-06", "eBay", 4),
("Lewis Hamilton", "Mercedes", "Inglaterra", 166, "George Russel", 7, "1985-01-07", "Adidas", 2),
("George Russel", "Mercedes", "Inglaterra", 143, "Lewis Hamilton", 0, "1998-02-15", "Adidas", 2),
("Fernando Alonso", "Aston Martin", "Espanha", 58, "Lance Stroll", 4, "1981-07-29", "Aramco", 6),
("Lance Stroll", "Aston Martin", "Canadá", 24, "Fernando Alonso", 0, "1998-10-29", "Aramco", 6),
("Yuki Tsunoda", "Visa CashApp", "Japão", 22, "Daniel Ricciardo", 0, "2000-05-11", "Hugo Boss", 8),
("Daniel Ricciardo", "Visa CashApp", "Austrália", 12, "Yuki Tsunoda", 0, "1989-07-01", "Hugo Boss", 8),
("Oliver Bearman", "HAAS", "Inglaterra", 6, "Nico Hulkenberg", 0, "1992-10-05", "Oakberry", 10),
("Nico Hulkenberg", "HAAS", "Finlândia", 22, "Oliver Bearman", 0, "1987-08-19", "Oakberry", 10),
("Pierre Gasly", "Alpine", "França", 8, "Esteban Ocon", 0, "1996-02-07", "BRB", 5),
("Esteban Ocon", "Alpine", "França", 1, "Pierre Gasly", 0, "1996-09-17", "BRB", 5),
("Franco Colapinto", "Williams", "Argentina", 4, "Alexander Albon", 0, "2000-12-31", "Komatsu", 9),
("Alexander Albon", "Williams", "Tailândia", 12, "Franco Colapinto", 0, "1996-03-23", "Komatsu", 9),
("Guanyu Zhou", "Stake", "China", 0, "Valtteri Bottas", 0, "1999-05-30", "Stake", 7),
("Valtteri Bottas", "Stake", "Alemanha", 0, "Guanyu Zhou", 0, "1989-08-28", "Stake", 7);

-- Pistas
-- Atualizado em 21_08
create table pista (
      idPista int(2) not null auto_increment primary key,
    nomePista varchar(50),
    pais varchar(50),
    VencedorPista_2024 varchar(50),
    melhorTempo varchar(50),
    tamanho int(15),
    numeroVoltas int(10)
) default charset = utf8mb4;

insert into pista (nomePista, pais, VencedorPista_2024, melhorTempo, tamanho, numeroVoltas) values
("Bahrain International Circuit", "Bahrein", "Max Verstappen", "1:31:44.742", 5412, 15),
("Jeddah Corniche Circuit", "Arábia Saudita", "Max Verstappen", "1:20:43.273", 6175, 27),
("Albert Park Grand Prix", "Austrália", "Carlos Sainz", "1:20:26.843", 5279, 14),
("Suzuka International Racing Course", "Japão", "Max Verstappen", "1:54:23.566", 5807, 14),
("Shanghai International Circuit", "China", "Max Verstappen", "1:40:52.554", 5451, 16),
("Miami International Autodrome", "Estados Unidos", "Lando Norris", "1:30:49.876", 5412, 19),
("Autodromo Internazionale Enzo e Dino Ferrari", "Itália", "Max Verstappen", "1:25:25.252", 4909, 19),
("Circuit de Monaco", "Mônaco", "Charles Leclerc", "2:23:15.554", 3337, 19),
("Circuit Gilles-Villeneuve", "Canadá", "Max Verstappen", "1:45:47.927", 4361, 14),
("Circuit de Barcelona-Catalunya", "Espanha", "Max Verstappen", "1:28:20.227", 4655, 16),
("Red Bull Ring", "Áustria", "George Russel", "1:24:22.798", 4318, 10),
("Silverstone Circuit", "Reino Unido", "Lewis Hamilton", "1:22:27.059", 5891, 17),
("Hungaroring", "Hungria", "Oscar Piastri", "1:38:01.989", 4381, 14),
("Circuit Spa-Francorchamps", "Bélgica", "Lewis Hamilton", "1:19:57.566", 7004, 19),
("Circuit Zandvoort", "Holanda", "-", "-", 4259, 15),
("Autodromo Nazionale Monza", "Itália", "-", "-", 5793, 11),
("Baku City Circuit", "Azerbaijão", "-", "-", 6003, 20),
("Marina Bay Street Circuit", "Singapura", "-", "-", 5073, 23),
("Circuit of the Americas", "Estados Unidos", "-", "-", 5513, 20),
("Autodromo Hermanos Rodriguez", "México", "-", "-", 4304, 17),
("Autódromo José Carlos Pace", "Brasil", "-", "-", 4309, 15),
("Streets of Las Vegas", "Estados Unidos", "-", "-", 6201, 17),
("Losail International Circuit", "Catar", "-", "-", 5380, 16),
("Yas Marina Circuit", "Emirados Árabes Unidos", "-", "-", 5281, 16);

/* PESQUISAR NO BANCO DE DADOS: [[COMPLETED]] 
01 - QUAIS AS EQUIPES QUE UTILIZAM FIBRA DE CARBONO?
[[ANULADA]] 02 - QUAIS EQUIPES POSSUEM A POTÊNCIA DO MOTOR ACIMA DE 1000 CV?
[[ANULADA]] 03 - QUAIS EQUIPES POSSUEM A POTÊNCIA MENOR QUE 1000 CV?
04 - QUAIS AS EQUIPES QUE UTILIZAM A SUSPENSÃO "ar", "independente", "hidropneumatico"? DE FORMA SEPARADA.
05 - QUANTAS LINHAS POSSUE A TABELA CARROS?
06 - QUANTOS PILOTOS INGLESES EXISTEM?
07 - QUANTOS PILOTOS BRASILEIROS EXISTEM?
08 - QUANTOS PILOTOS MEXICANOS EXISTEM?
09 - QUANTOS PILOTOS JAPONESES EXISTEM?
10 - QUANTOS PILOTOS AMERICANOS EXISTEM?
11 - QUANTOS PILOTOS INGLESES SÃO DA EQUIPE MERCEDES?
12 - QUAL A NACIONALIDADE DOS PILOTOS DA FERRARI?
13 - QUEM É O COMPANHEIRO DO PILOTO LANDO NORRIS?
14 - QUAIS OS PILOTOS POSSUEM MAIS DE 90 PONTOS?
15 - QUAIS OS PILOTOS POSSUEM MENOS DE 90 PONTOS?
16 - QUAL O PILOTO QUE POSSUE MAIOR PONTUAÇÃO NO MOMENTO?
17 - QUAL O PILOTO QUE POSSUE A MENOR PONTUAÇÃO NO MOMENTO?
18 - QUAIS SÃO OS PILOTOS DA EQUIPE WILLIAMS?
19 - QUAIS SÃO OS PILOTOS DA EQUIPE FERRARI?
20 - QUEM SÃO OS PILOTOS DA EQUIPE MCLAREN?
*/

-- 01 - QUAIS AS EQUIPES QUE UTILIZAM FIBRA DE CARBONO?
select idPiloto, equipe, carros.idCarro, material_chassi
from piloto, carros
where piloto.idCarro = carros.idCarro and material_chassi like "%carbono%";

-- 04 - QUAIS AS EQUIPES QUE UTILIZAM A SUSPENSÃO "ar", "independente", "hidropneumatico"? DE FORMA SEPARADA.
select idPiloto, equipe, carros.idCarro, suspensao
from piloto, carros
where piloto.idCarro = carros.idCarro and suspensao like "%ar%" or suspensao like "%independente%" or suspensao like "%hidropneumatico%";

-- 05 - QUANTAS LINHAS POSSUE A TABELA CARROS?
select count(idCarro) as linhas from carros;

-- 06 - QUANTOS PILOTOS INGLESES EXISTEM?
select count(idPiloto) as total, nacionalidade from piloto where nacionalidade like "%ing%";

-- 07 - QUANTOS PILOTOS BRASILEIROS EXISTEM?
select count(idPiloto) as total, nacionalidade from piloto where nacionalidade like "%br%";

-- 08 - QUANTOS PILOTOS MEXICANOS EXISTEM?
select count(idPiloto) as total, nacionalidade from piloto where nacionalidade like "%mex%";

-- 09 - QUANTOS PILOTOS JAPONESES EXISTEM?
select count(idPiloto) as total, nacionalidade from piloto where nacionalidade like "%jap%";

-- 10 - QUANTOS PILOTOS AMERICANOS EXISTEM?
select count(idPiloto) as total, nacionalidade from piloto where nacionalidade like "%estados%";

-- 11 - QUANTOS PILOTOS INGLESES SÃO DA EQUIPE MERCEDES?
select count(idPiloto) as total, nacionalidade, equipe from piloto where nacionalidade like "%ing%" and equipe like "%mer%";

-- 12 - QUAL A NACIONALIDADE DOS PILOTOS DA FERRARI? 
select idPiloto, nacionalidade, equipe
from piloto
where equipe like "%fer%";

-- 13 - QUEM É O COMPANHEIRO DO PILOTO LANDO NORRIS?
select IdPiloto, nome, companheiro
from piloto
where nome like "%lando norris%";

-- 14 - QUAIS OS PILOTOS POSSUEM MAIS DE 90 PONTOS?
select idPiloto, nome, pontos
from piloto
where pontos >= 90;

-- 15 - QUAIS OS PILOTOS POSSUEM MENOS DE 90 PONTOS?
select idPiloto, nome, pontos
from piloto
where pontos < 90;

-- 16 - QUAL O PILOTO QUE POSSUE MAIOR PONTUAÇÃO NO MOMENTO?
select idPiloto, nome, pontos
from piloto
order by pontos desc
limit 1;

-- 17 - QUAL O PILOTO QUE POSSUE A MENOR PONTUAÇÃO NO MOMENTO?
select idPiloto, nome, pontos
from piloto
order by pontos asc
limit 1;

-- 18 - QUAIS SÃO OS PILOTOS DA EQUIPE WILLIAMS?
select idPiloto, nome, equipe
from piloto
where equipe like "%wil%";

-- 19 - QUAIS SÃO OS PILOTOS DA EQUIPE FERRARI?
select idPiloto, nome, equipe
from piloto
where equipe like "%fer%";

-- 20 - QUEM SÃO OS PILOTOS DA EQUIPE MCLAREN?
select idPiloto, nome, equipe
from piloto
where equipe like "%mclar%";