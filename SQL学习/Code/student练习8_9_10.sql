-- 8.查询至少有一门课与学号为" 01 "的同学所学相同的同学的信息
select distinct student.*
from student,sc
where student.SId in
		(select distinct sc.sid
		from sc
		where sc.CId in (select sc.CId from sc where sc.sid="01" ) and sc.SId<>"01");
select DISTINCT student.*
from  sc ,student
where sc.CId in (select CId from sc where sc.SId='01')
and   sc.SId=student.SId
and   sc.SId!="01";

-- 9.查询和" 01 "号的同学学习的课程完全相同的其他同学的信息
select distinct student.*
from student, sc
where ;
select sc.CId from sc where sc.SId='01';
-- 找出选修了”01“没有选修课程的人
select sc.SId from sc where sc.CId not in (select sc.CId from sc where sc.SId='01');
-- 找出选修了”01“课程集合的子集
select sc.sid
from sc 
where sc.CId in (select sc.CId from sc where sc.SId='01')
and sc.sid not in (select sc.SId from sc where sc.CId not in (select sc.CId from sc where sc.SId='01'));
-- 比较选修课程的数量
select student.*,count(t1.sid) as count_c
from (select sc.sid
	  from sc 
	  where sc.CId in (select sc.CId from sc where sc.SId='01')
	  and sc.sid not in (select sc.SId 
						 from sc where sc.CId not in (select sc.CId from sc where sc.SId='01'))) as t1,student
where student.sid = t1.sid
and student.sid!='01'
group by t1.SId
having count_c = (select count(sc.cid) from sc where sc.SId='01');
/* 先筛选出其他学生中选修的课程数量和01号学生选修的课程数量相同的学生的学生编号和所修课程编号，
然后将筛选结果与01号学生选修的课程编号进行内连接，然后再根据01号学生选修课程的数量做最后的筛选。*/
select * from student where sid in
(select sid from
(select sid,cid from sc where sid in
(select sid from sc where sid !='01' group by sid
having count(*)=(select count(*) from sc where sid='01' group by sid))) as t1
inner join (select cid from sc where sid='01') as t2
on t1.cid = t2.cid
group by t1.sid 
having count(*)=(select count(*) from sc where sid='01')
);
select t2.* from
(select sid,cid from sc where sid in
(select sid from sc where sid !='05' group by sid
having count(*)=(select count(*) from sc where sid='05' group by sid))) as t1 left outer join (select cid from sc where sid='05') as t2
on t1.cid = t2.cid;
select sid,cid from sc where sid in
(select sid from sc where sid !='05' group by sid
having count(*)=(select count(*) from sc where sid='05' group by sid));
SELECT SP.shop_id, SP.shop_name, SP.product_id, P.product_name, P.sale_price
FROM ShopProduct AS SP RIGHT OUTER JOIN Product AS P 
ON SP.product_id = P.product_id;

-- 10.查询没学过"张三"老师讲授的任一门课程的学生姓名
/* 1)查询‘张三’老师讲授的课程
   2)查询没有学过任意一门课的学生 not in */
select teacher.*,course.Cname,course.cid
from teacher inner join course
on teacher.TId=course.TId
where teacher.Tname="张三";
select distinct student.*
from student, sc
where student.sid not in
(select distinct sc.SId
from sc
where sc.cid in (select course.cid
					from teacher inner join course
					on teacher.TId=course.TId
					where teacher.Tname="张三")
group by sc.sid);
select student.*
from student, (select course.cid
					from teacher inner join course
					on teacher.TId=course.TId
					where teacher.Tname="张三") as t1 inner join sc
                    on t1.cid = sc.cid 
where student.sid not in (select sid from sc);

select *
from student
where student.sid not in (
select student.sid
from student, course, sc, teacher
where teacher.Tname="张三"
and teacher.TId=course.TId
and sc.cid = course.cid
and student.SId = sc.sid);






