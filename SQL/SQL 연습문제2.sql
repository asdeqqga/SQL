#날짜 : 2022#날짜 : 2022/08/30
#이름 : 라성준
#내용 : SQL 연습문제2

#실습2-1
create database `java2_Bank`;
create user 'java2_admin2'@'%' identified by '1234';
grant all privileges on `java2_Bank`.* to 'java2_admin2'@'%';
flush privileges;

#실습 2-2
CREATE TABLE `bank_customer` ( 
	`c_no`      CHAR(14) PRIMARY KEY,
    `c_name`    	VARCHAR (20) NOT NULL,
    `c_dist`    	TINYINT NOT NULL DEFAULT 0,
    `c_phoe`     VARCHAR(20) UNiQUE NOT NUll,
    `c_addr`  		VARCHAR (100)
);
    
CREATE TABLE `bank_account` ( 
    `a_no`          CHAR(11) primary key,
	`a_item_dist`   CHAR(2)  NOT NULL,
	`a_item_name`   VARCHAR(20) NOT NULL,
	`a_c_no`           CHAR(14) NOT NULL,
	`a_balace`      INT NOT NULL DEFAULT 0,
	`a_open_date`   DATE NOT NULL
);
    
create table `bank_transaction`( 
`t_no` Int auto_increment Primary key,
`t_a_no` Char(11) Not Null,
`t_dist` Tinyint Not Null,
`t_amount` Int not null Default 0,
`t_datetime` Datetime not null
);  

#실습 2-3
insert into `bank_customer` values ('102-22-51094','부산의원',2,'051-518-1010','부산시 남구');
insert into `bank_customer` values ('220-82-52237','(주)한국전산','2','02-134-1045','서울시 강서구');
insert into `bank_customer` values ('361-22-42687','(주)정보산업','2','031-563-1253','경기도 광명시');
insert into `bank_customer` values ('730423-1000001','김유신','1','010-1234-1001','경기도 수원시');
insert into `bank_coustomer`values ('750210-1000002','김춘추','1','010-1234-1002','경기도 광주시'); 
insert into `bank_coustomer`values ('830513-2000003','선덕여왕','1','010-1234-1003','서울시 마포구');
insert into `bank_coustomer`values ('870830-1000004','강감찬','1','010-1234-1004','서울시 영등포구');
insert into `bank_coustomer`values ('910912-2000005','신사임당','1','010-1234-1005','강원도 강릉시');
insert into `bank_coustomer`values ('941127-1000006','이순신','1','010-1234-1006','부산시 영도구');

insert into `bank_account`values ('101-11-1001','51','자유저축예금','730423-1000001','420,000','2005-07-21');
insert into `bank_account`values ('101-11-1003','51','자유저축예금','870830-1000004','53,000','2007-02-17');
insert into `bank_account`values ('101-11-2001','51','자유저축예금','220-82-52237','23,000,000','2003-04-14');

#실습 2-4
 select * from `bank_account`;

#실습 2-5
 SELECT * FROM `bank_customer`;
 
 #실습 2-6
 
 #실습 2-7
  SELECT `c_name`, `c_no` FROM `bank_customer`;
  
  #실습 2-8
  
  #실습 2-9
  