SELECT * FROM student; 

INSERT INTO student(rollno, name, city) VALUES (11, 'sus', 'sasun'), (12, 'sigma', 'stiom'), (13, 'sor', 'paris');
insert into student values (14, 'annie', 'lohgaon'),(15, 'jennie', 'ramgaon');
ALTER TABLE student ADD lastname varchar(20);
ALTER TABLE student ADD city varchar(20);
ALTER TABLE student DROP Mobileno;
ALTER TABLE student DROP lastname;
ALTER TABLE student RENAME COLUMN city TO Address;
ALTER TABLE student MODIFY Address long;
DROP TABLE student;
TRUNCATE TABLE student;



SELECT * FROM student;
CREATE TABLE student (id int, name varchar(20), address varchar(20), mobileno int);
INSERT INTO student VALUES (1, 'vinod', 'pune', 123), (2, 'DON', 'PUNE', 999), (3, 'aliya', 'Mumbai', 100);
INSERT INTO student(id, name) VALUE (2, 'Sandip');
SELECT id, name FROM student;
SELECT id, name, mobileno, address FROM student;


-- NOT NILL CONSTRAINTS --
CREATE TABLE student(id int NOT NULL, name varchar(20), age int, address varchar(25));
INSERt INTO student (name)VALUE('Ankita');
SELECT * FROM student;
DROP TABLE student;

-- UNIQUE CONSTRAINTS
CREATE TABLE student(id int UNIQUE, name varchar(20), age int, address varchar(25));
INSERt INTO student (id,name)VALUE(1,'Ankita');
SELECT * FROM student;
DROP TABLE student;

-- PRIMARY KEY CONSTARINT --
CREATE TABLE student (id int PRIMARY KEY, name varchar(20), address varchar(20), mobileno int);
INSERT INTO student(id, name) VALUE (1, 'Sandip');

-- DEFAULT CONSTRAINTS--
SELECT * FROM student;
CREATE TABLE student (id int PRIMARY KEY, name varchar(20), address varchar(20) DEFAULT 'PUNE', mobileno int);
INSERT INTO student(id, name, address) VALUE (1, 'Sandip', 'SURAT');

-- AUTO- INCREMENT CONSTRAINTS--
SELECT * FROM student;
CREATE TABLE student (rollno int PRIMARY KEY AUTO_INCREMENT, name varchar(20), address varchar(20) DEFAULT 'PUNE', mobileno int);
INSERT INTO student(name, address) VALUES ('Sandip', 'SURAT'),('Sandip', 'SURAT'),('Sandip', 'SURAT');

-- FOREIGN CONSTRAINTS--
-- FOREIGN KEY (<child column name>) REFERENCES <PAarent table name> (<parent column name>);--
CREATE TABLE marks (
                     marathi int,
                     English int,
                     rn int,
                     FOREIGN KEY(rn) REFERENCES student (rollno));
                     
INSERT INTO student(name, address) VALUES ('Sandip', 'SURAT'),('Sandip', 'SURAT'),('Sandip', 'SURAT');
 SELECT * FROM marks;
 
 
 
 
 