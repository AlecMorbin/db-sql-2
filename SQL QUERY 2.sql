--Query con Group by
--1
select count(*) as 'Quantità',DATEPART(yyyy, [enrolment_date])as Anno from students group by DATEPART(yyyy, [enrolment_date])
--2
select count(*) as 'Insegnanti nello stesso edificio',office_address from teachers group by office_address
--3
select exam_id,avg(vote)as media_voti from exam_student inner join exams on exam_id=id group by exam_id
--4
select count(*) as 'Corsi per dipartimento',departments.name as Dipartimento from courses inner join degrees on degree_id=degrees.id inner join departments on department_id=departments.id group by departments.name
