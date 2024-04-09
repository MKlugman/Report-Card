use HighSchoolReportsDB
go
insert ReportCard(FirstName, LastName, DateBorn, PhoneNumber, Address, Grade, ClassroomNumber, MathScore, ScienceScore, HistoryScore, EnglishScore, GymScore, ConductScore)
select 'Shira', 'Adler', '2010-07-02', '7185102639', '1258 61st street', 9, 101, 99, 85, 92, 94, 'S', 'S+' 
union select 'Rochel', 'Bloom', '2010-05-23', '7185556666', '1200 East 3rd street', 9, 101, 72, 80, 90, 65, 'S', 'S' 
union select 'Miriam', 'Cohen', '2010-06-18', '7184443333', '369 East 31st street', 9, 101, 90, 92, 88, 94, 'S', 'S+' 
union select 'Esther', 'Dahar', '2010-10-03', '7186563265', '125 Ave M', 9, 108, 50, 68, 55, 65, 'S', 'S' 
union select 'Perri', 'Elkins', '2010-12-24', '7186553322', '1100 Ave L', 9, 108, 75, 85, 95, 72, 'S', 'S-' 
union select 'Gitty', 'Fish', '2010-01-30', '7184192650', '2517 Ave R', 9, 108, 99, 100, 97, 100, 'S+', 'S+' 
union select 'Goldy', 'Green', '2009-10-03', '7185546699', '1500 East 21st street', 10, 102, 85, 88, 72, 93, 'S', 'S+' 
union select 'Rena', 'Hill', '2009-10-15', '7186569877', '1500 Ave K', 10, 102, 96, 88, 50, 93, 'S', 'S+' 
union select 'Leah', 'Appel', '2009-04-25', '7186533369', '1232 Ave S', 10, 104, 73, 83, 70, 90, 'S', 'S-' 
union select 'Perel', 'Kramer', '2009-01-15', '7183313698', '123 Ave O', 10, 104, 100, 99, 96, 99, 'S', 'S' 
union select 'Shiffy', 'Rosen', '2008-03-15', '7187775555', '1820 Ocean Parkway', 11, 103, 50, 60, 53, 65, 'S', 'S+' 
union select 'Chaya Hinda', 'Abram', '2008-08-29', '7183336988', '183 Ave P', 11, 103, 86, 88, 72, 93, 'S', 'S' 
union select 'Yehudis', 'Star', '2008-10-30', '7182221111', '150 Ocean Ave', 11, 107, 94, 96, 98, 99, 'S', 'S+' 
union select 'Rivka', 'Cohen', '2008-02-10', '7184443333', '369 East 31st street', 11, 107, 95, 85, 88, 72, 'S', 'S+' 
union select 'Elisheva', 'Torn', '2007-01-15', '7188885522', '325 Ave F', 12, 105, 76, 66, 58, 92, 'S', 'S+' 
union select 'Devora Bracha', 'Tuller', '2007-12-16', '7186666523', '1320 East 8th street', 12, 105, 82, 96, 78, 100, 'S', 'S' 
union select 'Suri', 'Koff', '2007-10-05', '7185552233', '1500 Ave T', 12, 106, 73, 60, 96, 83, 'S', 'S+' 
union select 'Shaindel Ella', 'Zell', '2007-06-12', '7184845252', '522 Ocean Parkway', 12, 106, 99, 98, 96, 100, 'S', 'S+';
