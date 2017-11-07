--Drop tables
drop table Actor cascade constraints;
drop table MovieActor cascade constraints;
drop table Movie cascade constraints;
drop table Director cascade constraints;
drop table Genre cascade constraints;
drop table Favourite cascade constraints;
drop table Users cascade constraints;

--Creating the tables
create table Actor(
aid integer,
fname varchar(20),
lname varchar(20),
Primary Key (aid)
);

create table MovieActor(
maid integer,
aid integer,
mid integer,
Primary Key (maid)
);

create table Movie(
mid integer,
did integer,
title varchar(50), year varchar(20),
Primary Key (mid)
);

create table Director(
did integer,
fname varchar(20),
lname varchar(20),
Primary Key (did)
);

create table Genre(
gid integer,
mid integer,
name varchar(20),
Primary Key (gid)
);

create table Users(
userid integer,
fname varchar(20),
lname varchar(20),
email varchar(20),
password varchar(20),
username varchar(20),
Primary Key (userid)
);

create table Favourite(
fid integer,
userid integer,
mid integer,
Primary Key (fid)
);

---Adding the foreign keys
Alter table MovieActor
Add Foreign Key (aid) References Actor(aid);
Alter table MovieActor
Add Foreign Key (mid) References Movie(mid);

Alter table Movie
Add Foreign Key (did) References Director(did);

Alter table Genre
Add Foreign Key (mid) References Movie(mid);

Alter table Favourite
Add Foreign Key (userid) References Users(userid);
Alter table Favourite
Add Foreign Key (mid) References Movie(mid);


Insert into Actor
Values (1, 'Kazuya', 'Nakai');
Insert into Actor
Values (2, 'Giacomo', 'Furia');
Insert into Actor
Values (3, 'Luis', 'Marín');
Insert into Actor
Values (4, 'Jeanne', 'Moreau');
Insert into Actor
Values (5, 'Brock', 'Peters');
Insert into Actor
Values (6, 'Ettore', 'Mattia');
Insert into Actor
Values (8, 'Masaki', 'Aizawa');
Insert into Actor
Values (9, 'Donatella', 'Turri');
Insert into Actor
Values (10, 'Tchéky', 'Karyo');
Insert into Actor
Values (12, 'Bernard', 'Eisenschitz');
Insert into Actor
Values (13, 'Philippe', 'Dumat');
Insert into Actor
Values (14, 'Roger', 'Rees');
Insert into Actor
Values (15, 'Ignazio', 'Leone');
Insert into Actor
Values (16, 'Enn', 'Reitel');
Insert into Actor
Values (17, 'Christian', 'Bale');
Insert into Actor
Values (18, 'Fan', 'Bingbing');
Insert into Actor
Values (19, 'Franco', 'Lolli');
Insert into Actor
Values (20, 'François', 'Bureloup');
Insert into Actor
Values (21, 'Daniel', 'Davis');
Insert into Actor
Values (22, 'George', 'Rigaud');
Insert into Actor
Values (23, 'Romi', 'Park');
Insert into Actor
Values (24, 'Odette', 'Talazac');
Insert into Actor
Values (25, 'Clotilde', 'Mollet');
Insert into Actor
Values (26, 'Chao-Li', 'Chi');
Insert into Actor
Values (27, 'Helga', 'Liné');
Insert into Actor
Values (28, 'Luis', 'Dávila');
Insert into Actor
Values (29, 'Yelena', 'Solovey');
Insert into Actor
Values (30, 'Quim', 'Gutiérrez');
Insert into Actor
Values (31, 'Pippo', 'Starnazza');
Insert into Actor
Values (33, 'Telly', 'Savalas');
Insert into Actor
Values (34, 'Josh', 'Harris');
Insert into Actor
Values (35, 'Cyril', 'Mendy');
Insert into Actor
Values (36, 'Lando', 'Buzzanca');
Insert into Actor
Values (37, 'Fumiko', 'Orikasa');
Insert into Actor
Values (38, 'Imanol', 'Arias');
Insert into Actor
Values (39, 'François', 'Caron');
Insert into Actor
Values (40, 'John', 'Ford');
Insert into Actor
Values (41, 'Omar', 'Sy');
Insert into Actor
Values (42, 'Carlo', 'Sposito');
Insert into Actor
Values (43, 'Martina', 'García');
Insert into Actor
Values (44, 'Oliviero', 'Prunas');
Insert into Actor
Values (45, 'Alberto', 'Fernández');
Insert into Actor
Values (46, 'David', 'Bowie');
Insert into Actor
Values (47, 'Christian', 'Marquand');
Insert into Actor
Values (48, 'Agustín', 'Almodóvar');
Insert into Actor
Values (49, 'Jackie', 'Chan');
Insert into Actor
Values (50, 'Ricky', 'Jay');
Insert into Actor
Values (51, 'Richard', 'Lynch');
Insert into Actor
Values (52, 'Rebecca', 'Hall');
Insert into Actor
Values (53, 'Kōzō', 'Shioya');
Insert into Actor
Values (54, 'James', 'Otis');
Insert into Actor
Values (55, 'Estelle', 'Skornik');
Insert into Actor
Values (56, 'Lola', 'Gaos');
Insert into Actor
Values (57, 'Valeria', 'Cavalli');
Insert into Actor
Values (58, 'Albert', 'Broquin');
Insert into Actor
Values (59, 'Gérard', 'Lanvin');
Insert into Actor
Values (61, 'Nicky', 'Marbot');
Insert into Actor
Values (62, 'Pola', 'Illéry');
Insert into Actor
Values (63, 'Marilù', 'Tolo');
Insert into Actor
Values (64, 'Antonio', 'Casas');
Insert into Actor
Values (65, 'Giovanni', 'Petrucci');
Insert into Actor
Values (66, 'Andy', 'Serkis');
Insert into Actor
Values (67, 'Dee', 'Wallace');
Insert into Actor
Values (68, 'Georges', 'Tréville');
Insert into Actor
Values (69, 'Michael', 'Caine');
Insert into Actor
Values (71, 'Nicholas', 'Tse');
Insert into Actor
Values (72, 'Francis', 'Renaud');
Insert into Actor
Values (73, 'Anouk', 'Aimée');
Insert into Actor
Values (74, 'Kevin', 'Will');
Insert into Actor
Values (75, 'Joseph', 'Bologna');
Insert into Actor
Values (76, 'Michel', 'Winogradoff');
Insert into Actor
Values (77, 'Tomás', 'Milián');
Insert into Actor
Values (78, 'Donatella', 'Raffai');
Insert into Actor
Values (79, 'Ewa', 'Aulin');
Insert into Actor
Values (80, 'Jamie', 'Harris');
Insert into Actor
Values (81, 'Thomas', 'Solivéres');
Insert into Actor
Values (82, 'Marcella', 'Michelangeli');
Insert into Actor
Values (83, 'Hugh', 'Jackman');
Insert into Actor
Values (84, 'Svetlana', 'Nemolayeva');
Insert into Actor
Values (85, 'Christian', 'Ameri');
Insert into Actor
Values (86, 'Stefania', 'Careddu');
Insert into Actor
Values (88, 'Piper', 'Perabo');
Insert into Actor
Values (89, 'Andy', 'Lau');
Insert into Actor
Values (90, 'Kane', 'Hodder');
Insert into Actor
Values (91, 'Raymond', 'Aimos');
Insert into Actor
Values (92, 'François', 'Levantal');
Insert into Actor
Values (93, 'Jacques', 'Morel');
Insert into Actor
Values (94, 'François', 'Michel');
Insert into Actor
Values (95, 'Wu', 'Jing');
Insert into Actor
Values (98, 'Caroline', 'Bourg');
Insert into Actor
Values (100, 'Pascal', 'Aubier');
Insert into Actor
Values (101, 'Daniel', 'Duval');
Insert into Actor
Values (102, 'Rossana', 'Martini');
Insert into Actor
Values (103, 'Audrey', 'Fleurot');
Insert into Actor
Values (104, 'Albert', 'Malbert');
Insert into Actor
Values (105, 'Noël', 'Simsolo');
Insert into Actor
Values (106, 'Maïté', 'Nahyr');
Insert into Actor
Values (107, 'Clara', 'Lago');
Insert into Actor
Values (108, 'Charles', 'Lorrain');
Insert into Actor
Values (109, 'Paul', 'Ollivier');
Insert into Actor
Values (110, 'Gabrielle', 'Rosny');
Insert into Actor
Values (111, 'Jean-Pierre', 'Beauviala');
Insert into Actor
Values (112, 'Tōru', 'Furuya');
Insert into Actor
Values (113, 'Mónica', 'Randall');
Insert into Actor
Values (114, 'Étienne', 'Chicot');
Insert into Actor
Values (115, 'Katja', 'Rupé');
Insert into Actor
Values (116, 'Pyotr', 'Mamonov');
Insert into Actor
Values (117, 'Mathieu', 'Amalric');
Insert into Actor
Values (118, 'Benjamin', 'Baroche');
Insert into Actor
Values (119, 'Alexandra', 'Stewart');
Insert into Actor
Values (120, 'Cecilia', 'Roth');
Insert into Actor
Values (121, 'Mark', 'Ryan');
Insert into Actor
Values (122, 'Gregory', 'Hlady');
Insert into Actor
Values (124, 'Christopher', 'Neame');
Insert into Actor
Values (125, 'Palmyre', 'Levasseur');
Insert into Actor
Values (126, 'Edward', 'Hibbert');
Insert into Actor
Values (127, 'Ryōtarō', 'Okiayu');
Insert into Actor
Values (129, 'Jean-François', 'Cayrey');
Insert into Actor
Values (130, 'Clint', 'Walker');
Insert into Actor
Values (131, 'Grégoire', 'Oestermann');
Insert into Actor
Values (132, 'Dawn', 'Upshaw');
Insert into Actor
Values (133, 'René', 'Bergeron');
Insert into Actor
Values (134, 'Chuck', 'Connors');
Insert into Actor
Values (135, 'Elio', 'Crovetto');
Insert into Actor
Values (136, 'Catherine', 'Spaak');
Insert into Actor
Values (137, 'Raymond', 'Pellegrin');
Insert into Actor
Values (138, 'Jean', 'Sorel');
Insert into Actor
Values (139, 'Raymond', 'Cordy');
Insert into Actor
Values (140, 'Scarlett', 'Johansson');
Insert into Actor
Values (141, 'Eugenio', 'Colombo');
Insert into Actor
Values (143, 'John', 'Regis');
Insert into Actor
Values (144, 'Carla', 'Mignone');
Insert into Actor
Values (146, 'Natalia', 'Fateeva');
Insert into Actor
Values (147, 'Émilie', 'Caen');
Insert into Actor
Values (148, 'Ron', 'Perkins');
Insert into Actor
Values (149, 'Keikō', 'Sakai');
Insert into Actor
Values (150, 'Eddie', 'Polo');
Insert into Actor
Values (151, 'Antonio', 'Banderas');
Insert into Actor
Values (152, 'Masakazu', 'Morita');
Insert into Actor
Values (153, 'Pino', 'Ferrara');
Insert into Actor
Values (154, 'Anna', 'Lefeuvrier');
Insert into Actor
Values (155, 'Steve', 'Railsback');
Insert into Actor
Values (156, 'Xing', 'Yu');
Insert into Actor
Values (157, 'Holly', 'Gagnier');
Insert into Actor
Values (158, 'Yury', 'Solomin');
Insert into Actor
Values (159, 'Olga', 'Volkova');
Insert into Actor
Values (160, 'René', 'Fleur');
Insert into Actor
Values (161, 'Antonio', 'Rebollo');
Insert into Actor
Values (162, 'Kentarō', 'Itō');
Insert into Actor
Values (163, 'Thomy', 'Bourdelle');
Insert into Actor
Values (164, 'Ben', 'Tatar');
Insert into Actor
Values (165, 'Hans-Peter', 'Cloos');
Insert into Actor
Values (166, 'Anne', 'Francis');
Insert into Actor
Values (167, 'Marie-Laure', 'Descoureaux');
Insert into Actor
Values (168, 'Jérôme', 'Pauwels');
Insert into Director
Values (1, 'Rustam', 'Khamdamov');
Insert into Director
Values (2, 'Eugenio', 'Martín');
Insert into Director
Values (3, 'Christopher', 'Nolan');
Insert into Director
Values (4, 'Noriyuki', 'Abe');
Insert into Director
Values (5, 'Otar', 'Iosseliani');
Insert into Director
Values (6, 'Pedro', 'Almodóvar');
Insert into Director
Values (7, 'Olivier', 'Nakache');
Insert into Director
Values (8, 'Éric', 'Toledano');
Insert into Director
Values (9, 'Jon', 'Hess');
Insert into Director
Values (10, 'Benny', 'Chan');
Insert into Director
Values (11, 'Alberto', 'Lattuada');
Insert into Director
Values (12, 'Andrés', 'Baiz');
Insert into Director
Values (13, 'René', 'Clair');
Insert into Director
Values (14, 'Olivier', 'Marchal');
Insert into Director
Values (15, 'Francis', 'Ford');
Insert into Director
Values (16, 'Ondi', 'Timoner');

