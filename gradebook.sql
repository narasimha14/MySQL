/*
  @author: Narasimha Murthy 
  This is an illustration of CASE statements in SQL.
  This set of statements output the count of number of students within grades A, B, C or F 
*/

CREATE TABLE student_grades (
	id INTEGER PRIMARY KEY AUTOINCREMENT,
	name TEXT,
	number_grade INTEGER,
	fraction_completed REAL);

INSERT INTO student_grades (name, number_grade, fraction_completed)
VALUES ("Winston", 90, 0.805);
INSERT INTO student_grades (name, number_grade, fraction_completed)
VALUES ("Winnefer", 95, 0.901);
INSERT INTO student_grades (name, number_grade, fraction_completed)
VALUES ("Winsteen", 85, 0.906);
INSERT INTO student_grades (name, number_grade, fraction_completed)
VALUES ("Wincifer", 66, 0.7054);
INSERT INTO student_grades (name, number_grade, fraction_completed)
VALUES ("Winster", 76, 0.5013);
INSERT INTO student_grades (name, number_grade, fraction_completed)
VALUES ("Winstonia", 82, 0.9045);
SELECT name, number_grade, ROUND(fraction_completed * 100) as percent_completed from student_grades;
SELECT COUNT(*),
CASE
	WHEN number_grade > 90 then "A"
	WHEN number_grade > 80 then "B"
	WHEN number_grade > 70 then "C"
ELSE "F"
END as "letter_grade"
from student_grades GROUP BY letter_grade;


