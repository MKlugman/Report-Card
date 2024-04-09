use HighSchoolReportsDB
go

--1) List all students that have any failing test scores. Sort by Grade(9-12), then Class, then Last Name
select *
from ReportCard r
where MathScore < 65 or ScienceScore < 65  or HistoryScore < 65 or EnglishScore < 65
order by r.Grade, r.ClassroomNumber, r.LastName

--2) List average for each subject, per grade(9-12).
select r.Grade, MatchAvg = AVG(r.MathScore), ScienceAvg = AVG(r.ScienceScore), HistoryAvg = AVG(r.HistoryScore), EnglishAvg = AVG(r.EnglishScore)
from ReportCard r
group by r.Grade

--3) Our school gives an award for the 4 students with the highest averages that also receive an S+ in Conduct. 
--	 Please list the 4 highest averages in our school. (Can be more than 1 per grade)
--	 Please include Name, Grade, Class, and all test scores in this report. 
select top 4 
	r.FirstName, 
	r.LastName, 
	r.Grade, 
	r.ClassroomNumber, 
	GeneralAvg = ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4), 
	r.MathScore, 
	r.ScienceScore, 
	r.HistoryScore, 
	r.EnglishScore
from ReportCard r
where r.ConductScore = 'S+'
order by GeneralAvg desc

	--4) We like to see if a student's age affects how she performs academically. 
	--    Please list within each grade(9-12) all students sorted by Birthday(oldest on top), and then average of all test scores. 
select r.FirstName, r.LastName, r.Grade, r.ClassroomNumber, r.DateBorn, GeneralAvg = ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4)
from ReportCard r
order by r.Grade, r.DateBorn

--5) For students to find out their scores on tests, we hang up a list without their names and each student has a personal code.
--    Each student's code is Last 4 digits of phone number, and then intials of Last Name and then First Name. ex: 6785AS For Shira Adler
--    Please list all students in the 9th grade with this code for their Math test score.
--    And please include a list of all students in the 10th grade with this code for their English test score. 
select 
	r.Grade, 
	StudentCode =  CONCAT(right(r.PhoneNumber, 4), LEFT(r.lastname,  1), LEFT(r.firstname, 1)),  
	TestScoreTitle = case r.grade when 9 then 'Math Score' when 10 then 'English Score' end,
	TestScore = case r.Grade when 9 then r.MathScore when 10 then r.EnglishScore end 
from ReportCard r
where r.Grade in(9, 10)


--6) We want to keep an eye on any student who has an average below 70. 
--    Please list those students with all info and test scores sorted by grade (9-12)
select r.FirstName, r.LastName, r.DateBorn, r.Address, r.Grade, r.ClassroomNumber, GeneralAvg = ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4), r.MathScore, r.ScienceScore, r.HistoryScore, r.EnglishScore, r.GymScore, r.ConductScore
from ReportCard r
where ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4) < 70
order by r.Grade

