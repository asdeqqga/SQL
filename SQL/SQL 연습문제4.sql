#날짜 : 2022/09/01
#이름 : 라성준
#내용 : SQL 연습문제4

#실습4-1
 CREATE DATABASE `java2_BookStore`;
 CREATE USER 'java2_admin4'@'%' IDENTIFIED BY '1234';
 GRANT ALL PRIVILEGES ON `java2_BookStore`.* TO 'java2_admin4'@'%';
 FLUSH PRIVILEGES;
 
#실습4-2
CREATE TABLE `Customer`(
	`custId`  INT AUTO_INCREMENT PRIMARY KEY,
    `name`	  VARCHAR(10) NOT NULL,
    `address` VARCHAR(20),
    `phone`   CHAR(13),
);

CREATE TABLE `book`(
	`bookId`    INT NOT NULL PRIMARY KEY, 
    `bookname`  VARCHAR(20) NOT NULL,
    `publisher` VARCHAR(20) NOT NULL,
    `price`     INT,
);
    
CREATE TABLE `Order`(
	`orderId`   INT PRIMARY KEY AUTO_INCREMENT,
    `custId`    INT Not Null,
    `bookId`    INT Not Null,
    `salePrice` INT NOT NULL,
    `orderDate` DATE NOT NULL,
);
    
    
#실습 4-3
insert into `Customer` (`name`,`address`,`phone`) values ('박지성','영국 맨체스타','000-5000-0001');
insert into `Customer` (`name`,`address`,`phone`)values ('김연아','대한민국 서울',000-6000-0001);
insert into `Customer` (`name`,`address`,`phone`)values ('장미란','대한민국 강원도','000-7000-0001');
insert into `Customer` (`name`,`address`,`phone`)values ('추신수','미국 클리블랜드','000-8000-0001');
insert into `Customer` (`name`,`address`)values ('박세리','대한민국 대전');

insert into `Book` values ('축구의 역사','굿스포츠','7000');
insert into `Book` values ('축구아는 여자','나무수','13000');
insert into `Book` values ('축구의 이해','대한미디어','22000');
insert into `Book` values ('골프 바이블','대한미디어','35000');
insert into `Book` values ('피겨 교본', '굿스포츠','8000');
insert into `Book` values ('역도 단계별기술','굿스포츠','6000');
insert into `Book` values ('야구의 추억','이상미디어','20000');
insert into `Book` values ('야구를 부탁해','이상미디어','13000');
insert into `Book` values ('올림픽 이야기','삼성당','7500');
insert into `Book` values ('Olympic Champions','Pearson','13000');

insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(1,1,1,'6000','2014-07-01');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(2,1,3,'21000','2014-07-03');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(3,2,5,'8000','2014-07-03');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(4,3,6,'6000','2014-07-04');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(5,4,7,'20000','2014-07-05');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(6,1,2,'12000','2014-07-07');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(7,4,8,'13000','2014-07-07');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(8,3,10,'12000','2014-07-08');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(9,2,10,'7000','2014-07-09');
insert into `Order` (`custid`,`bookid`,`saleprice`,`orderdate`)values(10,3,8,'13000','2014-07-10');

#실습4-4
Select * From `Customer` Where `custid`,`name`,`address`;

#실습 4-5
Select * From `book` Where `bookId`,`price`;

#실습 4-6
Select * From `Order` Where `custId`,`salePrice`;

#실습 4-7
Select * From `Order` Where `orderId`,`bookId`,`salePrice`,`oredrDate`;

#실습 4-8
SELECT * From `PRODUSION`;



