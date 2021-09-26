CREATE DATABASE homework2;
\connect homework2;
create table clients (Id serial primary key, Name varchar, phone varchar);
insert into clients (Id, Name, phone) values (DEFAULT, 'Roman', '526789182734');
insert into clients (Id, Name, phone) values (DEFAULT, 'Arseniy', '657483921234');
insert into clients (Id, Name, phone) values (DEFAULT, 'Arseny', '526789143734');
insert into clients (Id, Name, phone) values (DEFAULT, 'Anna', '890285819507');
insert into clients (Id, Name, phone) values (DEFAULT, 'koly', '111111111111');
insert into clients (Id, Name, phone) values (DEFAULT, 'danil', '111111111111');
insert into clients (Id, Name, phone) values (DEFAULT, 'Kiril', '111111111111');
insert into clients (Id, Name, phone) values (DEFAULT, 'dasha', '111111111111');
insert into clients (Id, Name, phone) values (DEFAULT, 'rita', '111111111111');
insert into clients (Id, Name, phone) values (DEFAULT, 'tolik', '111111111111');

create table cars (Id serial primary key, Model varchar, number varchar);
insert into cars (Id, Model, number) values (DEFAULT, 'bwv', '11QWW11');
insert into cars (Id, Model, number) values (DEFAULT, 'audi', '1fWW11');
insert into cars (Id, Model, number) values (DEFAULT, 'lada', '1fWW211');
insert into cars (Id, Model, number) values (DEFAULT, 'porsh', '1we1');
insert into cars (Id, Model, number) values (DEFAULT, 'vaz', '1we1');
insert into cars (Id, Model, number) values (DEFAULT, 'kia', '1we1');
insert into cars (Id, Model, number) values (DEFAULT, 'toyota', '1we1');
insert into cars (Id, Model, number) values (DEFAULT, 'toyota camry', '1wefee1');
insert into cars (Id, Model, number) values (DEFAULT, 'hyundai', '1121e1');
insert into cars (Id, Model, number) values (DEFAULT, 'skoda', '11212231');

create table drivers (Id_drivers serial primary key, Id integer references cars(Id), name varchar);
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');
insert into drivers (Id_drivers, Id, name) values (DEFAULT, 3, 'Roman');

create table trips (Id_drivers integer REFERENCES drivers (Id_drivers), Id_clients integer REFERENCES clients (Id));
insert into trips (Id_drivers, Id_clients) values (3, 1);
insert into trips (Id_drivers, Id_clients) values (5, 2);
insert into trips (Id_drivers, Id_clients) values (6, 2);
insert into trips (Id_drivers, Id_clients) values (9, 10);
insert into trips (Id_drivers, Id_clients) values (2, 10);
insert into trips (Id_drivers, Id_clients) values (9, 9);
insert into trips (Id_drivers, Id_clients) values (8, 4);
insert into trips (Id_drivers, Id_clients) values (5, 2);
insert into trips (Id_drivers, Id_clients) values (8, 9);
insert into trips (Id_drivers, Id_clients) values (10, 10);
