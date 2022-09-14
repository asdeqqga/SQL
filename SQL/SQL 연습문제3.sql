#날짜 : 날짜 : 2022/08/31
#이름 : 라성준
#내용 : SQL 연습문제3

#실습3-1
Create database `java2_College`;
Create User 'admin3'@'%' identified by'1234'
Grant ALL PRIVILEGES ON java2_College* TO 'admin3'@'%';
FLUSH privileges;

#실습3-2
create table `Student`(
	`stdNo` char(8) primary key,
    `stdName` varchar(20) not null,
    `stdHP` char(13) not null,
    `stdYear` tinyint not null,
    `stdAddress` char(100)
    );

create table `Lecture`(
	`lecNo` tinyint(20) not null,
    `lecName` varchar(20) not null,
    `lecCredit` tinyint not null,
    `lectime` int not null,
    `lecClass` varchar(10) default null
    );
    
create table `Register`(
	`regStdno` char(8) ,
    `regLecNo` decimal(5),
    `regMidScore` tinyint,
    `regFinalScore` tinyint,
    `regTotalScore` tinyint,
    `regGrade` char(1)
    );

#실습3-3
insert into `Student` values ('20201016','김유신','010-1234-1001',3);
insert into `Student` values ('20201126','김춘추','010-1234-1002',3,'경상남도 경주시');
insert into `Student` values ('20210216','장보고','010-1234-1003',2,'전라남도 완도시');
insert into `Student` values ('20210326','강감찬','010-1234-1004',2,'서울시 영등포구');
insert into `Student` values ('20220416','이순신','010-1234-1005',1,'부산시 부산진구');

insert into `Lecture` values ('159','인지행동심리학',3,'40','본304');
insert into `Lecture` values ('167','운영체제론',3,'25','본305');
insert into `Lecture` values ('234','중급 영문법',3,'20','본201');
insert into `Lecture` values ('239','세법개론',3,'40','본204');
insert into `Lecture` values ('248','빅데이터 개론',3,'20','본301');
insert into `Lecture` values ('253','컴퓨팅사고와코딩',2,'10','본302');
insert into `Lecture` values ('349','사회복지 마케팅',2,'50','본301');

insert into `Register` Values ('234');
insert into `Register` Values ('248');
insert into `Register` Values ('253');
insert into `Register` Values ('239');
insert into `Register` Values ('349');
insert into `Register` Values ('349');
insert into `Register` Values ('167');
insert into `Register` Values ('349');

#실습3-4
 SELECT * FROM `Lecture`;
 
 #실습 3-5
 Select * from `Student`;
 
 #실습 3-6
 select * from `register`; 
 
 #실습 3-7
 select * from `Student` WHERE `stdYear`=3;
 
 #실습 3-8
 select * from `Lecture` where `lecCredit`=2
 
 #실습 3-9
 
UPDATE `Register` SET `regMidScore` = 36, `regFinalScore`= 42 WHERE 
`regStdNo`='20201126' AND `regLecNo`=234;

UPDATE `Register` SET `regMidScore` = 24, `regFinalScore`= 62 WHERE 
`regStdNo`='20201016' AND `regLecNo`=248;

UPDATE `Register` SET `regMidScore` = 28, `regFinalScore`= 40 WHERE 
`regStdNo`='20201016' AND `regLecNo`=253;

UPDATE `Register` SET `regMidScore` = 37, `regFinalScore`= 57 WHERE 
`regStdNo`='20201126' AND `regLecNo`=239;

UPDATE `Register` SET `regMidScore` = 28, `regFinalScore`= 68 WHERE 
`regStdNo`='20210216' AND `regLecNo`=349;

UPDATE `Register` SET `regMidScore` = 16, `regFinalScore`= 65 WHERE 
`regStdNo`='20210326' AND `regLecNo`=349;

UPDATE `Register` SET `regMidScore` = 18, `regFinalScore`= 38 WHERE 
`regStdNo`='20201016' AND `regLecNo`=167;

UPDATE `Register` SET `regMidScore` = 25, `regFinalScore`= 58 WHERE 
`regStdNo`='20220416' AND `regLecNo`=349;

#실습3-10


#실습3-11
Select * from `Register` WHERE `regLecNo`=349 ORDER BY `regTotalScore` desc;

#실습3-12
Select # 
from `Register` WHERE `regLecNo`=349 ORDER BY `regTotalScore` desc
 
#실습3-13
#실습3-14
#실습3-15
#실습3-16
#실습3-17
#실습3-18
#실습3-19
#실습3-20
#실습3-21
#실습3-22
#실습3-23
#실습3-24
#실습3-25
#실습3-26
#실습3-27
#실습3-28
#실습3-29
#실습3-30

