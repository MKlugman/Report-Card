use ReportCardDB
go 


drop table if exists dbo.January
go 
create table dbo.January(
    JanuaryId int not null identity primary key,
    LastName varchar(30) not null
        constraint c_January_Last_Name_cannot_be_blank check(LastName <> ''),
    FirstName varchar(30) not null
        constraint c_January_First_Name_cannot_be_blank check(FirstName <> ''),
    Birthday date not null,
	constraint c_January_DateBorn_cannot_be_in_the_future check(Birthday < getdate()),
    PhoneNumber char(10) not null
        constraint c_January_PhoneNumber_must_be_10_digits check(PhoneNumber like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]'),
    HomeAddress varchar(50) not null
        constraint c_January_Address_cannot_be_blank check(HomeAddress <> ''),
    Grade int not null
        constraint c_January_Grade_must_be_in_9_through_12 check(Grade in (9,10,11,12)),
    ClassRoom int not null
        constraint c_January_ClassRoom_number_can_be_101_through_108 check(ClassRoom between 101 and 108),
    Math int not null 
        constraint c_January_Math_score_must_be_between_45_and_100 check(Math between 45 and 100),
    Science int not null 
        constraint c_January_Science_score_must_be_between_45_and_100 check(Science between 45 and 100),
    History int not null 
        constraint c_January_History_score_must_be_between_45_and_100 check(History between 45 and 100),
    English int not null 
        constraint c_January_English_score_must_be_between_45_and_100 check(English between 45 and 100), 
    Gym varchar(2) not null
        constraint c_January_Gym_score_can_be_S_S_minus_or_S_plus check(Gym in ('S', 'S-', 'S+')),
    Conduct varchar(2) not null
        constraint c_January_Conduct_score_can_be_S_S_minus_or_S_plus check(Conduct in ('S', 'S-', 'S+')),
    Average as (Math + Science + History + English)/4 persisted, 
    OverallProgress as case 
                        when (Math + Science + History + English)/4 >= 90 then 'Doing very well!'
                        when (Math + Science + History + English)/4 between 80 and 89 then 'Good Work!'
                        when (Math + Science + History + English)/4 between 70 and 79 then 'Satisfactory Work!'
                        when (Math + Science + History + English)/4 between 65 and 69 then 'Passing'
                        when (Math + Science + History + English)/4 < 65 then  'Tutoring is necessary to ensure diploma.'
                        end persisted,
    DateInserted datetime not null default getdate(),
    constraint c_January_Birthday_must_be_before_date_inserted check(Birthday < DateInserted),
    constraint c_January_each_grade_only_has_2_classroom_numbers 
        check((Grade = 9 and ClassRoom in (101, 108)) 
            or (Grade = 10 and ClassRoom in (102, 104))
            or (Grade = 11 and ClassRoom in (103, 107))
            or (Grade = 12 and ClassRoom in (105, 106))
            )
)
go


--insert January(LastName, FirstName, Birthday, PhoneNumber, HomeAddress, Grade, ClassRoom, Math, Science, History, English, Gym, Conduct)
--select 'Last', 'First', '7/2/1996', 7185412162, '2264 80th street', 12, 102, 65, 85, 70, 97, 'S', 'S+'

select * from january j
