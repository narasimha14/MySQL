/*
  @author: Narasimha Murthy 
  This is an example to illustrate the usage of aggregate function like SUM.
  Similarly there are other aggregate functions like COUNT, AVG 
*/

CREATE TABLE todo_list (id INTEGER PRIMARY KEY, item TEXT, minutes INTEGER);
INSERT INTO todo_list VALUES (1, "Wash the dishes", 15);
INSERT INTO todo_list VALUES (2, "vacuuming", 20);
INSERT INTO todo_list VALUES (3, "Learn some stuff on KA", 30);
INSERT INTO todo_list VALUES (4, "Clean utensils", 25);
SELECT SUM(minutes) from todo_list;

