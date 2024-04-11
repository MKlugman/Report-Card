use HighSchoolReportsDB
go
drop table if exists ReportCard
go
create table dbo.ReportCard(
	ReportCardId int not null identity primary key,
	FirstName varchar(30) not null 
		constraint ck_ReportCard_StudentFirstName_cannot_be_blank check(FirstName > ''),
	LastName varchar(30) not null 
		constraint ck_ReportCard_StudentLastName_cannot_be_blank check(LastName > ''),
	DateBorn date not null 
		constraint ck_ReportCard_DateBorn_cannot_be_in_the_future check(DateBorn < getdate()),
	PhoneNumber char(10) not null 
		constraint ck_ReportCard_PhoneNumber_must_be_numeric check(isnumeric(PhoneNumber) = 1),
	Address varchar(30) not null 
		constraint ck_ReportCard_Address_cannot_be_blank check(Address > ''),
	Grade int not null 
		constraint ck_ReportCard_Grade_must_be_between_9_and_12 check(Grade in(9,10,11,12)),
	ClassroomNumber int not null,
	MathScore int not null 
		constraint ck_ReportCard_MathScore_must_be_between_45_and_100 check(MathScore between 45 and 100),
	ScienceScore int not null 
		constraint ck_ReportCard_ScienceScore_must_be_between_45_and_100 check(ScienceScore between 45 and 100),
	HistoryScore int not null 
		constraint ck_ReportCard_HistoryScore_must_be_between_45_and_100 check(HistoryScore between 45 and 100),
	EnglishScore int not null 
		constraint ck_ReportCard_EnglishScore_must_be_between_45_and_100 check(EnglishScore between 45 and 100),
	GymScore varchar(2) not null 
		constraint ck_ReportCard_GymScore_must_be_either_s_s_plus_s_minus check(GymScore in('S', 'S+', 'S-')),
	ConductScore varchar(2) not null 
		constraint ck_ReportCard_ConductScore_must_be_either_s_s_plus_s_minus check(ConductScore in('S', 'S+', 'S-')),
	AvgScore as ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4) persisted,
	GeneralProgress as 
		case 
			when ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4)  between 90 and 100 then 'Doing very well!'
			when ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4) between 80 and 89 then 'Good work!'
			when ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4) between 70 and 79 then 'Satisfactory work!'
			when ((MathScore + ScienceScore + HistoryScore + EnglishScore) / 4) between 60 and 69 then 'Passing'
			else 'Tutoring is necessary to ensure diploma'
		end persisted,	
	DateInserted datetime not null default getdate(),
	constraint ck_ReportCard_ClassroomNumber_Grade check(
		(Grade = 9 and ClassroomNumber in(101, 108)) or 
		(Grade = 10 and ClassroomNumber in(102, 104)) or
		(Grade = 11 and ClassroomNumber in(103, 107)) or
		(Grade = 12 and ClassroomNumber in(105, 106))
	),
	constraint u_ReportCard_FirstName_LastName_DateBorn_must_be_unique unique(firstname, lastname, dateborn)
)
go