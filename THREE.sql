CREATE TABLE user(id int PRIMARY KEY, firstname varchar(20), lastname varchar(20), age int, address varchar(25));
DRop table user;
SELECT * FROM user;
SELECT * FROM user WHERE id = 3;
SELECT * FROM user WHERE address = 'delhi';
-- IN CONDITION--
SELECT * FROM user WHERE id IN (1,2,3,4);
 
 -- AND CONDITION--
 SELECT * FROM user WHERE address = 'delhi' AND lastname = 'patil';
 
 -- OR CONDITION --
  SELECT * FROM user WHERE address = 'pune' OR lastname = 'patil';

-- LIMIT COMMAND --
SELECT * FROM user LIMIT 4; 

-- ORDER BY IN ASCENDING AMD DESCENDING COMMAND --
SELECT * FROM user ORDER BY age ASC;
SELECT * FROM user ORDER BY age DESC;

-- IF U WANT LAST THREE  in REVERSE ORDER --
SELECT * FROM user ORDER BY id DESC LIMIT 3;

-- COUNT COMMAND-- 
-- FOR TO SEE HOE MANY DATA IS--


-- TO CHECK MINIMUM AND MAX AGE IN DATA --
SELECT MIN(age) FROM user;
SELECT MAX(age) FROM user;
SELECT AVG(age) FROM user;

-- AS COMMAND : TO CHANGE COLUMN NAME TEMPORARILY --
SELECT COUNT(*) AS 'std count' FROM user WHERE address = 'delhi'; 



INSERT INTO user VALUES (1,'vinod','borse',18, 'pune'), 
					  (2, 'don', 'DADA',90, 'faltu gali' ), 
                      (3,'anarkali','didi',20,'salim ki gali'),
					  (4,'jayesh','patil',65,	'pata nahi'),
                      (5, 'aliya','patil', 23, 'mumbai'),
                      (6,'arjun', 'patel', 24, 'surat');



-- UPDATE QUERY--
UPDATE user SET lastname = 'savle' WHERE firstname = 'jayesh';
UPDATE user SET address = 'pune' WHERE address = 'surat';
UPDATE user SET address = 'delhi' WHERE address = 'pune';

-- DELETE QUERY--
DELETE FROM user WHERE id = 4;




SELECT * FROM student;
SELECT * FROM MARKS;
INSERT INTO marks VALUES(90, 90, 3);


SELECT * FROM student WHERE name = 'vinod';
SELECT * FROM marks WHERE rn = 1;

