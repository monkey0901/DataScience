/* 1. 查询" 01 "课程比" 02 "课程成绩高的学生的信息及课程分数
1.1 查询同时存在" 01 "课程和" 02 "课程的情况
1.2 查询存在" 01 "课程但可能不存在" 02 "课程的情况(不存在时显示为 null )
1.3 查询不存在" 01 "课程但存在" 02 "课程的情况 */

USE sql_learning;
-- 1. 查询" 01 "课程比" 02 "课程成绩高的学生的信息及课程分数
SELECT *
FROM (SELECT SID, score FROM sc WHERE sc.CID="01") AS t1, (SELECT SID, score FROM sc WHERE sc.CID="02") AS t2
WHERE t1.score>t2.score AND t1.SID=T2.SID;

-- 1.1 查询同时存在" 01 "课程和" 02 "课程的情况
SELECT *
FROM (SELECT SID, score FROM sc WHERE sc.CiD="01") AS t1, (SELECT SID, score FROM sc WHERE sc.CiD="02") AS t2
WHERE t1.Sid=t2.Sid;

-- 1.2 查询存在" 01 "课程但可能不存在" 02 "课程的情况(不存在时显示为 null )
SELECT *
FROM (SELECT SID, score FROM sc WHERE sc.cID="01") AS t1 LEFT JOIN (SELECT Sid, score FROM sc WHERE sc.cid="02") AS t2
ON t1.SId=t2.SID;

-- 1.3 查询不存在" 01 "课程但存在" 02 "课程的情况
SELECT *
FROM sc
WHERE sc.SId NOT IN (SELECT SId FROM sc WHERE sc.CId='01')
AND  sc.cid='02';


