-- 5.查询「李」姓老师的数量
select count(*)
from teacher
where tname like "李%";

-- 6.查询学过「张三」老师授课的同学的信息
-- 标量查询
select student.sid,student.sname,student.sage,student.ssex
from student,(select sid
		from sc
		where cid=(select cid
			from course
			where tid=(select tid
						from teacher
						where tname="张三"))) as t1
where student.sid=t1.sid;

select student.sid,student.sname,student.sage,student.ssex
from teacher,course,sc,student
where teacher.Tname="张三"
and teacher.TId=course.TId
and course.CId=sc.CId
and sc.SId=student.SId;

-- 7.查询没有学全所有课程的同学的信息
-- 为什么是倒着查询的？
select distinct student.*
from student,sc
where student.SId not in 
(select t1.sid 
from (select sc.sid, count(sc.cid) as sc_count from sc group by sc.sid) as t1,(select count(course.CId) as c_count from course) as t2 
where t1.sc_count=t2.c_count);


-- 解法二
select DISTINCT student.*
from 
(select student.SId,course.CId
from student,course ) as t1 LEFT JOIN (SELECT sc.SId,sc.CId from sc)as t2 on t1.SId=t2.SId and t1.CId=t2.CId,student
where t2.SId is null
and   t1.SId=student.SId





            