Insert into Movie
Values (1, 16, 'We Live in Public', '2009');
Insert into Movie
Values (2, 14, 'A Gang Story', '2011');
Insert into Movie
Values (3, 7, 'The Intouchables', '2011');
Insert into Movie
Values (4, 2, 'Pancho Villa', '1972');
Insert into Movie
Values (5, 6, 'Labyrinth of Passion', '1982');
Insert into Movie
Values (6, 11, 'Limprevisto', '1961');
Insert into Movie
Values (7, 11, 'Don Giovanni in Sicilia', '1967');
Insert into Movie
Values (8, 5, 'Favorites of the Moon', '1984');
Insert into Movie
Values (9, 3, 'The Prestige', '2006');
Insert into Movie
Values (10, 9, 'Alligator II - The Mutation', '1991');
Insert into Movie
Values (11, 12, 'The Hidden Face', '2011');
Insert into Movie
Values (12, 1, 'Anna Karamazoff', '1991');
Insert into Movie
Values (13, 10, 'Shaolin', '2011');
Insert into Movie
Values (14, 13, 'July 14', '1932');
Insert into Movie
Values (15, 4, 'Bleach: Hell Verse', '2010');
Insert into Movie
Values (16, 15, 'The Broken Coin', '1915');
Insert into Movie
Values (17, 11, 'Sweet Delusions', '1960');
Insert into MovieActor
Values (1, 34, 1);
Insert into MovieActor
Values (2, 114, 2);
Insert into MovieActor
Values (3, 10, 2);
Insert into MovieActor
Values (4, 92, 2);
Insert into MovieActor
Values (5, 101, 2);
Insert into MovieActor
Values (6, 55, 2);
Insert into MovieActor
Values (7, 72, 2);
Insert into MovieActor
Values (8, 59, 2);
Insert into MovieActor
Values (9, 57, 2);
Insert into MovieActor
Values (10, 114, 2);
Insert into MovieActor
Values (11, 10, 2);
Insert into MovieActor
Values (12, 92, 2);
Insert into MovieActor
Values (13, 101, 2);
Insert into MovieActor
Values (14, 55, 2);
Insert into MovieActor
Values (15, 72, 2);
Insert into MovieActor
Values (16, 59, 2);
Insert into MovieActor
Values (17, 57, 2);
Insert into MovieActor
Values (18, 114, 2);
Insert into MovieActor
Values (19, 10, 2);
Insert into MovieActor
Values (20, 92, 2);
Insert into MovieActor
Values (21, 101, 2);
Insert into MovieActor
Values (22, 55, 2);
Insert into MovieActor
Values (23, 72, 2);
Insert into MovieActor
Values (24, 59, 2);
Insert into MovieActor
Values (25, 57, 2);
Insert into MovieActor
Values (26, 114, 2);
Insert into MovieActor
Values (27, 10, 2);
Insert into MovieActor
Values (28, 92, 2);
Insert into MovieActor
Values (29, 101, 2);
Insert into MovieActor
Values (30, 55, 2);
Insert into MovieActor
Values (31, 72, 2);
Insert into MovieActor
Values (32, 59, 2);
Insert into MovieActor
Values (33, 57, 2);
Insert into MovieActor
Values (34, 114, 2);
Insert into MovieActor
Values (35, 10, 2);
Insert into MovieActor
Values (36, 92, 2);
Insert into MovieActor
Values (37, 101, 2);
Insert into MovieActor
Values (38, 55, 2);
Insert into MovieActor
Values (39, 72, 2);
Insert into MovieActor
Values (40, 59, 2);
Insert into MovieActor
Values (41, 57, 2);
Insert into MovieActor
Values (42, 41, 3);
Insert into MovieActor
Values (43, 103, 3);
Insert into MovieActor
Values (46, 98, 3);
Insert into MovieActor
Values (49, 25, 3);
Insert into MovieActor
Values (50, 35, 3);
Insert into MovieActor
Values (51, 20, 3);
Insert into MovieActor
Values (52, 39, 3);
Insert into MovieActor
Values (53, 131, 3);
Insert into MovieActor
Values (54, 129, 3);
Insert into MovieActor
Values (55, 168, 3);
Insert into MovieActor
Values (57, 81, 3);
Insert into MovieActor
Values (58, 167, 3);
Insert into MovieActor
Values (59, 118, 3);
Insert into MovieActor
Values (60, 147, 3);
Insert into MovieActor
Values (61, 85, 3);
Insert into MovieActor
Values (62, 76, 3);
Insert into MovieActor
Values (63, 61, 3);
Insert into MovieActor
Values (64, 41, 3);
Insert into MovieActor
Values (65, 103, 3);
Insert into MovieActor
Values (68, 98, 3);
Insert into MovieActor
Values (71, 25, 3);
Insert into MovieActor
Values (72, 35, 3);
Insert into MovieActor
Values (73, 20, 3);
Insert into MovieActor
Values (74, 39, 3);
Insert into MovieActor
Values (75, 131, 3);
Insert into MovieActor
Values (76, 129, 3);
Insert into MovieActor
Values (77, 168, 3);
Insert into MovieActor
Values (79, 81, 3);
Insert into MovieActor
Values (80, 167, 3);
Insert into MovieActor
Values (81, 118, 3);
Insert into MovieActor
Values (82, 147, 3);
Insert into MovieActor
Values (83, 85, 3);
Insert into MovieActor
Values (84, 76, 3);
Insert into MovieActor
Values (85, 61, 3);
Insert into MovieActor
Values (86, 41, 3);
Insert into MovieActor
Values (87, 103, 3);
Insert into MovieActor
Values (90, 98, 3);
Insert into MovieActor
Values (93, 25, 3);
Insert into MovieActor
Values (94, 35, 3);
Insert into MovieActor
Values (95, 20, 3);
Insert into MovieActor
Values (96, 39, 3);
Insert into MovieActor
Values (97, 131, 3);
Insert into MovieActor
Values (98, 129, 3);
Insert into MovieActor
Values (99, 168, 3);
Insert into MovieActor
Values (101, 33, 4);
Insert into MovieActor
Values (102, 166, 4);
Insert into MovieActor
Values (104, 3, 4);
Insert into MovieActor
Values (105, 113, 4);
Insert into MovieActor
Values (106, 56, 4);
Insert into MovieActor
Values (107, 64, 4);
Insert into MovieActor
Values (108, 161, 4);
Insert into MovieActor
Values (109, 134, 4);
Insert into MovieActor
Values (110, 164, 4);
Insert into MovieActor
Values (111, 130, 4);
Insert into MovieActor
Values (112, 28, 4);
Insert into MovieActor
Values (114, 45, 4);
Insert into MovieActor
Values (116, 151, 5);
Insert into MovieActor
Values (117, 27, 5);
Insert into MovieActor
Values (118, 120, 5);
Insert into MovieActor
Values (119, 48, 5);
Insert into MovieActor
Values (120, 38, 5);
Insert into MovieActor
Values (121, 151, 5);
Insert into MovieActor
Values (122, 27, 5);
Insert into MovieActor
Values (123, 120, 5);
Insert into MovieActor
Values (124, 48, 5);
Insert into MovieActor
Values (125, 38, 5);
Insert into MovieActor
Values (126, 73, 6);
Insert into MovieActor
Values (127, 77, 6);
Insert into MovieActor
Values (128, 93, 6);
Insert into MovieActor
Values (129, 137, 6);
Insert into MovieActor
Values (131, 13, 6);
Insert into MovieActor
Values (133, 102, 7);
Insert into MovieActor
Values (134, 36, 7);
Insert into MovieActor
Values (135, 135, 7);
Insert into MovieActor
Values (136, 141, 7);
Insert into MovieActor
Values (137, 15, 7);
Insert into MovieActor
Values (138, 153, 7);
Insert into MovieActor
Values (139, 79, 7);
Insert into MovieActor
Values (140, 82, 7);
Insert into MovieActor
Values (142, 42, 7);
Insert into MovieActor
Values (143, 6, 7);
Insert into MovieActor
Values (144, 65, 7);
Insert into MovieActor
Values (146, 31, 7);
Insert into MovieActor
Values (147, 86, 7);
Insert into MovieActor
Values (148, 117, 8);
Insert into MovieActor
Values (150, 115, 8);
Insert into MovieActor
Values (151, 12, 8);
Insert into MovieActor
Values (153, 94, 8);
Insert into MovieActor
Values (154, 165, 8);
Insert into MovieActor
Values (155, 111, 8);
Insert into MovieActor
Values (156, 106, 8);
Insert into MovieActor
Values (157, 105, 8);
Insert into MovieActor
Values (158, 100, 8);
Insert into MovieActor
Values (159, 46, 9);
Insert into MovieActor
Values (160, 140, 9);
Insert into MovieActor
Values (161, 17, 9);
Insert into MovieActor
Values (162, 69, 9);
Insert into MovieActor
Values (163, 83, 9);
Insert into MovieActor
Values (164, 66, 9);
Insert into MovieActor
Values (165, 88, 9);
Insert into MovieActor
Values (166, 52, 9);
Insert into MovieActor
Values (167, 132, 9);
Insert into MovieActor
Values (168, 21, 9);
Insert into MovieActor
Values (169, 54, 9);
Insert into MovieActor
Values (170, 26, 9);
Insert into MovieActor
Values (171, 124, 9);
Insert into MovieActor
Values (172, 126, 9);
Insert into MovieActor
Values (173, 80, 9);
Insert into MovieActor
Values (175, 121, 9);
Insert into MovieActor
Values (176, 148, 9);
Insert into MovieActor
Values (177, 50, 9);
Insert into MovieActor
Values (179, 14, 9);
Insert into MovieActor
Values (180, 16, 9);
Insert into MovieActor
Values (184, 74, 9);
Insert into MovieActor
Values (185, 46, 9);
Insert into MovieActor
Values (186, 140, 9);
Insert into MovieActor
Values (187, 17, 9);
Insert into MovieActor
Values (188, 69, 9);
Insert into MovieActor
Values (189, 83, 9);
Insert into MovieActor
Values (190, 66, 9);
Insert into MovieActor
Values (191, 88, 9);
Insert into MovieActor
Values (192, 52, 9);
Insert into MovieActor
Values (193, 132, 9);
Insert into MovieActor
Values (194, 21, 9);
Insert into MovieActor
Values (195, 157, 10);
Insert into MovieActor
Values (196, 67, 10);
Insert into MovieActor
Values (197, 90, 10);
Insert into MovieActor
Values (198, 155, 10);
Insert into MovieActor
Values (199, 5, 10);
Insert into MovieActor
Values (200, 51, 10);
Insert into MovieActor
Values (201, 143, 10);
Insert into MovieActor
Values (204, 75, 10);
Insert into MovieActor
Values (206, 119, 11);
Insert into MovieActor
Values (207, 30, 11);
Insert into MovieActor
Values (208, 107, 11);
Insert into MovieActor
Values (209, 43, 11);
Insert into MovieActor
Values (211, 119, 11);
Insert into MovieActor
Values (212, 30, 11);
Insert into MovieActor
Values (213, 107, 11);
Insert into MovieActor
Values (214, 43, 11);
Insert into MovieActor
Values (216, 119, 11);
Insert into MovieActor
Values (217, 30, 11);
Insert into MovieActor
Values (218, 107, 11);
Insert into MovieActor
Values (219, 43, 11);
Insert into MovieActor
Values (221, 119, 11);
Insert into MovieActor
Values (222, 30, 11);
Insert into MovieActor
Values (223, 107, 11);
Insert into MovieActor
Values (224, 43, 11);
Insert into MovieActor
Values (225, 4, 12);
Insert into MovieActor
Values (226, 122, 12);
Insert into MovieActor
Values (227, 84, 12);
Insert into MovieActor
Values (228, 29, 12);
Insert into MovieActor
Values (229, 116, 12);
Insert into MovieActor
Values (230, 158, 12);
Insert into MovieActor
Values (232, 159, 12);
Insert into MovieActor
Values (233, 146, 12);
Insert into MovieActor
Values (234, 89, 13);
Insert into MovieActor
Values (235, 49, 13);
Insert into MovieActor
Values (236, 71, 13);
Insert into MovieActor
Values (237, 18, 13);
Insert into MovieActor
Values (238, 95, 13);
Insert into MovieActor
Values (239, 156, 13);
Insert into MovieActor
Values (240, 89, 13);
Insert into MovieActor
Values (241, 49, 13);
Insert into MovieActor
Values (242, 71, 13);
Insert into MovieActor
Values (243, 18, 13);
Insert into MovieActor
Values (244, 95, 13);
Insert into MovieActor
Values (245, 156, 13);
Insert into MovieActor
Values (246, 89, 13);
Insert into MovieActor
Values (247, 49, 13);
Insert into MovieActor
Values (248, 71, 13);
Insert into MovieActor
Values (249, 18, 13);
Insert into MovieActor
Values (250, 95, 13);
Insert into MovieActor
Values (251, 156, 13);
Insert into MovieActor
Values (252, 62, 14);
Insert into MovieActor
Values (253, 22, 14);
Insert into MovieActor
Values (254, 139, 14);
Insert into MovieActor
Values (255, 58, 14);
Insert into MovieActor
Values (256, 104, 14);
Insert into MovieActor
Values (257, 154, 14);
Insert into MovieActor
Values (259, 108, 14);
Insert into MovieActor
Values (260, 110, 14);
Insert into MovieActor
Values (261, 24, 14);
Insert into MovieActor
Values (262, 125, 14);
Insert into MovieActor
Values (263, 109, 14);
Insert into MovieActor
Values (264, 91, 14);
Insert into MovieActor
Values (265, 133, 14);
Insert into MovieActor
Values (266, 160, 14);
Insert into MovieActor
Values (267, 163, 14);
Insert into MovieActor
Values (268, 68, 14);
Insert into MovieActor
Values (269, 62, 14);
Insert into MovieActor
Values (270, 22, 14);
Insert into MovieActor
Values (271, 139, 14);
Insert into MovieActor
Values (272, 58, 14);
Insert into MovieActor
Values (273, 104, 14);
Insert into MovieActor
Values (274, 154, 14);
Insert into MovieActor
Values (276, 108, 14);
Insert into MovieActor
Values (277, 110, 14);
Insert into MovieActor
Values (278, 24, 14);
Insert into MovieActor
Values (279, 125, 14);
Insert into MovieActor
Values (280, 109, 14);
Insert into MovieActor
Values (281, 91, 14);
Insert into MovieActor
Values (282, 133, 14);
Insert into MovieActor
Values (283, 160, 14);
Insert into MovieActor
Values (284, 163, 14);
Insert into MovieActor
Values (285, 68, 14);
Insert into MovieActor
Values (286, 62, 14);
Insert into MovieActor
Values (287, 22, 14);
Insert into MovieActor
Values (288, 139, 14);
Insert into MovieActor
Values (289, 58, 14);
Insert into MovieActor
Values (290, 104, 14);
Insert into MovieActor
Values (291, 154, 14);
Insert into MovieActor
Values (293, 108, 14);
Insert into MovieActor
Values (294, 110, 14);
Insert into MovieActor
Values (295, 24, 14);
Insert into MovieActor
Values (296, 125, 14);
Insert into MovieActor
Values (297, 109, 14);
Insert into MovieActor
Values (298, 91, 14);
Insert into MovieActor
Values (299, 133, 14);
Insert into MovieActor
Values (300, 160, 14);
Insert into MovieActor
Values (301, 163, 14);
Insert into MovieActor
Values (302, 68, 14);
Insert into MovieActor
Values (303, 62, 14);
Insert into MovieActor
Values (304, 22, 14);
Insert into MovieActor
Values (305, 139, 14);
Insert into MovieActor
Values (306, 58, 14);
Insert into MovieActor
Values (307, 104, 14);
Insert into MovieActor
Values (308, 154, 14);
Insert into MovieActor
Values (310, 108, 14);
Insert into MovieActor
Values (311, 110, 14);
Insert into MovieActor
Values (312, 24, 14);
Insert into MovieActor
Values (313, 125, 14);
Insert into MovieActor
Values (314, 109, 14);
Insert into MovieActor
Values (315, 91, 14);
Insert into MovieActor
Values (316, 133, 14);
Insert into MovieActor
Values (317, 160, 14);
Insert into MovieActor
Values (318, 163, 14);
Insert into MovieActor
Values (319, 68, 14);
Insert into MovieActor
Values (320, 37, 15);
Insert into MovieActor
Values (321, 23, 15);
Insert into MovieActor
Values (322, 152, 15);
Insert into MovieActor
Values (323, 1, 15);
Insert into MovieActor
Values (324, 112, 15);
Insert into MovieActor
Values (325, 53, 15);
Insert into MovieActor
Values (326, 127, 15);
Insert into MovieActor
Values (327, 162, 15);
Insert into MovieActor
Values (328, 8, 15);
Insert into MovieActor
Values (329, 149, 15);
Insert into MovieActor
Values (330, 40, 16);
Insert into MovieActor
Values (331, 150, 16);
Insert into MovieActor
Values (334, 121, 9);
Insert into MovieActor
Values (335, 148, 9);
Insert into MovieActor
Values (336, 50, 9);
Insert into MovieActor
Values (338, 14, 9);
Insert into MovieActor
Values (339, 16, 9);
Insert into MovieActor
Values (343, 74, 9);
Insert into MovieActor
Values (345, 121, 9);
Insert into MovieActor
Values (346, 148, 9);
Insert into MovieActor
Values (347, 50, 9);
Insert into MovieActor
Values (349, 14, 9);
Insert into MovieActor
Values (350, 16, 9);
Insert into MovieActor
Values (354, 74, 9);
Insert into MovieActor
Values (356, 121, 9);
Insert into MovieActor
Values (357, 148, 9);
Insert into MovieActor
Values (358, 50, 9);
Insert into MovieActor
Values (360, 14, 9);
Insert into MovieActor
Values (361, 16, 9);
Insert into MovieActor
Values (365, 74, 9);
Insert into MovieActor
Values (367, 121, 9);
Insert into MovieActor
Values (368, 148, 9);
Insert into MovieActor
Values (369, 50, 9);
Insert into MovieActor
Values (371, 14, 9);
Insert into MovieActor
Values (372, 16, 9);
Insert into MovieActor
Values (376, 74, 9);
Insert into MovieActor
Values (378, 121, 9);
Insert into MovieActor
Values (379, 148, 9);
Insert into MovieActor
Values (380, 50, 9);
Insert into MovieActor
Values (382, 14, 9);
Insert into MovieActor
Values (383, 16, 9);
Insert into MovieActor
Values (387, 74, 9);
Insert into MovieActor
Values (389, 121, 9);
Insert into MovieActor
Values (390, 148, 9);
Insert into MovieActor
Values (391, 50, 9);
Insert into MovieActor
Values (393, 14, 9);
Insert into MovieActor
Values (394, 16, 9);
Insert into MovieActor
Values (398, 74, 9);
Insert into MovieActor
Values (399, 2, 17);
Insert into MovieActor
Values (400, 136, 17);
Insert into MovieActor
Values (401, 63, 17);
Insert into MovieActor
Values (402, 138, 17);
Insert into MovieActor
Values (403, 47, 17);
Insert into MovieActor
Values (405, 78, 17);
Insert into MovieActor
Values (406, 9, 17);
Insert into MovieActor
Values (407, 19, 17);
Insert into MovieActor
Values (408, 144, 17);
Insert into MovieActor
Values (409, 44, 17);
Insert into MovieActor
Values (410, 54, 9);
Insert into MovieActor
Values (411, 26, 9);
Insert into MovieActor
Values (412, 124, 9);
Insert into MovieActor
Values (413, 126, 9);
Insert into MovieActor
Values (414, 80, 9);
Insert into MovieActor
Values (415, 46, 9);
Insert into MovieActor
Values (416, 140, 9);
Insert into MovieActor
Values (417, 17, 9);
Insert into MovieActor
Values (418, 69, 9);
Insert into MovieActor
Values (419, 83, 9);
Insert into MovieActor
Values (420, 66, 9);
Insert into MovieActor
Values (421, 88, 9);
Insert into MovieActor
Values (422, 52, 9);
Insert into MovieActor
Values (423, 132, 9);
Insert into MovieActor
Values (424, 21, 9);
Insert into MovieActor
Values (425, 54, 9);
Insert into MovieActor
Values (426, 26, 9);
Insert into MovieActor
Values (427, 124, 9);
Insert into MovieActor
Values (428, 126, 9);
Insert into MovieActor
Values (429, 80, 9);
Insert into MovieActor
Values (431, 121, 9);
Insert into MovieActor
Values (432, 148, 9);
Insert into MovieActor
Values (433, 50, 9);
Insert into MovieActor
Values (435, 14, 9);
Insert into MovieActor
Values (436, 16, 9);
Insert into MovieActor
Values (440, 74, 9);
Insert into MovieActor
Values (441, 46, 9);
Insert into MovieActor
Values (442, 140, 9);
Insert into MovieActor
Values (443, 17, 9);
Insert into MovieActor
Values (444, 69, 9);
Insert into MovieActor
Values (445, 83, 9);
Insert into MovieActor
Values (446, 66, 9);
Insert into MovieActor
Values (447, 88, 9);
Insert into MovieActor
Values (448, 52, 9);
Insert into Genre
Values (1, 1, 'documentary film');
Insert into Genre
Values (2, 2, 'drama film');
Insert into Genre
Values (3, 2, 'drama film');
Insert into Genre
Values (4, 2, 'drama film');
Insert into Genre
Values (5, 2, 'drama film');
Insert into Genre
Values (6, 2, 'drama film');
Insert into Genre
Values (7, 2, 'drama film');
Insert into Genre
Values (8, 2, 'drama film');
Insert into Genre
Values (9, 2, 'drama film');
Insert into Genre
Values (10, 2, 'film noir');
Insert into Genre
Values (11, 2, 'film noir');
Insert into Genre
Values (12, 2, 'film noir');
Insert into Genre
Values (13, 2, 'film noir');
Insert into Genre
Values (14, 2, 'film noir');
Insert into Genre
Values (15, 2, 'film noir');
Insert into Genre
Values (16, 2, 'film noir');
Insert into Genre
Values (17, 2, 'film noir');
Insert into Genre
Values (18, 2, 'heist film');
Insert into Genre
Values (19, 2, 'heist film');
Insert into Genre
Values (20, 2, 'heist film');
Insert into Genre
Values (21, 2, 'heist film');
Insert into Genre
Values (22, 2, 'heist film');
Insert into Genre
Values (23, 2, 'heist film');
Insert into Genre
Values (24, 2, 'heist film');
Insert into Genre
Values (25, 2, 'heist film');
Insert into Genre
Values (26, 2, 'crime film');
Insert into Genre
Values (27, 2, 'crime film');
Insert into Genre
Values (28, 2, 'crime film');
Insert into Genre
Values (29, 2, 'crime film');
Insert into Genre
Values (30, 2, 'crime film');
Insert into Genre
Values (31, 2, 'crime film');
Insert into Genre
Values (32, 2, 'crime film');
Insert into Genre
Values (33, 2, 'crime film');
Insert into Genre
Values (34, 2, 'neo-noir');
Insert into Genre
Values (35, 2, 'neo-noir');
Insert into Genre
Values (36, 2, 'neo-noir');
Insert into Genre
Values (37, 2, 'neo-noir');
Insert into Genre
Values (38, 2, 'neo-noir');
Insert into Genre
Values (39, 2, 'neo-noir');
Insert into Genre
Values (40, 2, 'neo-noir');
Insert into Genre
Values (41, 2, 'neo-noir');
Insert into Genre
Values (42, 3, 'drama film');
Insert into Genre
Values (43, 3, 'drama film');
Insert into Genre
Values (44, 3, 'drama film');
Insert into Genre
Values (45, 3, 'drama film');
Insert into Genre
Values (46, 3, 'drama film');
Insert into Genre
Values (47, 3, 'drama film');
Insert into Genre
Values (48, 3, 'drama film');
Insert into Genre
Values (49, 3, 'drama film');
Insert into Genre
Values (50, 3, 'drama film');
Insert into Genre
Values (51, 3, 'drama film');
Insert into Genre
Values (52, 3, 'drama film');
Insert into Genre
Values (53, 3, 'drama film');
Insert into Genre
Values (54, 3, 'drama film');
Insert into Genre
Values (55, 3, 'drama film');
Insert into Genre
Values (56, 3, 'drama film');
Insert into Genre
Values (57, 3, 'drama film');
Insert into Genre
Values (58, 3, 'drama film');
Insert into Genre
Values (59, 3, 'drama film');
Insert into Genre
Values (60, 3, 'drama film');
Insert into Genre
Values (61, 3, 'drama film');
Insert into Genre
Values (62, 3, 'drama film');
Insert into Genre
Values (63, 3, 'drama film');
Insert into Genre
Values (64, 3, 'drama film');
Insert into Genre
Values (65, 3, 'drama film');
Insert into Genre
Values (66, 3, 'drama film');
Insert into Genre
Values (67, 3, 'drama film');
Insert into Genre
Values (68, 3, 'drama film');
Insert into Genre
Values (69, 3, 'drama film');
Insert into Genre
Values (70, 3, 'drama film');
Insert into Genre
Values (71, 3, 'drama film');
Insert into Genre
Values (72, 3, 'drama film');
Insert into Genre
Values (73, 3, 'drama film');
Insert into Genre
Values (74, 3, 'drama film');
Insert into Genre
Values (75, 3, 'drama film');
Insert into Genre
Values (76, 3, 'drama film');
Insert into Genre
Values (77, 3, 'drama film');
Insert into Genre
Values (78, 3, 'drama film');
Insert into Genre
Values (79, 3, 'drama film');
Insert into Genre
Values (80, 3, 'drama film');
Insert into Genre
Values (81, 3, 'drama film');
Insert into Genre
Values (82, 3, 'drama film');
Insert into Genre
Values (83, 3, 'drama film');
Insert into Genre
Values (84, 3, 'drama film');
Insert into Genre
Values (85, 3, 'drama film');
Insert into Genre
Values (86, 3, 'drama film');
Insert into Genre
Values (87, 3, 'drama film');
Insert into Genre
Values (88, 3, 'drama film');
Insert into Genre
Values (89, 3, 'drama film');
Insert into Genre
Values (90, 3, 'drama film');
Insert into Genre
Values (91, 3, 'drama film');
Insert into Genre
Values (92, 3, 'drama film');
Insert into Genre
Values (93, 3, 'drama film');
Insert into Genre
Values (94, 3, 'drama film');
Insert into Genre
Values (95, 3, 'drama film');
Insert into Genre
Values (96, 3, 'drama film');
Insert into Genre
Values (97, 3, 'drama film');
Insert into Genre
Values (98, 3, 'drama film');
Insert into Genre
Values (99, 3, 'drama film');
Insert into Genre
Values (100, 3, 'drama film');
Insert into Genre
Values (101, 4, 'spaghetti western');
Insert into Genre
Values (102, 4, 'spaghetti western');
Insert into Genre
Values (103, 4, 'spaghetti western');
Insert into Genre
Values (104, 4, 'spaghetti western');
Insert into Genre
Values (105, 4, 'spaghetti western');
Insert into Genre
Values (106, 4, 'spaghetti western');
Insert into Genre
Values (107, 4, 'spaghetti western');
Insert into Genre
Values (108, 4, 'spaghetti western');
Insert into Genre
Values (109, 4, 'spaghetti western');
Insert into Genre
Values (110, 4, 'spaghetti western');
Insert into Genre
Values (111, 4, 'spaghetti western');
Insert into Genre
Values (112, 4, 'spaghetti western');
Insert into Genre
Values (113, 4, 'spaghetti western');
Insert into Genre
Values (114, 4, 'spaghetti western');
Insert into Genre
Values (115, 4, 'spaghetti western');
Insert into Genre
Values (116, 5, 'comedy film');
Insert into Genre
Values (117, 5, 'comedy film');
Insert into Genre
Values (118, 5, 'comedy film');
Insert into Genre
Values (119, 5, 'comedy film');
Insert into Genre
Values (120, 5, 'comedy film');
Insert into Genre
Values (121, 5, 'LGBT-related film');
Insert into Genre
Values (122, 5, 'LGBT-related film');
Insert into Genre
Values (123, 5, 'LGBT-related film');
Insert into Genre
Values (124, 5, 'LGBT-related film');
Insert into Genre
Values (125, 5, 'LGBT-related film');
Insert into Genre
Values (126, 6, 'crime film');
Insert into Genre
Values (127, 6, 'crime film');
Insert into Genre
Values (128, 6, 'crime film');
Insert into Genre
Values (129, 6, 'crime film');
Insert into Genre
Values (130, 6, 'crime film');
Insert into Genre
Values (131, 6, 'crime film');
Insert into Genre
Values (132, 7, 'comedy-drama');
Insert into Genre
Values (133, 7, 'comedy-drama');
Insert into Genre
Values (134, 7, 'comedy-drama');
Insert into Genre
Values (135, 7, 'comedy-drama');
Insert into Genre
Values (136, 7, 'comedy-drama');
Insert into Genre
Values (137, 7, 'comedy-drama');
Insert into Genre
Values (138, 7, 'comedy-drama');
Insert into Genre
Values (139, 7, 'comedy-drama');
Insert into Genre
Values (140, 7, 'comedy-drama');
Insert into Genre
Values (141, 7, 'comedy-drama');
Insert into Genre
Values (142, 7, 'comedy-drama');
Insert into Genre
Values (143, 7, 'comedy-drama');
Insert into Genre
Values (144, 7, 'comedy-drama');
Insert into Genre
Values (145, 7, 'comedy-drama');
Insert into Genre
Values (146, 7, 'comedy-drama');
Insert into Genre
Values (147, 7, 'comedy-drama');
Insert into Genre
Values (148, 8, 'drama film');
Insert into Genre
Values (149, 8, 'drama film');
Insert into Genre
Values (150, 8, 'drama film');
Insert into Genre
Values (151, 8, 'drama film');
Insert into Genre
Values (152, 8, 'drama film');
Insert into Genre
Values (153, 8, 'drama film');
Insert into Genre
Values (154, 8, 'drama film');
Insert into Genre
Values (155, 8, 'drama film');
Insert into Genre
Values (156, 8, 'drama film');
Insert into Genre
Values (157, 8, 'drama film');
Insert into Genre
Values (158, 8, 'drama film');
Insert into Genre
Values (159, 9, 'fantasy film');
Insert into Genre
Values (160, 9, 'fantasy film');
Insert into Genre
Values (161, 9, 'fantasy film');
Insert into Genre
Values (162, 9, 'fantasy film');
Insert into Genre
Values (163, 9, 'fantasy film');
Insert into Genre
Values (164, 9, 'fantasy film');
Insert into Genre
Values (165, 9, 'fantasy film');
Insert into Genre
Values (166, 9, 'fantasy film');
Insert into Genre
Values (167, 9, 'fantasy film');
Insert into Genre
Values (168, 9, 'fantasy film');
Insert into Genre
Values (169, 9, 'fantasy film');
Insert into Genre
Values (170, 9, 'fantasy film');
Insert into Genre
Values (171, 9, 'fantasy film');
Insert into Genre
Values (172, 9, 'fantasy film');
Insert into Genre
Values (173, 9, 'fantasy film');
Insert into Genre
Values (174, 9, 'fantasy film');
Insert into Genre
Values (175, 9, 'fantasy film');
Insert into Genre
Values (176, 9, 'fantasy film');
Insert into Genre
Values (177, 9, 'fantasy film');
Insert into Genre
Values (178, 9, 'fantasy film');
Insert into Genre
Values (179, 9, 'fantasy film');
Insert into Genre
Values (180, 9, 'fantasy film');
Insert into Genre
Values (181, 9, 'fantasy film');
Insert into Genre
Values (182, 9, 'fantasy film');
Insert into Genre
Values (183, 9, 'fantasy film');
Insert into Genre
Values (184, 9, 'fantasy film');
Insert into Genre
Values (185, 9, 'fantasy film');
Insert into Genre
Values (186, 9, 'fantasy film');
Insert into Genre
Values (187, 9, 'fantasy film');
Insert into Genre
Values (188, 9, 'fantasy film');
Insert into Genre
Values (189, 9, 'fantasy film');
Insert into Genre
Values (190, 9, 'fantasy film');
Insert into Genre
Values (191, 9, 'fantasy film');
Insert into Genre
Values (192, 9, 'fantasy film');
Insert into Genre
Values (193, 9, 'fantasy film');
Insert into Genre
Values (194, 9, 'fantasy film');
Insert into Genre
Values (195, 10, 'science fiction film');
Insert into Genre
Values (196, 10, 'science fiction film');
Insert into Genre
Values (197, 10, 'science fiction film');
Insert into Genre
Values (198, 10, 'science fiction film');
Insert into Genre
Values (199, 10, 'science fiction film');
Insert into Genre
Values (200, 10, 'science fiction film');
Insert into Genre
Values (201, 10, 'science fiction film');
Insert into Genre
Values (202, 10, 'science fiction film');
Insert into Genre
Values (203, 10, 'science fiction film');
Insert into Genre
Values (204, 10, 'science fiction film');
Insert into Genre
Values (205, 11, 'drama film');
Insert into Genre
Values (206, 11, 'drama film');
Insert into Genre
Values (207, 11, 'drama film');
Insert into Genre
Values (208, 11, 'drama film');
Insert into Genre
Values (209, 11, 'drama film');
Insert into Genre
Values (210, 11, 'drama film');
Insert into Genre
Values (211, 11, 'drama film');
Insert into Genre
Values (212, 11, 'drama film');
Insert into Genre
Values (213, 11, 'drama film');
Insert into Genre
Values (214, 11, 'drama film');
Insert into Genre
Values (215, 11, 'thriller film');
Insert into Genre
Values (216, 11, 'thriller film');
Insert into Genre
Values (217, 11, 'thriller film');
Insert into Genre
Values (218, 11, 'thriller film');
Insert into Genre
Values (219, 11, 'thriller film');
Insert into Genre
Values (220, 11, 'thriller film');
Insert into Genre
Values (221, 11, 'thriller film');
Insert into Genre
Values (222, 11, 'thriller film');
Insert into Genre
Values (223, 11, 'thriller film');
Insert into Genre
Values (224, 11, 'thriller film');
Insert into Genre
Values (225, 12, 'drama film');
Insert into Genre
Values (226, 12, 'drama film');
Insert into Genre
Values (227, 12, 'drama film');
Insert into Genre
Values (228, 12, 'drama film');
Insert into Genre
Values (229, 12, 'drama film');
Insert into Genre
Values (230, 12, 'drama film');
Insert into Genre
Values (231, 12, 'drama film');
Insert into Genre
Values (232, 12, 'drama film');
Insert into Genre
Values (233, 12, 'drama film');
Insert into Genre
Values (234, 13, 'drama film');
Insert into Genre
Values (235, 13, 'drama film');
Insert into Genre
Values (236, 13, 'drama film');
Insert into Genre
Values (237, 13, 'drama film');
Insert into Genre
Values (238, 13, 'drama film');
Insert into Genre
Values (239, 13, 'drama film');
Insert into Genre
Values (240, 13, 'action film');
Insert into Genre
Values (241, 13, 'action film');
Insert into Genre
Values (242, 13, 'action film');
Insert into Genre
Values (243, 13, 'action film');
Insert into Genre
Values (244, 13, 'action film');
Insert into Genre
Values (245, 13, 'action film');
Insert into Genre
Values (246, 13, 'martial arts film');
Insert into Genre
Values (247, 13, 'martial arts film');
Insert into Genre
Values (248, 13, 'martial arts film');
Insert into Genre
Values (249, 13, 'martial arts film');
Insert into Genre
Values (250, 13, 'martial arts film');
Insert into Genre
Values (251, 13, 'martial arts film');
Insert into Genre
Values (252, 14, 'comedy film');
Insert into Genre
Values (253, 14, 'comedy film');
Insert into Genre
Values (254, 14, 'comedy film');
Insert into Genre
Values (255, 14, 'comedy film');
Insert into Genre
Values (256, 14, 'comedy film');
Insert into Genre
Values (257, 14, 'comedy film');
Insert into Genre
Values (258, 14, 'comedy film');
Insert into Genre
Values (259, 14, 'comedy film');
Insert into Genre
Values (260, 14, 'comedy film');
Insert into Genre
Values (261, 14, 'comedy film');
Insert into Genre
Values (262, 14, 'comedy film');
Insert into Genre
Values (263, 14, 'comedy film');
Insert into Genre
Values (264, 14, 'comedy film');
Insert into Genre
Values (265, 14, 'comedy film');
Insert into Genre
Values (266, 14, 'comedy film');
Insert into Genre
Values (267, 14, 'comedy film');
Insert into Genre
Values (268, 14, 'comedy film');
Insert into Genre
Values (269, 14, 'comedy film');
Insert into Genre
Values (270, 14, 'comedy film');
Insert into Genre
Values (271, 14, 'comedy film');
Insert into Genre
Values (272, 14, 'comedy film');
Insert into Genre
Values (273, 14, 'comedy film');
Insert into Genre
Values (274, 14, 'comedy film');
Insert into Genre
Values (275, 14, 'comedy film');
Insert into Genre
Values (276, 14, 'comedy film');
Insert into Genre
Values (277, 14, 'comedy film');
Insert into Genre
Values (278, 14, 'comedy film');
Insert into Genre
Values (279, 14, 'comedy film');
Insert into Genre
Values (280, 14, 'comedy film');
Insert into Genre
Values (281, 14, 'comedy film');
Insert into Genre
Values (282, 14, 'comedy film');
Insert into Genre
Values (283, 14, 'comedy film');
Insert into Genre
Values (284, 14, 'comedy film');
Insert into Genre
Values (285, 14, 'comedy film');
Insert into Genre
Values (286, 14, 'comedy-drama');
Insert into Genre
Values (287, 14, 'comedy-drama');
Insert into Genre
Values (288, 14, 'comedy-drama');
Insert into Genre
Values (289, 14, 'comedy-drama');
Insert into Genre
Values (290, 14, 'comedy-drama');
Insert into Genre
Values (291, 14, 'comedy-drama');
Insert into Genre
Values (292, 14, 'comedy-drama');
Insert into Genre
Values (293, 14, 'comedy-drama');
Insert into Genre
Values (294, 14, 'comedy-drama');
Insert into Genre
Values (295, 14, 'comedy-drama');
Insert into Genre
Values (296, 14, 'comedy-drama');
Insert into Genre
Values (297, 14, 'comedy-drama');
Insert into Genre
Values (298, 14, 'comedy-drama');
Insert into Genre
Values (299, 14, 'comedy-drama');
Insert into Genre
Values (300, 14, 'comedy-drama');
Insert into Genre
Values (301, 14, 'comedy-drama');
Insert into Genre
Values (302, 14, 'comedy-drama');
Insert into Genre
Values (303, 14, 'comedy-drama');
Insert into Genre
Values (304, 14, 'comedy-drama');
Insert into Genre
Values (305, 14, 'comedy-drama');
Insert into Genre
Values (306, 14, 'comedy-drama');
Insert into Genre
Values (307, 14, 'comedy-drama');
Insert into Genre
Values (308, 14, 'comedy-drama');
Insert into Genre
Values (309, 14, 'comedy-drama');
Insert into Genre
Values (310, 14, 'comedy-drama');
Insert into Genre
Values (311, 14, 'comedy-drama');
Insert into Genre
Values (312, 14, 'comedy-drama');
Insert into Genre
Values (313, 14, 'comedy-drama');
Insert into Genre
Values (314, 14, 'comedy-drama');
Insert into Genre
Values (315, 14, 'comedy-drama');
Insert into Genre
Values (316, 14, 'comedy-drama');
Insert into Genre
Values (317, 14, 'comedy-drama');
Insert into Genre
Values (318, 14, 'comedy-drama');
Insert into Genre
Values (319, 14, 'comedy-drama');
Insert into Genre
Values (320, 15, 'action film');
Insert into Genre
Values (321, 15, 'action film');
Insert into Genre
Values (322, 15, 'action film');
Insert into Genre
Values (323, 15, 'action film');
Insert into Genre
Values (324, 15, 'action film');
Insert into Genre
Values (325, 15, 'action film');
Insert into Genre
Values (326, 15, 'action film');
Insert into Genre
Values (327, 15, 'action film');
Insert into Genre
Values (328, 15, 'action film');
Insert into Genre
Values (329, 15, 'action film');
Insert into Genre
Values (330, 16, 'mystery film');
Insert into Genre
Values (331, 16, 'mystery film');
Insert into Genre
Values (332, 16, 'mystery film');
Insert into Genre
Values (333, 9, 'fantasy film');
Insert into Genre
Values (334, 9, 'fantasy film');
Insert into Genre
Values (335, 9, 'fantasy film');
Insert into Genre
Values (336, 9, 'fantasy film');
Insert into Genre
Values (337, 9, 'fantasy film');
Insert into Genre
Values (338, 9, 'fantasy film');
Insert into Genre
Values (339, 9, 'fantasy film');
Insert into Genre
Values (340, 9, 'fantasy film');
Insert into Genre
Values (341, 9, 'fantasy film');
Insert into Genre
Values (342, 9, 'fantasy film');
Insert into Genre
Values (343, 9, 'fantasy film');
Insert into Genre
Values (344, 9, 'action film');
Insert into Genre
Values (345, 9, 'action film');
Insert into Genre
Values (346, 9, 'action film');
Insert into Genre
Values (347, 9, 'action film');
Insert into Genre
Values (348, 9, 'action film');
Insert into Genre
Values (349, 9, 'action film');
Insert into Genre
Values (350, 9, 'action film');
Insert into Genre
Values (351, 9, 'action film');
Insert into Genre
Values (352, 9, 'action film');
Insert into Genre
Values (353, 9, 'action film');
Insert into Genre
Values (354, 9, 'action film');
Insert into Genre
Values (355, 9, 'science fiction film');
Insert into Genre
Values (356, 9, 'science fiction film');
Insert into Genre
Values (357, 9, 'science fiction film');
Insert into Genre
Values (358, 9, 'science fiction film');
Insert into Genre
Values (359, 9, 'science fiction film');
Insert into Genre
Values (360, 9, 'science fiction film');
Insert into Genre
Values (361, 9, 'science fiction film');
Insert into Genre
Values (362, 9, 'science fiction film');
Insert into Genre
Values (363, 9, 'science fiction film');
Insert into Genre
Values (364, 9, 'science fiction film');
Insert into Genre
Values (365, 9, 'science fiction film');
Insert into Genre
Values (366, 9, 'mystery film');
Insert into Genre
Values (367, 9, 'mystery film');
Insert into Genre
Values (368, 9, 'mystery film');
Insert into Genre
Values (369, 9, 'mystery film');
Insert into Genre
Values (370, 9, 'mystery film');
Insert into Genre
Values (371, 9, 'mystery film');
Insert into Genre
Values (372, 9, 'mystery film');
Insert into Genre
Values (373, 9, 'mystery film');
Insert into Genre
Values (374, 9, 'mystery film');
Insert into Genre
Values (375, 9, 'mystery film');
Insert into Genre
Values (376, 9, 'mystery film');
Insert into Genre
Values (377, 9, 'film adaptation');
Insert into Genre
Values (378, 9, 'film adaptation');
Insert into Genre
Values (379, 9, 'film adaptation');
Insert into Genre
Values (380, 9, 'film adaptation');
Insert into Genre
Values (381, 9, 'film adaptation');
Insert into Genre
Values (382, 9, 'film adaptation');
Insert into Genre
Values (383, 9, 'film adaptation');
Insert into Genre
Values (384, 9, 'film adaptation');
Insert into Genre
Values (385, 9, 'film adaptation');
Insert into Genre
Values (386, 9, 'film adaptation');
Insert into Genre
Values (387, 9, 'film adaptation');
Insert into Genre
Values (388, 9, 'thriller film');
Insert into Genre
Values (389, 9, 'thriller film');
Insert into Genre
Values (390, 9, 'thriller film');
Insert into Genre
Values (391, 9, 'thriller film');
Insert into Genre
Values (392, 9, 'thriller film');
Insert into Genre
Values (393, 9, 'thriller film');
Insert into Genre
Values (394, 9, 'thriller film');
Insert into Genre
Values (395, 9, 'thriller film');
Insert into Genre
Values (396, 9, 'thriller film');
Insert into Genre
Values (397, 9, 'thriller film');
Insert into Genre
Values (398, 9, 'thriller film');
Insert into Genre
Values (399, 17, 'coming-of-age story');
Insert into Genre
Values (400, 17, 'coming-of-age story');
Insert into Genre
Values (401, 17, 'coming-of-age story');
Insert into Genre
Values (402, 17, 'coming-of-age story');
Insert into Genre
Values (403, 17, 'coming-of-age story');
Insert into Genre
Values (404, 17, 'coming-of-age story');
Insert into Genre
Values (405, 17, 'coming-of-age story');
Insert into Genre
Values (406, 17, 'coming-of-age story');
Insert into Genre
Values (407, 17, 'coming-of-age story');
Insert into Genre
Values (408, 17, 'coming-of-age story');
Insert into Genre
Values (409, 17, 'coming-of-age story');
Insert into Genre
Values (410, 9, 'fantasy film');
Insert into Genre
Values (411, 9, 'fantasy film');
Insert into Genre
Values (412, 9, 'fantasy film');
Insert into Genre
Values (413, 9, 'fantasy film');
Insert into Genre
Values (414, 9, 'fantasy film');
Insert into Genre
Values (415, 9, 'action film');
Insert into Genre
Values (416, 9, 'action film');
Insert into Genre
Values (417, 9, 'action film');
Insert into Genre
Values (418, 9, 'action film');
Insert into Genre
Values (419, 9, 'action film');
Insert into Genre
Values (420, 9, 'action film');
Insert into Genre
Values (421, 9, 'action film');
Insert into Genre
Values (422, 9, 'action film');
Insert into Genre
Values (423, 9, 'action film');
Insert into Genre
Values (424, 9, 'action film');
Insert into Genre
Values (425, 9, 'action film');
Insert into Genre
Values (426, 9, 'action film');
Insert into Genre
Values (427, 9, 'action film');
Insert into Genre
Values (428, 9, 'action film');
Insert into Genre
Values (429, 9, 'action film');
Insert into Genre
Values (430, 9, 'action film');
Insert into Genre
Values (431, 9, 'action film');
Insert into Genre
Values (432, 9, 'action film');
Insert into Genre
Values (433, 9, 'action film');
Insert into Genre
Values (434, 9, 'action film');
Insert into Genre
Values (435, 9, 'action film');
Insert into Genre
Values (436, 9, 'action film');
Insert into Genre
Values (437, 9, 'action film');
Insert into Genre
Values (438, 9, 'action film');
Insert into Genre
Values (439, 9, 'action film');
Insert into Genre
Values (440, 9, 'action film');
Insert into Genre
Values (441, 9, 'action film');
Insert into Genre
Values (442, 9, 'action film');
Insert into Genre
Values (443, 9, 'action film');
Insert into Genre
Values (444, 9, 'action film');
Insert into Genre
Values (445, 9, 'action film');
Insert into Genre
Values (446, 9, 'action film');
Insert into Genre
Values (447, 9, 'action film');
Insert into Genre
Values (448, 9, 'action film');
