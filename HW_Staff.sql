CREATE DATABASE homeworks;

USE homeworks;

CREATE TABLE staff (
id INT PRIMARY KEY AUTO_INCREMENT,
firstname VARCHAR(64) NOT NULL,
lastnsme VARCHAR(64) NOT NULL,
position VARCHAR(128),
age INT CHECK (age >= 0 AND age <= 110),
has_child CHAR(1) DEFAULT 'N',
username VARCHAR(128) UNIQUE
);

INSERT INTO staff (firstname, lastnsme, position, age, has_child, username) 
    VALUES  ('Anna', 'Daniels', 'Senior Teacher', 22, 'N', 'annakhach5'),
			('Tom', 'Austin', 'Junior Blogger', 25, 'Y', 'tom12345'),
			('Bill', 'Lorentz', 'Junior Web Developer', 40, 'Y', 'billt1'),
			('Lily', 'May', 'Junior Backend Developer', 25, 'Y', 'lil12'),
			('Nona', 'Lucky', 'Junior Teacher', 20, 'N', 'LuckyNona');
            
            
   SELECT *
   FROM staff;
   
DROP TABLE IF EXISTS staff;
DROP DATABASE IF EXISTS homeworks;
   
CREATE DATABASE tasks;
   
USE tasks;

CREATE TABLE Staff (
    id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(64) NOT NULL,
    lastname VARCHAR(64) NOT NULL,
    position VARCHAR(128),
    age INT CHECK (age >= 0 AND age <= 110),
    has_child CHAR(1) DEFAULT 'N',
    username VARCHAR(128) UNIQUE
);

INSERT INTO Staff (firstname, lastname, position, age, has_child, username) 
   VALUES   ('Anna', 'Daniels', 'Senior Teacher', 22, 'N', 'annakhach5'),
			('Tom', 'Austin', 'Junior Blogger', 25, 'Y', 'tom12345'),
			('Bill', 'Lorentz', 'Junior Web Developer', 40, 'Y', 'billt1'),
			('Lily', 'May', 'Junior Backend Developer', 25, 'Y', 'lil12'),
			('Nona', 'Lucky', 'Junior Teacher', 20, 'N', 'LuckyNona'),
			('Nancy', 'Greenberg', 'Middle UI Designer', 32, 'Y', 'nancy1'),
			('Daniel', 'Faviet', 'Senior UX Designer', 43, 'Y', 'favietD'),
			('Ally', 'Austin', 'Junior UI Designer', 28, 'N', 'ally1'),
			('Lily', 'Chen', 'Senior Teacher', 25, 'Y', 'lilychen'),
			('Anna', 'Austin', 'Middle Teacher', 34, 'Y', 'anna28'),
			('Alexander', 'Lorentz', 'Junior Backend Developer', 25, 'N', 'alex12345'),
			('Ashley', 'Lorentz', 'Junior UX Designer', 18, 'N', 'lorentz99'),
			('Tom', 'Lucky', 'Middle Blogger', 34, 'Y', 'lucky78'),
			('Ashley', 'Weiss', 'Junior Blogger', 18, 'N', 'weiss11'),
			('Tom', 'Weiss', 'Junior UI Designer', 18, 'N', 'tom222'),
			('Anna', 'Bloom', 'Middle UX Designer', 20, 'N', 'bloom5'),
			('Tom', 'Berg', 'Middle Teacher', 34, 'N', 'tommy1'),
			('Ashley', 'Berg', 'Senior Teacher', 37, 'N', 'ash89'),
			('Lily', 'Weiss', 'Middle Blogger', 45, 'N', 'lilyW1'),
			('Anna', 'Lorentz', 'Senior UX Designer', 31, 'N', 'annlo1'),
			('Ashley', 'Weiss', 'Middle UX Designer', 18, 'N', 'weiss1'),
			('Anna', 'Keren', 'Junior UX Designer', 34, 'N', 'annaK1');
            
   SELECT *
   FROM Staff;           

SELECT *
FROM Staff 
WHERE age > 20 AND age < 40;

SELECT * 
FROM Staff 
WHERE age < 30 OR age > 45;

SELECT firstname, lastname, age 
FROM Staff 
WHERE id IN (3, 7, 10);

SELECT * 
FROM Staff 
WHERE firstname LIKE 'A%' AND lastname LIKE '%S';




















   