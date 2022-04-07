-- 11.查询两门及其以上不及格课程的同学的学号，姓名及其平均成绩
-- select student.sid,student.sname,avg(sc.score)
USE  sql_learning;
SELECT student.SId,student.Sname,AVG(sc.score)
FROM student ,sc
WHERE student.SId=sc.SId
AND   sc.score<60
GROUP BY sc.SId
HAVING COUNT(*)>=2;
SELECT stuDent.*,T1.AVG_ScORe
FROM sTUDENT,(SELECT SC.siD,AVG(score) AS Avg_score FROM SC
				WHERE SC.SCOre<60
				GROUP BY SC.sid
				HAVING COUNT(*)>=2) AS t1
WHERE studENT.SiD = t1.SId;

-- 12.检索" 01 "课程分数小于 60，按分数降序排列的学生信息
select student.*,sc.score
from student, sc
where sc.cid='01'
and sc.score<60
and sc.sid=student.sid
order by sc.score;

-- 13.按平均成绩从高到低显示所有学生的所有课程的成绩以及平均成绩
select sc.sid,avg(sc.score) as avg_score
from sc
group by sid;

select sc.*,t1.avg_score
from sc inner join (select sc.sid,avg(sc.score) as avg_score
from sc
group by sid ) as t1
on sc.sid = t1.sid
order by t1.avg_score desc;