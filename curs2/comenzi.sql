SELECT NOW();
SELECT CURRENT_DATE();
SELECT titlu_curs FROM cursuri;
SELECT * FROM `student`
SELECT nume,prenume FROM student;
SELECT * FROM `cursuri`
SELECT * FROM `didactic`
SELECT * FROM `student`
SELECT * FROM `student` where an<=2;
SELECT * FROM `student` where an<=2;
SELECT SUM(bursa) FROM student;
SELECT SUM(bursa) FROM student;
SELECT SUM(bursa) FROM `student` WHERE an = 1;
SELECT SUM(bursa) FROM `student` WHERE an = 1;
UPDATE student SET status = 'bursier' WHERE bursa IS NOT NULL;
SELECT * FROM `student`
SELECT * FROM `student`
SELECT * FROM `student`
SELECT * FROM `student`
SELECT * FROM `profesor`
SELECT * FROM `profesor`
SELECT nume, prenume from profesor;
SELECT nume, prenume from profesor;
SELECT nume AS "Nume Profesor", prenume FROM `profesor`;
SELECT nume AS "Nume Profesor", prenume FROM `profesor`;
SELECT an AS An , COUNT(id) AS nr_student1 FROM `student` ORDER BY 'an' ASC;