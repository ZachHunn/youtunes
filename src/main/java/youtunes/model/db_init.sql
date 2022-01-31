-- drop database if exists
DROP DATABASE  IF EXISTS youtunes;

-- create database
CREATE DATABASE youtunes;

-- use database 
USE youtunes;

-- drop test user if exists 
DROP USER IF EXISTS 'youtunes_user'@'localhost';


-- create pysports_user and grant them all privileges to the pysports database 
CREATE USER 'youtunes_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL5IsGreat!';


-- grant all privileges to the pysports database to user pysports_user on localhost 
GRANT ALL PRIVILEGES ON youtunes.* TO'youtunes_user'@'localhost';


-- Drop the foreign key
ALTER TABLE album DROP FOREIGN KEY fk_artist;


-- drop tables if they are present
DROP TABLE IF EXISTS artist; 
DROP TABLE IF EXISTS album; 


-- create artist table 
CREATE TABLE artist (
	artist_id 		INT 			NOT NULL		AUTO_INCREMENT,
	first_name		VARCHAR(75)		NOT NULL,
	last_name		VARCHAR(75)		NOT NULL,
	PRIMARY KEY(artist_id)
);

-- create album table 
CREATE TABLE album (
	album_id		INT 			NOT NULL 		AUTO_INCREMENT,
	title			VARCHAR(150)	NOT NULL,
	price			DECIMAL(5, 2)	NOT NULL,
	genre			VARCHAR(75)		NOT NULL,
	img_url			VARCHAR(150)	NOT NULL,
	artist_id		INT				NOT NULL,
	PRIMARY KEY(album_id),
	CONSTRAINT fk_artist
	FOREIGN KEY(artist_id)
		REFERENCES artist(artist_id)
); 


-- insert artist statements 
INSERT INTO artist(first_name, last_name)
	VALUES('Baby', 'Keem');

INSERT INTO artist(first_name, last_name)
	VALUES('Frank', 'Ocean');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Michael', 'Jackson');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Wolfgang', 'Mozart');
	
INSERT INTO artist(first_name, last_name)
	VALUES('Marvin', 'Gaye');

INSERT INTO artist(first_name, last_name)
	VALUES('Michael', 'Stormzy');
	
	
-- insert album statements
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('The Melodic Blue', 19.99, 'Hip-Hop', 'keem.jpg', (SELECT artist_id FROM artist WHERE last_name = 'Keem'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Channel Orange', 141.59, 'R&B', 'ocean.jpg', (SELECT artist_id FROM artist WHERE last_name = 'Ocean'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Thriller', 32.18, 'Pop', 'michael.jpg', (SELECT artist_id FROM artist WHERE last_name = 'Jackson'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Mozart: The Symphonies', 23.18, 'Classical', 'mozart.jpeg', (SELECT artist_id FROM artist WHERE last_name = 'Mozart'));
	
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Marvin Gaye - Number 1s', 10.89, 'Soul', 'gaye.jpg', (SELECT artist_id FROM artist WHERE last_name = 'Gaye'));
INSERT INTO album(title, price, genre, img_url, artist_id)
	VALUES('Heavy Is The Head', 10.89, 'Grime', 'stormzy.jpg', (SELECT artist_id FROM artist WHERE last_name = 'Stormzy'));
	