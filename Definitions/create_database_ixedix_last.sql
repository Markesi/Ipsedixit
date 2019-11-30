CREATE DATABASE ixedixi
WITH ENCODING='UTF8'
CONNECTION LIMIT=2;

CREATE TYPE user_role AS ENUM ('administrator','teacher', 'student');
CREATE EXTENSION citext;

CREATE TABLE users (
usID SERIAL NOT NULL PRIMARY KEY,
fname varchar(30) NOT NULL,
lname varchar(30) NOT NULL,
role user_role,
address varchar(50),
city varchar(18),
phone integer,
birthday date,
email citex NOT NULL UNIQUE,
pwdigest varchar not null
);

INSERT INTO users (usID, fname, lname, role, address, city, phone, birthday, email, pwdigest)
VALUES (default, 'Anna', 'Puu', 'administrator', 'Kirkotie 30', 'Nurmo', '1986-08-21', 'anna.puu@admin.org', md5('sal2-S@Zna'),
VALUES (default, 'Anna', 'Puu', 'administrator', 'Kirkotie 30', 'Nurmo', '1986-08-21', 'arno.koivu@admin.org', md5('sal2-S@Zna')
);

INSERT INTO users (usID, fname, lname, role, address, city, phone, birthday, email, pwdigest)
VALUES 
(default, 'Jussi', 'Takaneva', 'teacher', 'Niementie 14', 'Ylistaro', '1980-12-12', 'jussi@takaneva.net', md5('password3.2'),
(default, 'Mikko', 'Koski', 'teacher', 'Pohantie 4', 'Seinäjoki', '1976-04-06', 'mikko.koski@seinajoki.fi', md5('Q6m1kK7\zY.2'),
(default, 'Susanna', 'Sello', 'teacher', 'Koskentie 44', 'Lapua', '1978-01-03', 'susanna.sello@seinajoki.fi', md5('Z3,14mK3susku'),
(default, 'Jorma', 'Lehti', 'teacher', 'Valkiavuorentie 3', 'Seinäjoki', '1972-07-23', 'jorma.lehti@seinajoki.fi', md5('LehtiJoO-345%1'),
(default, 'Elias', 'Olio', 'teacher', 'Karhutie 23', 'Seinäjoki', '1074-09-19', 'elias.olio@seinajoki.fi', md5('O1io.eLias-T5'),

);

INSERT INTO users (usID, fname, lname, role, address, city, phone, birthday, email, pwdigest)
VALUES (default, 'Seppo', 'Niemi', 'student', 'Koulutie 24', 'Seinäjoki', '2007-01-02', 'seppo.niemi@seinajoki.fi', md5('Niem1S3p.2'));


INSERT INTO users 
(usID, fname, lname, role, address, city, phone, birthday, email, pwdigest)
VALUES
(default, 'Janne', 'Otokka', 'student', 'Rengastie 3', 'Seinäjoki', '2011-07-20', 'janne.otokka@komia.fi', md5('Oto20Janne+11'),
(default, 'Sanna', 'Lehtinen', 'student', 'Karhunpolku 33', 'Seinäjoki', '2011-01-19', 'sanna.lehtinen@komia.fi', md5('Zann2.1sGreaT'),
(default, 'Jukka', 'Kostamo', 'student', 'Kultankulja 26', 'Seinäjoki', '2009-04-08', 'liisa.karhu@komia.fi', md5('1J4u8K3kA*'),
(default, 'Henri', 'Järvinen', 'student', 'Toritie 13', 'Ylistaro', '2008-06-12', 'henri.jarvinen@ylistaro.fi', md5('Henr16@ine2'),
(default, 'Eliisa', 'Sippola', 'student', 'Satamakatu 9', 'Seinäjoki', '2008-04-29', 'elli.sippola@komia.fi', md5('Zipo29EliA4'),
(default, 'Niko', 'Sippola', 'student', 'Satamakatu 9', 'Seinäjoki', '2011-08-15', 'niko.sippola@komia.fi', md5('Zipo1n1koU'),
(default, 'Riikka', 'Ralli', 'student', 'Asemakatu 7', 'Seinäjoki', '2010-09-24', 'rikka.ralli@komia.fi', md5('3NrIi+Kk2Ra'),
(default, 'Liisa', 'Karhu', 'student', 'Hopeantie 76', 'Seinäjoki', '2008-05-09', 'liisa.karhu@komia.fi', md5('948L1Kka-6'),
(default, 'Toni', 'Passi', 'student', 'Kirkokie 6', 'Seinäjoki', '2010-10-09', 'toni.passi@komia.fi', md5('Pas6+NotU7'),
(default, 'Matti', 'Passi', 'student', 'Kirkokie 6', 'Seinäjoki', '2008-11-13', 'matti.passi@komia.fi', md5('IttaM3+P+Ax7');


CREATE TYPE word_role AS ENUM ('verb', 'noun', 'pronoun', 'conjunction', 'adjective', 'adverb', 'abbreviation', 'numeral', 'preposition', 'proper noun');

CREATE TABLE wordlist (
wlID SERIAL NOT NULL PRIMARY KEY,
word VARCHAR(20),
counted INTEGER,
percentage DOUBLE,
pos word_role,
used INTEGER,
nrletters INTEGER
);

/* -- To Copy from csv file

CREATE TABLE wordlist (
wlID INTEGER,
word VARCHAR(20),
counted INTEGER,
percentage DOUBLE,
pos word_role,
used INTEGER,
nrletters INTEGER
);

 COPY wordlist FROM '/data/words/wordlist_frequency_comma.csv' HEADER CSV DELIMITER ',';

 ALTER TABLE wordlist ALTER COLUMN wlID SET PRIMARY KEY;
 
 -- End csv file copy code
 */

INSERT INTO wordlist
(wlID, word, counted, percentage, pos, used, nrletters)
VALUES
(default,'olla',2716396,4.614851,2,0,4),
(default,'ja',1566108,2.660641,9,0,2),
(default,'ei',593462,1.008225,2,0,2),
(default,'se',538609,0.915036,5,0,2),
(default,'että',443301,0.753118,9,0,4),
(default,'joka',417984,0.710108,5,0,4),
(default,'vuosi',344927,0.585992,1,0,5),
(default,'hän',302803,0.514428,5,0,3),
(default,'myös',267015,0.453628,6,0,4),
(default,'saada',248176,0.421623,2,0,5);



CREATE TABLE enwords (
enID SERIAL NOT NULL PRIMARY KEY,
enword VARCHAR(40)
);

/* -- To Copy from csv file

CREATE TABLE enwords (
enID INT,
enword VARCHAR(40)
);

COPY enwords FROM '/data/words/enwords.csv' HEADER CSV DELIMITER ',';

ALTER TABLE enwords ALTER COLUMN enID SET PRIMARY KEY;

-- End csv file copy code
 */

INSERT INTO enwords
(enID, enword)
VALUES
(default,'to be'),
(default,'and'),	
(default, 'No'),	
(default, 'it'),	
(default, 'that'),	
(default, 'which'),	
(default, 'year'),	
(default, 'he'),	
(default, 'also'),	
(default, 'get');	

	
/* -- To Copy from csv file

CREATE TABLE wordlist_enwords (
word INTEGER ,
enword INTEGER
);

COPY wordlist_enwords FROM '/data/words/wordlist_enwords.csv' HEADER CSV DELIMITER ',';

ALTER TABLE wordlist_enwords ALTER COLUMN word REFERENCES wordlist(wlID);
ALTER TABLE wordlist_enwords ALTER COLUMN enword REFERENCES enwords(enID);

-- End csv file copy code
 */

CREATE TABLE wordlist_enwords (
word SERIAL NOT NULL,
enword SERIAL NOT NULL
);

-- On initializatio the tuples (word, enword) have equal values

INSERT INTO wordlist_enwords
(word, enword)
SELECT x id, x
FROM unnest(ARRAY[1,2,3,4,5,6,7,8,9,10]) x;

-- ADD REFERENCES
ALTER TABLE wordlist_enwords ALTER COLUMN word REFERENCES wordlist(wlID);
ALTER TABLE wordlist_enwords ALTER COLUMN enword REFERENCES enwords(enID);



CREATE TABLE exercise (
exID SERIAL PRIMARY KEY
title varchar(50),
description varchar(200),
kind int,
created date,
usedtimes int
);

INSERT INTO exercise (exID, title, description, kind, created, usedtimes)
VALUES 
(default, 'koe verbit', 'verbisanasto koe', 1, '2019-10-01',0),
(default, 'koe adjektiivit', 'adjektivien koe', 2, '2019-11-01',0),
(default, 'harjoitus nominit', 'nominikirjoitus harjoitus', 1, '2019-09-11',0),
(default, 'harjoitus numeraalit', 'numeraalit oikeinkirjitus harka', 1, '2019-10-12',0);

CREATE TABLE class (
clID SERIAL PRIMARY KEY,
classname varchar(10),
room varchar(10,
floor INTEGER,
schoolyear INTEGER
);

INSERT INTO class (clID, classname, room, floor, schoolyear)
VALUES (default, '3A', 'A345.1', 3, '2019');


CREATE TABLE student_class(
scID integer SERIAL PRIMARY KEY,
student INTEGER NOT NULL REFERENCES users(usID),
class INTEGER NOT NULL REFERENCES class(clID)
);

INSERT INTO student_class (scID, student, class)
VALUES (default, 3, 1);


CREATE TABLE class_exercise (
clexID SERIAL NOT NULL PRIMARY KEY,
assignedto INTEGER REFERENCES student_class(class),
assignedby INTEGER REFERENCES users(usID),
exercise INTEGER REFERENCES
duedate DATE,
delivered DATE,
reviewed DATE,
correction VARCHAR(300),
commented VARCHAR(300)
);

INSERT INTO class_exercise (clexID, assignedto, assignardby, exercise, duedate, delivered, reviewed, correction, commented)
VALUES (default, 1, 2, 1, '2019-11-20', NULL, NULL, NULL, NULL);




CREATE TABLE image (
imID SERIAL PRIMARY KEY,
name varchar(30),
imgformat varchar(8),
localfile varchar(200),
sourceurl varchar(400),
dwlurl varchar(400)
);



CREATE TABLE taglist (
tgID SERIAL PRIMARY KEY,
tagname varchar(20)
);



CREATE TABLE img_tag (
itID SERIAL PRIMARY KEY,
image INTEGER REFERENCES image(imID),
tag INTEGER REFERENCES taglist(tgID)
);



CREATE TABLE exercise_word (
ewID SERIAL PRIMARY KEY,
exercise INTEGER REFERENCES exercise(exID),
word INTEGER REFERENCES wordlist(wlID),
usedword varchar(20),
image INTEGER REFERENCES image(imID);


// Linked list of messagges
CREATE TABLE messages (
msID SERIAL PRIMARY KEY,
mstype VARCHAR(7)  // original, reply, forward, replyall
mstitle varchar(150),
mstext varchar(500),
mscreationdate date NOT NULL,
msisread boolean,
msischained boolean,							// If part of a message chain
mschainnext INTEGER REFERENCES messages(msID), //	pointer to the next message of the chain
)


// connects messages to sender, receiver
CREATE TABLE user_message (
umID SERIAL PRIMARY KEY,
messagetype VARCHAR(4), // to, from, cc, bb
messageread date,  // if null never read
message INTEGER REFERENCES messages(msID),
sender INTEGER REFERENCES users(usID),
receiver INTEGER REFERENCES users(usID)
);