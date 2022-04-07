use sql_learning;
-- 创建学生表
create table student(sId varchar(10),sname varchar(10),sage datetime,Ssex varchar(10));
insert into student values('01' , '赵雷' , '1990-01-01' , '男');
insert into Student values('02' , '钱电' , '1990-12-21' , '男');
insert into student values('03' , '孙风' , '1990-05-20' , '男');
insert into Student values('04' , '李云' , '1990-08-06' , '男');
insert into Student values('05' , '周梅' , '1991-12-01' , '女');
insert into Student values('06' , '吴兰' , '1992-03-01' , '女');
insert into Student values('07' , '郑竹' , '1989-07-01' , '女');
insert into Student values('09' , '张三' , '2017-12-20' , '女');
insert into student values('10' , '李四' , '2017-12-25' , '女');
insert into Student values('11' , '李四' , '2017-12-30' , '女');
insert into student values('12' , '赵六' , '2017-01-01' , '女');
insert into student values('13' , '孙七' , '2018-01-01' , '女');

-- 创建科目表
create table course(CId varchar(10),cname nvarchar(10),TId varchar(10));
insert into Course values('01' , '语文' , '02');
insert into Course values('02' , '数学' , '01');
insert into Course values('03' , '英语' , '03');

-- 创建教师表
create table teacher(TId varchar(10),Tname varchar(10));
insert into Teacher values('01' , '张三');
insert into Teacher values('02' , '李四');
insert into Teacher values('03' , '王五');

-- 创建成绩表
create table sC(SId varchar(10),Cid varchar(10),score decimal(18,1));
insert into SC values('01' , '01' , 80);
insert into SC values('01' , '02' , 90);
insert into sc values('01' , '03' , 99);
insert into Sc values('02' , '01' , 70);
insert into Sc values('02' , '02' , 60);
insert into Sc values('02' , '03' , 80);
insert into Sc values('03' , '01' , 80);
insert into Sc values('03' , '02' , 80);
insert into Sc values('03' , '03' , 80);
insert into Sc values('04' , '01' , 50);
insert into Sc values('04' , '02' , 30);
insert into Sc values('04' , '03' , 20);
insert into Sc values('05' , '01' , 76);
insert into Sc values('05' , '02' , 87);
insert into Sc values('06' , '01' , 31);
insert into Sc values('06' , '03' , 34);
insert into Sc values('07' , '02' , 89);
insert into Sc values('07' , '03' , 98);