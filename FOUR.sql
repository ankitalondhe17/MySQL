CREATE database db1; 
DROP TABLE student;
SELECT * FROM student;
CREATE TABLE student(rollno int PRIMARY KEY, name varchar(20), batch int);
INSERT INTO student(rollno,name,batch)VALUES(1,'Vinod',2),(2,'Don',1),(3,'Rahul',1),(4,'Anarkali',2),(5,'Baba',2);

CREATE TABLE marks( rno int, 
                    Hindi int, 
                    Marathi int,
                    FOREIGN KEY(rno) REFERENCES student(rollno));
INSERT INTO marks(rno,Hindi,Marathi)VALUES(2,67,34),(1,90,89),(3,32,90);
SELECT * FROM marks;

-- if u want get rahul marks then this is the query --
SELECT * FROM student WHERE name = 'Rahul';
SELECT * FROM marks WHERE rno = 3;

-- JOINS --
SELECT * FROM student JOIN marks ON marks.rno = student.rollno;
-- INNER JOIN --
SELECT * FROM student INNER JOIN marks ON marks.rno = student.rollno;
-- LEFT JOIN --
SELECT * FROM student LEFT JOIN marks ON marks.rno = student.rollno;
-- RIGHT JOINS--
SELECT * FROM student RIGHT JOIN marks ON marks.rno = student.rollno;

SELECT student.rollno, student.name, marks.Hindi, marks.Marathi 
FROM student 
INNER JOIN marks ON marks.rno = student.rollno;

SELECT s.rollno, s.name, m.Hindi, m.Marathi 
FROM student s
INNER JOIN marks m ON m.rno = s.rollno;