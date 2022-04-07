-- 2.查询平均成绩大于等于 60 分的同学的学生编号和学生姓名和平均成绩
use sql_learning;
select student.SID, student.sname, t1.avgScore
from student inner join
(select sc.SID,avg(score)as avgScore
from sc
group by sc.SID
having avg(score)>=60) as t1
on t1.SID=student.SID;

-- 3.查询在 SC 表存在成绩的学生信息
/* select * 
from student inner join
(select distinct sc.sid
from sc) as t1
on student.sid=t1.sid;*/
select DISTINCT student.*
from student ,sc
where student.SId=sc.SId;

-- 4.查询所有同学的学生编号、学生姓名、选课总数、所有课程的总成绩(没成绩的显示为null)
select student.sid,student.sname,t1.count,t1.sum
from student left join
(select sc.sid,count(cid) as count,sum(score) as sum
from sc
group by sid) as t1
on student.sid=t1.sid;

-- 4.1查有成绩的学生信息
select student.sid,student.sname,t1.count,t1.sum
from student inner join
(select sc.sid,count(cid) as count,sum(score) as sum
from sc
group by sid) as t1
on student.sid=t1.sid;
select *
from student
where EXISTS(select * from sc where student.SId=sc.SId);



