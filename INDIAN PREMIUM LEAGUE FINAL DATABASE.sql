create database INDIAN_PREMIUM_LEAGUE;
use INDIAN_PREMIUM_LEAGUE;

CREATE TABLE TEAMS(
TeamID VARCHAR(5) PRIMARY KEY,
TeamName VARCHAR(50) UNIQUE NOT NULL, 
OwnerName VARCHAR(50) NOT NULL);

CREATE TABLE Players (
	PlayerID NUMERIC(5) PRIMARY KEY,
	Name VARCHAR(50) NOT NULL, 
	Nationality VARCHAR(50) NOT NULL,
	DoB DATE NOT NULL,
	Role  VARCHAR(50),
	StrikeRate DECIMAL(5,2),
	BowlingStyle  VARCHAR(50),
	BattingStyle  VARCHAR(50),
    TeamID VARCHAR(5),
    FOREIGN KEY (TeamID) REFERENCES TEAMS (TeamID));

CREATE TABLE MATCHES(
MatchID CHARACTER(7) PRIMARY KEY,
	MatchType VARCHAR(10) NOT NULL,
	Date DATE NOT NULL,
	StadiumName VARCHAR(50) NOT NULL,
	City VARCHAR(50) NOT NULL,
	ManOfTheMatch CHARACTER(5) NOT NULL);

create table IPL(
YEAR NUMERIC PRIMARY KEY,
TITLE_SPONSOR VARCHAR(50) NOT NULL,
PLAYER_OF_THE_TOURNAMENT NUMERIC(5) NOT NULL,
WINNER VARCHAR(20) NOT NULL,
FOREIGN KEY (PLAYER_OF_THE_TOURNAMENT) REFERENCES PLAYERS (PLAYERID));


INSERT INTO TEAMS (TeamId, TeamName, OwnerName) VALUES
('CSK','Chennai Super Kings','Chennai Super Kings Cricket Ltd'),
('RCB','Royal Challengers Bangalore','United Spirits Ltd'),
('MI','Mumbai Indians','Reliance Industry Ltd'),
('GT','Gujarat Titans','CVC Capital Partners'),
('DC','Delhi Capitals','GMR Sports Pvt & JSW Sports Pvt Ltd'),
('KKR','Kolkata Knight Riders','Knight Riders Sport Private Ltd'),
('LSG','Lucknow Super Giants','RPSG Group'),
('PBKS','Punjab Kings','KPH Dream Cricket Private'),
('RR','Rajasthan Royals','The Rpyal Sports Group'),
('SRH','Sunrisers Hyderabad','Sun TV Network');

SELECT* FROM TEAMS;


INSERT INTO Players (PlayerID, Name, Nationality, DoB, Role, StrikeRate, BowlingStyle, BattingStyle, TeamID) Values
('00026', 'Glenn Maxwell' ,'Australia' , '1988-10-14' ,'All rounder' , '150.98' , 'Right-arm offbreak' , 'Right-handed','PBKS'),
('00023', 'Virat Kohli', 'India', '1988-11-05', 'Batsman', '129.67', 'Right-arm medium',  'Right-handed','RCB'),
('00013', 'Ravindra Jadeja','India', '1988-12-06','Bowler', '127.62', 'Left-arm orthodox', 'Left handed','CSK'),
('00038', 'Kieron Pollard', 'Jamaica', '1987-05-12', 'All rounder', '147.32', 'Right-arm medium', 'Right-handed','MI'),
('00054', 'Sunil Narine', 'Jamaica', '1983-05-26', 'Bowler', '162.32', 'Right-arm offbreak', 'Left-handed','KKR'),
('00064', 'Adam Zampa',  'Australia', '1992-03-31', 'Bowler', '66.67', 'Right-arm legbreak', 'Right-handed','CSK'),
('00061', 'Jos Buttler', 'England', '1990-09-08', 'Batsman', '150.49', NULL,'Right-handed','RR'),
('00005', 'Shubman Gill', 'India', '1999-09-08', 'Batsman', '126.67', 'Right-arm offbreak', 'Right-handed','GT'),
('00030', 'Mohammed Siraj', 'India', '1994-03-13', 'Bowler', '88.07', 'Right-arm fast-medium', 'Right-handed','SRH'),
('00035','Suryakumar Yadav','India','1990-09-14','Batsman','136.87','right-arm offbreak','right-handed','MI'),
('00032','Jasprit Bumrah','India','1993-12-06','Bowler','84.85','right-arm fast','right-handed','MI'),
('00050','Sanju Samson','India','1994-11-11','Wicketkeeper','136.63',NULL,'right-handed','RR'),
('00002','Chris Gayle','Jamaica','1979-09-21','Batsman','189.65','right-arm fast-medium','left-handed','RCB'),
('00046','Andre Russell','Jamaica','1988-04-29','All-rounder','177.09','right-arm fast','right-handed','KKR'),
('00003','Suresh Raina','India','1986-11-27','Batsman','136.73','right-arm offbreak','left-handed','CSK');

Select* from Players;


