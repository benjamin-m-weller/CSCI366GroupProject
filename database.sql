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
birthdate Date,
deathdate Date,
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
title varchar(20),
releaseDate varchar(20),
year integer,
Primary Key (mid)
);

create table Director(
did integer,
fname varchar(20),
lname varchar(20),
birthdate Date,
deathdate Date,
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



