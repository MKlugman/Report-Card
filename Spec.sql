/*
Hi! I work in a highschool office and report card season is quite busy. 
I was wondering if you can help us computerize our report cards.

This report card should be for the January 2024 term.
Please include each students basic info: First Name, Last Name, Birthday, Phone Number, Address, Grade, ClassRoom Number
Each report card should have a numeric test score for Math, Science, History, and English.
There should also be a score for Gym and Conduct: either S, S-, or S+
No test scores can be missing. 
Please include a column with the average of each students test scores.
There should also be a column for overall progress:
    If the students average is between  90-100: Doing very well!
                                        80-89: 	Good work!
                                        70-79: 	Satisfactory work!
                                        65-69: 	Passing
                                        below 65: Tutoring is necessary to ensure diploma.
In addition, Please include the date and time that the data is entered.

Q: What if student is missing a test score?
A: By the time report cards are distributed, all exams were taken. There should be no blank data

Q: What's the highest and lowest test scores that can be entered?
A: No numeric test score can be higher than 100 or lower than 45. 

Q: How many grades do you have in your school, and how many classes per grade?
A: Grades 9-12 and 2 classes per grade- specified with classroom number 
    9th grade: Room #s 101 and 108
    10th grade: 102 and 104
    11th grade: 103 and 107
    12th grade: 105 and 106


Reports:
1) List all students that have any failing test scores. Sort by Grade(9-12), then Class, then Last Name
2) List average for each subject, per grade(9-12).
3) Our school gives an award for the 4 students with the highest averages that also receive an S+ in Conduct. 
    Please list the 4 highest averages in our school. (Can be more than 1 per grade)
    Please include Name, Grade, Class, and all test scores in this report. 
4) We like to see if a student's age affects how she performs academically. 
    Please list within each grade(9-12) all students sorted by Birthday(oldest on top), and then average of all test scores. 
5) For students to find out their scores on tests, we hang up a list without their names and each student has a personal code.
    Each student's code is Last 4 digits of phone number, and then intials of Last Name and then First Name. ex: 6785AS For Shira Adler
    Please list all students in the 9th grade with this code for their Math test score.
    And please include a list of all students in the 10th grade with this code for their English test score. 
6) We want to keep an eye on any student who has an average below 70. 
    Please list those students with all info and test scores sorted by grade (9-12)

Sample Data: In this order: Name, Birthday, Phone Number, Address, Grade, Classroom Number, Math, Science, History, English, Gym, Conduct
Shira Adler, 7/2/2010, 7185102639, 1258 61st street, 9-101, 99, 85, 92, 94, S, S+
Rochel Bloom, 5/23/2010, 7185556666, 1200 East 3rd street, 9-101, 72, 80, 90, 65, S, S
Miriam Cohen, 6/18/2010, 7184443333, 369 East 31st street, 9-101, 90, 92, 88, 94, S, S+
Esther Dahar, 10/3/2010, 7186563265, 125 Ave M, 9-108, 50, 68, 55, 65, S, S
Perri Elkins, 12/24/2010, 7186553322, 1100  Ave L, 9-108, 75, 85, 95, 72, S, S-
Gitty Fish, 1/30/2010, 7184192650, 2517 Ave R, 9-108, 99, 100, 97, 100, S+, S+

Goldy Green, 10/3/2009, 7185546699, 1500 East 21st street, 10-102, 85, 88, 72, 93, S, S+
Rena Hill, 10/15/2009, 7186569877, 1500 Ave K, 10-102, 96, 88, 50, 93, S, S+
Leah Appel, 4/25/2009, 7186533369, 1232 Ave S, 10-104, 73, 83, 70, 90, S, S-
Perel Kramer, 1/15/2009, 7183313698, 123 Ave O, 10-104, 100, 99, 96, 99, S, S

Shiffy Rosen, 3/15/2008, 7187775555, 1820 Ocean Parkway, 11-103, 50, 60, 53, 65, S, S+
Chaya Hinda Abram, 8/29/2008, 7183336988, 183 Ave P, 11-103, 86, 88, 72, 93, S, S
Yehudis Star, 10/30/2008, 7182221111, 150 Ocean Ave, 11-107, 94, 96, 98, 99, S, S+
Rivka Cohen, 2/10/2008, 7184443333, 369 East 31st street, 11-107, 95, 85, 88, 72, S, S

Elisheva Torn, 1/15/2007, 7188885522, 325 Ave F, 12-105, 76, 66, 58, 92, S, S+
Devora Bracha Tuller, 12/16/2007, 7186666523, 1320 East 8th street, 12-105, 82, 96, 78, 100, S, S
Suri Koff, 10/5/2007, 7185552233, 1500 Ave T, 12-106, 73, 60, 96, 83, S, S+
Shaindel Ella Zell, 6/12/2007, 7184845252, 522 Ocean Parkway, 12-106, 99, 98, 96, 100, S, S+

Thank you!

