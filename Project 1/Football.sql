SELECT * FROM CRICKET1 UNION SELECT * FROM CRICKET2;
SELECT AVG(POPULARITY) FROM CRICKET1;
SELECT PLAYERNAME, POPULARITY FROM cricket1 WHERE POPULARITY > (SELECT AVG(POPULARITY) FROM CRICKET1);
SELECT * FROM CRICKET1;
SELECT * FROM CRICKET2;
SELECT AVG(RUNS) FROM CRICKET2;
SELECT PLAYERID,CHARISMA FROM CRICKET2 WHERE CHARISMA > (SELECT AVG(RUNS) FROM CRICKET2);
SELECT PLAYERID FROM CRICKET2;
SELECT PLAYERID, PLAYERNAME FROM CRICKET1 WHERE CRICKET1.PLAYERID IN (SELECT PLAYERID FROM CRICKET2);
SELECT PLAYERNAME FROM CRICKET1 WHERE CRICKET1.PLAYERNAME IN (SELECT PLAYERNAME FROM CRICKET2);
SELECT avg(RUNS) FROM CRICKET1;
SELECT PLAYERID,PLAYERNAME,RUNS FROM CRICKET1 WHERE RUNS> (SELECT AVG(RUNS) FROM CRICKET1);
SELECT * FROM CRICKET1 WHERE RUNS > 50;
SELECT PLAYERID ,RUNS,PLAYERNAME FROM CRICKET1 WHERE RUNS >50;
SELECT * FROM CRICKET1 WHERE PLAYERNAME LIKE "Y%V";
SELECT * FROM CRICKET1 WHERE PLAYERNAME  NOT LIKE "%T";   
SELECT C1.PLAYERID,C1.PLAYERNAME,C1.RUNS,C1.POPULARITY,C2.PLAYERID,C2.PLAYERNAME,C2.RUNS,C2.CHARISMA FROM CRICKET1 C1 LEFT JOIN cricket2 C2 ON C1.PLAYERID=C2.PLAYERID
UNION
SELECT C1.PLAYERID,C1.PLAYERNAME,C1.RUNS,C1.POPULARITY, C2.PLAYERID,C2.PLAYERNAME,C2.RUNS,C2.CHARISMA FROM CRICKET1 C1 RIGHT JOIN cricket2 C2 ON C1.PLAYERID=C2.PLAYERID WHERE 
CHARISMA IS NOT NULL;
SELECT PLAYERID,PLAYERNAME,RUNS,POPULARITY FROM CRICKET1 UNION ALL SELECT PLAYERID,PLAYERNAME,RUNS,CHARISMA FROM CRICKET2;

SELECT PLAYERID,PLAYERNAME,RUNS,CHARISMA FROM CRICKET2 UNION ALL SELECT PLAYERID,PLAYERNAME,RUNS,POPULARITY FROM CRICKET1;
SELECT * FROM CRICKET2;
SELECT PLAYERID, substring(PLAYERID,3) FROM CRICKET1;
SELECT PLAYERID,PLAYERNAME,CHARISMA FROM CRICKET2 WHERE CHARISMA>70 ;
create table hero(id int primary key);
select * from hero;
insert into hero values(2);
drop table hero;
select * from emp.footballplayers;
select * from footballteams;
select * from footballplayers;
use emp;
rename table footballteams to ftteams;
select * from ftteams;
rename table footballplayers to ftplayers;
select * from ftplayers;
select `player name`,year, case when year="sr" then "yes" else "no" end as "check" from ftplayers;
## case when then else end
select `player name`, year, case when year="sr" then "yes" when year="jr" then "no" end from ftplayers;
select `player name`, year, case when year="sr" then "yes" when year="jr" then "no" else "new" end  as "maza players"from ftplayers;
select * from ftplayers where state ="ca";
select `player name`, year, state, case when state ="ca" then "yes" end as "from call" from ftplayers order by "from call"; ## desc;
select  case when weight <=150 then "under weght" when weight between 151 and 175 then "ok" when weight between 
176 and 200 then "high" else "heavy weight" end as "weight machine", count(1) as "count" from ftplayers group by 1;
select distinct position from ftplayers ;
select count( distinct position) from ftplayers;  
select count(distinct state) from ftplayers;
select * from ftplayers;
select * from ftteams;
select * from ftplayers ftp join ftteams ftt on ftp.`school name` =ftt.`school name`;
select fp.`school name` `player name`, weight, conference, fp.id from ftplayers  ft join ftteams ft on ft.`school name`=fp.`school name`;
select state,round(avg(height)) from ftplayers group by state;
select conference, avg(height) from ftplayers fp join ftteams ft on fp.`school name`=ft.`school name`group by conference; 
select distinct division from ftteams;
 select `player name`,fp.`school name`,conference from ftplayers fp join ftteams ft on fp.`school name`=ft.`school name`;
 use emp;
 select conference,avg(height) from ftplayers fp join ftteams ft on ft.`school name`= fp.`school name` group by conference order by avg(height);
 select `player name`,fp.`school name`,conference from ftplayers fp join ftteams ft on fp.`school name`=ft.`school name`; 