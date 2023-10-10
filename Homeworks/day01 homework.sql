CREATE TABLE tedarikciler(
	tedarikci_id INT,
	tedarikci_ismi VARCHAR(30),
	tedarikci_adres VARCHAR(100),
	ulasim_tarihi DATE);
	
SELECT * FROM tedarikciler;	
	
CREATE TABLE tedarikci_info AS SELECT tedarikci_ismi,ulasim_tarihi FROM tedarikciler;

SELECT * FROM tedarikci_info;

CREATE TABLE ogretmenler(
	kimlik_no CHAR(11),
	isim VARCHAR(25),
	brans VARCHAR(25),
	cinsiyet VARCHAR(5));
	
SELECT * FROM ogretmenler;	

INSERT INTO ogretmenler VALUES('234431223','Ayse Guler','Matematik','Kadın');
INSERT INTO ogretmenler VALUES('234431224','Ali Guler','Fizik','Erkek');

INSERT INTO ogretmenler VALUES('567597624','Veli Guler');

	
	
	