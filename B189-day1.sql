--TEK YORUM SATIRI
/*ÇOKLU YORUM SATIRI*/
-----------DAY'1 NT-----------------------
--1-Database oluşturma
CREATE DATABASE ismail;--SQL komutlarında büyük/küçük harf duyarlılığı yoktur.
create database ismail2;

--2 database silme
DROP DATABASE ismail2;

--3-table oluşturma
CREATE TABLE students(id CHAR(4),name VARCHAR(20),grade REAL,register_date DATE);

--4-mevcut bir tablodan yeni tablo oluşturma
CREATE TABLE grades AS SELECT name,grade FROM students;

--5-tabloya data ekleme
INSERT INTO students VALUES('1001','Sherlock Holmes',99.8,'2023-10-04');
INSERT INTO students VALUES('1002','Harry Potter',100.0,now());

--6-tablodaki tüm kayıtları görüntüleme
SELECT * FROM students;

--7-tablodaki bazı sütunlara data ekleme

INSERT INTO students(name,grade,) VALUES('Jack Sparrow',88.8,); 

--8-tabloda belirli sütunlardaki dataları görüntüleme

SELECT name,grade,FROM students;





