---------------------------DAY'2--------------------
--------------------------tekrar--------------------

CREATE TABLE sairler(
id INT,
name VARCHAR(50),
email VARCHAR(50));

SELECT*FROM sairler;

INSERT INTO sairler VALUES(1001,'Can Yücel','sair@mail.com');
INSERT INTO sairler VALUES(1001,'Necip Fazıl','sair@mail.com');
INSERT INTO sairler VALUES(1002,'','sair@mail.com');

INSERT INTO sairler(name) VALUES('Nazım Hikmet');

--9-tabloya UNIQUE constrainti ekleme

CREATE TABLE it_personal
(id SERIAL,
 name VARCHAR(50),
 email VARCHAR(50) UNIQUE,
 salary REAL,
 prog_lang VARCHAR(20)
);

INSERT INTO it_personal(name,email,salary,prog_lang)
VALUES('İsmail Şap','qa@mail.com',5000,'Java');

INSERT INTO it_personal(name,email,salary,prog_lang)
VALUES('Zafer Bey','dev@mail.com',5000,'Java');

INSERT INTO it_personal(name,email,salary)
VALUES('Buse Hanım','tester@mail.com',5000);

SELECT*FROM it_personal;

--10-tabloya NOT NULL constrainti ekleme

CREATE TABLE  doctors(
	id SERIAL,
	name VARCHAR(50) NOT NULL,
	email VARCHAR(50) UNIQUE,
	salary REAL
);

INSERT INTO doctors(name,email,salary) VALUES('Fatıma Hoca','dr@mail.com',7000);
INSERT INTO doctors(name,email,salary) VALUES('Dr.Gregory House','doctor@mail.com',7000);

SELECT*FROM doctors;

--11-tabloya primary constrainti ekleme

CREATE TABLE students2(
id INT PRIMARY KEY,--UNIQUE,NOT NULL,başka bir tablo ile ilişkilendirmek için kullanılacak
name VARCHAR(50),
grade REAL,
register_date DATE	
);
SELECT*FROM students2;

--11-tabloya PK constrainti ekleme:2.yöntem
CREATE TABLE students3(
id int,--UNIQUE,NOT NULL,başka bir tablo ile ilişkilendirmek için kullanılacak
name varchar(50),
grade real,
register_date date,
CONSTRAINT std_pk PRIMARY KEY(id)	
);
SELECT * FROM students3;

--composite key
CREATE TABLE students4(
id int,
name varchar(50),
grade real,
register_date date,	
CONSTRAINT composite_pk PRIMARY KEY(id,name)
);
SELECT*FROM students4;

--12-tabloya foreign constrainti ekleme

CREATE TABLE address(
adress_id int,
street varchar(50),
city varchar(20),
student_id int,--foreign key olsun
CONSTRAINT add_fk FOREIGN KEY(student_id) REFERENCES students3(id)
);

SELECT*FROM address;

--13-tabloya CHECK constrainti ekleme

CREATE TABLE personel(
id int,
name varchar(50),
salary real CHECK(salary>5000),
age int CHECK(age>0 AND age<50) --negatif olmamalı
);

INSERT INTO personel VALUES(11,'Ali Can',7000,25);


SELECT*FROM personel;






