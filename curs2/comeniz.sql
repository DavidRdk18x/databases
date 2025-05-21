SELECT s.id, c.titlu_curs FROM `student` AS s INNER JOIN note CROSS JOIN note AS n ON s.id = n.id_student

SELECT nume, prenume, titlu_curs FROM `profesor`AS p
LEFT JOIN didactic AS d ON p.id = d.id_prof
LEFT JOIN cursuri As c ON d.id_curs = c.id_curs
WHERE id =9;

SELECT * FROM `cursuri` WHERE id_curs NOT IN (SELECT id_curs FROM didactic);

SELECT * FROM `student` WHERE id NOT IN (SELECT id_student FROM note);
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                       ca RIGHT JOIN:

SELECT id_student, s.nume, s.prenume, COUNT(id_student) AS nr FROM `note`AS n
RIGHT JOIN student AS s ON n.id_student = s.id
GROUP BY id_student HAVING nr >=2;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
                        ca LEFT JOIN:

SELECT id_student, s.nume, s.prenume, COUNT(id_student) AS nr FROM `student`AS s
LEFT JOIN note AS n ON s.id = n.id_student
GROUP BY id_student HAVING nr >=2;
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
(SELECT nume, prenume FROM student WHERE prenume like 'ion%') UNION
(SELECT nume,prenume from profesor where prenume like 'ion%');

(SELECT nume, prenume, (CASE WHEN id >20 THEN 'student' END) AS type from student where prenume like 'ion%')
UNION
(SELECT nume, prenume, (CASE WHEN id <=20 THEN 'profesor' END) AS type from profesor where prenume like 'ion%');

SELECT s.nume, s.prenume, FORMAT(AVG(n.valoare),1) AS media_totala FROM student AS s 
LEFT JOIN note AS n ON s.id = n.id_student GROUP BY n.id_student;