INSERT INTO MATCHES (MatchID, MatchType, Date, StadiumName, City, ManOfTheMatch)  VALUES
('2008001','League','2008-04-14','Saurashtra Cricket Association Stadium','Rajkot','00026'),
('2008002','Final','2008-05-29','Eden Gardens','Kolkata','00050'), 
('2010003','League','2010-04-17','Punjab Cricket Association IS Bindra Stadium','Mohali','00023'),
('2010004','Final','2010-10-15','Punjab Cricket Association IS Bindra Stadium','Mohali','00003'),
('2012005','Final','2012-04-14','Saurashtra Cricket Association Stadium','Rajkot','00046'),
('2014006','Final','2014-04-14','Saurashtra Cricket Association Stadium','Rajkot','00054'),
('2016007','Final','2016-04-14','Saurashtra Cricket Association Stadium','Rajkot','00030'),
('2018008','League','2018-04-10','MA Chidambaram Stadium','Chennai','00032'),
('2018009','Final','2016-05-25','Eden Gardens','Kolkata','00013'),
('2020010','League','2020-10-28','Dubai International Cricket Stadium','UAE','00020'),
('2020011','Final','2018-11-05','Dubai International Cricket Stadium','UAE','00032'),
('2021012','League','2021-09-24','Dubai International Cricket Stadium','UAE','00029'),
('2021013','Final','2021-10-15','Dubai International Cricket Stadium','UAE','00003'),
('2022014','Final','2022-04-14','Narendra Modi Stadium','Ahmedabad','00005'),
('2023015','Final','2023-05-29','Narendra Modi Stadium','bad','00013');  
  
SELECT * FROM MATCHES;


INSERT INTO IPL (Year, TITLE_SPONSOR, PLAYER_OF_THE_TOURNAMENT, WINNER) VALUES
('2008', 'DLF', '00013', 'RR'),
('2010', 'DLF', '00038', 'CSK'),
('2012', 'DLF', '00054', 'KKR'),
('2014', 'PEPSI', '00026', 'KKR'),
('2016', 'VIVO', '00023', 'SRH'),
('2018', 'VIVO', '00054', 'CSK'),
('2020', 'DREAM 11', '00064', 'MI'),
('2021','VIVO','00030','CSK'),
('2022', 'VIVO', '00061', 'GT'),
('2023','TATA GROUP','00005','CSK');

SELECT * FROM IPL;



-- WHERE CLAUSE
SELECT * FROM Players WHERE PlayerID = 00005;
SELECT * FROM MATCHES WHERE StadiumName='Saurashtra Cricket Association Stadium';


-- WILDCARDS
SELECT* FROM MATCHES WHERE MatchType LIKE "L%";
SELECT* FROM TEAMS WHERE TEAMID LIKE "__R";
SELECT* FROM Players WHERE Name LIKE "_A%";


-- AGGREGATE FUNCTIONS
select count(Name) from Players;
select avg(StrikeRate) from Players;
select min(StrikeRate) from Players;
select max(StrikeRate) from Players;

-- UPDATE QUERY
UPDATE Players
SET  DoB = '1993-03-31'
WHERE PlayerID = 00064;

Select * from Players;


-- GROUP BY
SELECT  Nationality,Avg(StrikeRate)
FROM Players 
group by Nationality; 


-- ORDER BY
select * from Players order by StrikeRate;
select * from IPL order by WINNER DESC;


-- ALTER TABLE
ALTER table TEAMS 
ADD Captain_Name VARCHAR(50);  
SELECT * FROM TEAMS; 
ALTER table TEAMS DROP Captain_Name;
SELECT * FROM TEAMS; 


-- Nested Queries
-- INDEPENDENT QUERY

SELECT Name 
FROM Players 
WHERE TeamID IN (SELECT TeamID
   FROM TEAMS 
   WHERE TeamName = 'Chennai Super Kings');

-- CORRELATED QUERY

SELECT Name,Role
   from Players
   where PlayerID IN (SELECT PLAYER_OF_THE_TOURNAMENT
   FROM IPL WHERE PLAYER_OF_THE_TOURNAMENT= Players.PlayerID and WINNER= 'CSK');
   
SELECT Name 
FROM Players
WHERE EXISTS (SELECT ManOfTheMatch
   FROM MATCHES
   WHERE Players.PlayerID = MATCHES.ManOfTheMatch);

SELECT * FROM  Players player1 
WHERE StrikeRate > (
    SELECT AVG(StrikeRate) 
    FROM Players player2
    WHERE player1.role = player2.role);


-- JOINS

-- NATURAL JOIN
SELECT * FROM Players   natural join TEAMS;  

-- INNER JOIN
select * from IPL inner join Players on IPL.PLAYER_OF_THE_TOURNAMENT = Players.PlayerID;

-- LEFT JOIN
 select * from IPL left join Players on IPL.PLAYER_OF_THE_TOURNAMENT = Players.PlayerID;

 -- RIGHT JOIN
 select * from IPL right join Players on IPL.PLAYER_OF_THE_TOURNAMENT = Players.PlayerID;
 
-- FULL OUTER JOIN
 select * from IPL left join Players on IPL.PLAYER_OF_THE_TOURNAMENT = Players.PlayerID
 union
 select * from IPL right join Players on IPL.PLAYER_OF_THE_TOURNAMENT = Players.PlayerID;
 
  
-- DELETE QUERY
DELETE FROM Players WHERE Name='Adam Zampa';  