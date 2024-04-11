select * from january j

insert January(LastName, FirstName, Birthday, PhoneNumber, HomeAddress, Grade, ClassRoom, Math, Science, History, English, Gym, Conduct)
select 'Adler', 'Shira', '7/2/2010', 7185102639, '1258 61st street', 9, 101, 99, 85, 92, 94, 'S', 'S+'
union select 'Bloom', 'Rochel', '5/23/2010', 7185556666, '1200 East 3rd street', 9, 101, 72, 80, 90, 65, 'S', 'S'
union select 'Cohen', 'Miriam', '6/18/2010', 7184443333, '369 East 31st street', 9, 101, 90, 92, 88, 94, 'S', 'S+'
union select 'Dahar', 'Esther' , '10/3/2010', 7186563265, '125 Ave M', 9, 108, 50, 68, 55, 65, 'S', 'S'
union select 'Elkins', 'Perri' , '12/24/2010', 7186553322, '1100  Ave L', 9, 108, 75, 85, 95, 72, 'S', 'S-'
union select 'Fish', 'Gitty' , '1/30/2010', 7184192650, '2517 Ave R', 9, 108, 99, 100, 97, 100, 'S+', 'S+'

union select 'Green', 'Goldy' , '10/3/2009', 7185546699, '1500 East 21st street', 10, 102, 85, 88, 72, 93, 'S', 'S+'
union select 'Hill', 'Rena' , '10/15/2009', 7186569877, '1500 Ave K', 10, 102, 96, 88, 50, 93, 'S', 'S+'
union select 'Appel', 'Leah' , '4/25/2009', 7186533369, '1232 Ave S', 10, 104, 73, 83, 70, 90, 'S', 'S-'
union select 'Kramer', 'Perel' , '1/15/2009', 7183313698, '123 Ave O', 10, 104, 100, 99, 96, 99, 'S', 'S'

union select 'Rosen', 'Shiffy' , '3/15/2008', 7187775555, '1820 Ocean Parkway', 11, 103, 50, 60, 53, 65, 'S', 'S+'
union select 'Abram', 'Chaya Hinda' , '8/29/2008', 7183336988, '183 Ave P', 11, 103, 86, 88, 72, 93, 'S', 'S'
union select 'Star', 'Yehudis' , '10/30/2008', 7182221111, '150 Ocean Ave', 11, 107, 94, 96, 98, 99, 'S', 'S+'
union select 'Cohen', 'Rivka' , '2/10/2008', 7184443333, '369 East 31st street', 11, 107, 95, 85, 88, 72, 'S', 'S'

union select 'Torn', 'Elisheva' , '1/15/2007', 7188885522, '325 Ave F', 12, 105, 76, 66, 58, 92, 'S', 'S+'
union select 'Tuller', 'Devora Bracha', '12/16/2007', 7186666523, '1320 East 8th street', 12, 105, 82, 96, 78, 100, 'S', 'S'
union select 'Koff', 'Suri' , '10/5/2007', 7185552233, '1500 Ave T', 12, 106, 73, 60, 96, 83, 'S', 'S+'
union select 'Zell', 'Shaindel Ella' , '6/12/2007', 7184845252, '522 Ocean Parkway', 12, 106, 99, 98, 96, 100, 'S', 'S+'