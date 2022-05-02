--Query con Group by
--1
select count(*) as 'Quantità',DATEPART(yyyy, [enrolment_date])as Anno from students group by DATEPART(yyyy, [enrolment_date])
--2
select count(*) as 'Insegnanti nello stesso edificio',office_address from teachers group by office_address
--3
select exam_id,avg(vote)as media_voti from exam_student inner join exams on exam_id=id group by exam_id
--4
select count(*) as 'Corsi per dipartimento',departments.name as Dipartimento from courses inner join degrees on degree_id=degrees.id inner join departments on department_id=departments.id group by departments.name

--Query con JOIN
--1
select * from  students join degrees on degrees.id=degree_id where degrees.name='Corso di Laurea in Economia'
--2
select courses.name as Nome_corso , departments.name as Nome_dipartimento from courses join degrees on degree_id=degrees.id join departments on department_id=departments.id where departments.name='Dipartimento di Neuroscienze'
--3
select * from courses join course_teacher on id=course_id where teacher_id=44
--4
select * from students join degrees on degree_id=degrees.id join departments on department_id=departments.id order by students.name ASC
--5
select degrees.name,courses.name,teachers.name,teachers.surname from courses join degrees on degree_id=degrees.id join course_teacher on course_id=courses.id join teachers on teacher_id=teachers.id
--6
select teachers.name,teachers.surname,degrees.name from teachers join course_teacher on teacher_id=teachers.id join courses on course_id=courses.id join degrees on degree_id=degrees.id where department_id=5

