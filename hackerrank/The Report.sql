/* -------------- My Solution -------------- */

select name, grade , marks from students
inner join grades on students.marks >= grades.min_mark and students.marks <= grades.max_mark
where grade >7
order by grade desc, name;

select name = NULL, grade , marks from students
inner join grades on students.marks >= grades.min_mark and students.marks <= grades.max_mark
where grade < 8
order by grade desc, marks asc;

/* -------------- Optimal Solution -------------- */

SELECT IF(GRADES.GRADE>=8, STUDENTS.NAME, NULL),GRADES.GRADE, STUDENTS.MARKS
FROM GRADES, STUDENTS
WHERE STUDENTS.MARKS BETWEEN GRADES.MIN_MARK AND GRADES.MAX_MARK
ORDER BY GRADES.GRADE DESC, STUDENTS.NAME;
