/* 14.查询各科成绩最高分、最低分和平均分：
以如下形式显示：课程 ID，课程 name，最高分，最低分，平均分，及格率，中等率，优良率，优秀率
及格为>=60，中等为：70-80，优良为：80-90，优秀为：>=90
要求输出课程号和选修人数，查询结果按人数降序排列，若人数相同，按课程号升序排列*/
-- 综合
select sc.cid as 课程id,course.Cname as '课程name',max(sc.score) as 最高分 ,min(sc.score) as 最低分,avg(sc.score) as 平均分,
sum(case when sc.score>=60 then 1 else 0 end)/count(*) as 及格率,sum(case when sc.score>=70 and sc.score<80 then 1 else 0 end)/count(*) as 中等率,
sum(case when sc.score>=80 and sc.score<90 then 1 else 0 end)/count(*) as 优良率,sum(case when sc.score>=90 then 1 else 0 end)/count(*) as 优秀率,
count(*) as 选修人数
from sc,course
where sc.cid=course.cid
group by sc.cid
order by 选修人数 desc, sc.cid asc;
-- 最高分
SELECT 
    sc.cid, MAX(sc.score)
FROM
    sc
GROUP BY sc.cid;
-- 最低分
SELECT 
    sc.cid, MIN(sc.score)
FROM
    sc
GROUP BY sc.CId;

-- 15.按各科成绩进行排序，并显示排名， Score 重复时保留名次空缺
-- 使用RANK进行排名时是（1-2-2-4）
select 
	sc.cid
    ,rank() over(
		 order by sc.score desc
	) as 'rank'
    ,sc.SId
    ,sc.score
from
	sc
order by sc.score desc;
SELECT 
	sc.cid
    ,(@curRank:=@curRank+1)		AS "rank"
    ,sc.sid
    ,sc.score
FROM 
	sc
    ,(SELECT @curRank:=0) 		AS t1
ORDER BY sc.cid,sc.score DESC;
select 
	sc.CId 
    ,@curRank:=@curRank+1 as 'rank'
    ,sc.score
from 
	(select @curRank:=0) as t 
    ,sc
ORDER BY sc.score desc;
-- 15.1按各科成绩进行排序，并显示排名， Score 重复时合并名次
SELECT 
    sc.CId,
    CASE
        WHEN @fontscore = score THEN @curRank
        WHEN @fontscore:=score THEN @curRank:=@curRank + 1
    END AS 'rank',
    sc.score
FROM
    (SELECT @curRank:=0) AS t,
    sc
ORDER BY sc.score DESC;

-- 16.查询学生的总成绩，并进行排名，总分重复时保留名次空缺
select 
	rank() over(
		order by sum(sc.score) desc
	) 			   as 'rank'
    ,sc.sid
    ,sum(sc.score) as sum_score
from sc
group by sc.sid
order by sum_score desc;
-- 16.1查询学生的总成绩，并进行排名，总分重复时不保留名次空缺
SELECT 
    rank() over(
		order by sum(sc.score) desc
	)	as 'rank'
    ,sc.sid
    ,sum(sc.score)
FROM
    sc
group by sc.sid
order by 'rank';
-- 使用定义变量的方法,case只能一条一条的计算
-- 错误示范
SELECT 
    CASE
        WHEN @fontScore = @sum_score THEN @curRank
        WHEN @fontScore:=@sum_score THEN @curRank = @curRank + 1
    END AS 'rank',
    sc.sid,
    SUM(sc.score) AS sum_score
FROM
    (SELECT @curRank:=0) AS v1,
    sc
GROUP BY sc.sid
ORDER BY 'rank';
-- 正确示范
SELECT 
    t1.*,
    CASE
        WHEN @fontscore = t1.sumscore THEN @currank
        WHEN @fontscore:=t1.sumscore THEN @currank:=@currank + 1
    END AS 'rank'
FROM
    (SELECT 
        sc.SId, SUM(score) AS sumscore
    FROM
        sc
    GROUP BY sc.SId
    ORDER BY SUM(score) DESC) AS t1,
    (SELECT @currank:=0, @fontscore:=NULL) AS t
    
