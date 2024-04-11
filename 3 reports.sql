Use ReportCardDB
go 
--Reports:
select * from January j order by j.Grade

--1) List all students that have any failing test scores. Sort by Grade(9-12), then Class, then Last Name
select * 
from January j 
where   j.Math < 65 
        or j.Science < 65
        or j.History < 65
        or j.English < 65
order by j.Grade, j.ClassRoom, j.LastName


--2) List average for each subject, per grade(9-12).
select j.Grade, MathAvg = AVG(j.Math), ScienceAvg = AVG(j.Science), HistoryAvg = AVG(j.History), EnglishAvg = AVG(j.English)
from January j 
group by j.Grade

--3) Our school gives an award for the 4 students with the highest averages that also receive an S+ in Conduct. 
    --Please list the 4 highest averages in our school. (Can be more than 1 per grade)
    --Please include Name, Grade, Class, and all test scores in this report. 
select top(4) j.LastName, j.FirstName, j.Grade, j.ClassRoom, j.Math, j.Science, j.History, j.English, j.Average, j.Conduct
from January j
where j.Conduct = 'S+'
order by j.Average desc

--4) We like to see if a student's age affects how she performs academically. 
    --Please list within each grade(9-12) all students sorted by Birthday(oldest on top), and then average of all test scores. 
select j.Grade, j.LastName, j.FirstName, j.Birthday, j.Average 
from January j
order by j.Grade, j.Birthday, j.Average

--5) For students to find out their scores on tests, we hang up a list without their names and each student has a personal code.
    --Each student's code is Last 4 digits of phone number, and then intials of Last Name and then First Name. ex: 6785AS For Shira Adler
    --Please list all students in the 9th grade with this code for their Math test score.
    --And please include a list of all students in the 10th grade with this code for their English test score. 
select StudentId = concat(substring(j.PhoneNumber, 7, 10), substring(j.LastName, 1,1), substring(j.FirstName, 1, 1)), j.Math
from January j 
where j.Grade = 9 

select StudentId = concat(substring(j.PhoneNumber, 7, 10), substring(j.LastName, 1,1), substring(j.FirstName, 1, 1)), j.English
from January j 
where j.Grade = 10 

--6) We want to keep an eye on any student who has an average below 70. 
    --Please list those students with all info and test scores sorted by grade (9-12)
select * 
from January j 
where j.Average < 70
order by j.Grade
