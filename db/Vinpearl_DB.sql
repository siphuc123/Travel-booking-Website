-- Chon kenh master
use master 
go 

IF EXISTS (SELECT * FROM sys.databases WHERE name = 'Vinpearl_Clone')
	BEGIN
		-- Xoas csdl neu dang co
		drop database Vinpearl_Clone
	END
-- Tao bang csdl moi
CREATE DATABASE Vinpearl_Clone
go 

-- Dung` db moi
use Vinpearl_Clone
go 

CREATE TABLE  categories ( 
 id   varchar (50) primary key, 
 name   nvarchar (50) NULL, 
) 
go

CREATE TABLE accounts 
( 
 username   varchar (50) primary key, 
 activated   bit  NOT NULL, 
 admin   bit  NOT NULL, 
 email   varchar (50) NULL, 
 fullname   nvarchar (50) NULL, 
 password   varchar (50) NULL, 
 photo   varchar (50) NULL, 
)
GO 

CREATE TABLE  products ( 
 id   int  IDENTITY(1,1) primary key, 
 available   bit  NULL, 
 createdate   date  NULL, 
 image   varchar (50) NULL, 
 name   nvarchar (150) NULL, 
 price   float  NULL, 
 categoryid   varchar (50) references categories(id) 
) 
go 

CREATE TABLE  orders ( 
 id   int  IDENTITY(1,1) primary key, 
 address   nvarchar (50) NULL, 
 createdate   date  NULL, 
 username   varchar (50) references accounts(username) 
) 
go 

CREATE TABLE  orderdetails ( 
 id   int  IDENTITY(1,1) primary key, 
 price   float  NULL, 
 quantity   int  NULL, 
 orderid   int  references orders(id), 
 productid   int  references products(id) 
) 
GO 

 
 
-- Chay cac table
INSERT INTO categories VALUES
('PS001',N'Tour Nội Địa Cao Cấp'),
('PS002',N'Tour Du Lịch Hè Giá Tốt'),
('PS003',N'Tour Nước Ngoài Cao Cấp'),
('PS004',N'Tour Du Lịch Bằng Xe Lửa'),
('PS005',N'Tour Du Lịch Trung Quốc - Hồng Kông - Đài Loan'),
('PS006',N'Tour Du Lịch Nhật Bản'),
('PS007',N'Tour Du Lịch Châu Âu - Mỹ - Úc'),
('PS008',N'Tour Du Lịch Tây Nguyên'),
('PS009',N'Tour City Breaks Ngắn Ngày'),
('PS010',N'Tour Siêu Du Thuyền 5 Sao')
GO
select * from categories
go 

INSERT INTO accounts VALUES
('phuc123',1,1,'phuc12@email.com',N'Nguyễn Sĩ Trọng Phúc','123','phuc.jpg'),
('huy69',1,1,'huy6@email.com',N'Đặng Quang Huy','69','huy.jpg'),
('hiep333',1,0,'hiep3@email.com',N'Trần Văn Hiệp','333','hiep1.jpg'),
('doanh000',1,0,'doanh0@email.com',N'Trần Hoàng Doanh','000','doanh.jpg'),
('sang88',1,0,'sang8@email.com',N'Nguyễn Lê Ngọc Sang','88','sang.jpg'),
('huy666',1,0,'huy6@email.com',N'Lê Quang Huy','666','huy2.jpg'),
('nghiep1111',1,1,'phuc12@email.com',N'Đồng Quốc Nghiệp','123','nghiep.jpg'),
('thuan123',1,0,'thuan1@email.com',N'Nguyễn Anh Thuận','123','thuan.jpg'),
('hiep321',1,0,'hiep4@email.com',N'Gia Đức Hiệp','321','hiep2.jpg'),
('phuong84',1,0,'phuong8@email.com',N'Lê Tấn Phường','084','phuong.jpg')
GO
select * from accounts 
go 

INSERT INTO products (available,createdate,[image],[name],price,categoryid) VALUES
(1,GETDATE(),'Singapore01.jpg',N'Tour Singapore 3N2Đ: Khám Phá Quốc Đảo Sư Tử - Công Viên Fort Canning',7180000,'PS002'),
(1,GETDATE(),'Campuchia01.jpg',N'Tour Campuchia 3N3Đ: Cao Nguyên Bokor - Sihanoukville - Đảo Thiên Đường Kohrong Saloem',7180000,'PS002'),
(1,GETDATE(),'Thailand01.jpg',N'Tour Thái Lan 5N4Đ: Bangkok - Pattaya - Đảo San Hô - Nong Nooch',9280000,'PS002'),
(1,GETDATE(),'LienTuyen01.jpg',N'Tour Liên Tuyến Ba Nước 6N5Đ: Singapore - Indonesia - Malaysia',9380000,'PS003'),
(1,GETDATE(),'Dubai01.jpg',N'Tour Cao Cấp Dubai 4N4Đ: Dubai - Abu Dhabi - Miracle Garden',7980000,'PS003'),
(1,GETDATE(),'HanQuoc01.jpg',N'Tour Hàn Quốc 5N5Đ: Busan - Daegu - Seoul',8980000,'PS003'),
(1,GETDATE(),'MienBac01.jpg',N'Tour Miền Bắc 5N4Đ: Sài Gòn - Hạ Long - Ninh Bình - Tam Chúc - Sapa',8380000,'PS001'),
(1,GETDATE(),'PhuQuoc01.jpg',N'Tour Phú Quốc 3N2Đ: HCM - Grand World - Câu Cá - Lặn Ngắm San Hô',6580000,'PS001'),
(1,GETDATE(),'DaLat01.jpg',N'Tour Cao Cấp Đà Lạt 2N2Đ: Bảo Lộc - Làng Hàn Quốc The Eco Tropicana - Samten Hills - Thác Dambri',4980000,'PS001'),
(1,GETDATE(),'Thailand02.jpg',N'Tour Bangkok City Break 3N2Đ: Thiên Đường Mua Sắm Pratunam',9980000,'PS009'),
(1,GETDATE(),'Singapore02.jpg',N'Tour Singapore City Break 3N2Đ: Trải Nghiệm Quốc Đảo Sư Tử',7180000,'PS009'),
(1,GETDATE(),'Nhatban01.jpg',N'Tour Nhật Bản 5N5Đ: Sắc Màu Cung Đường Vàng Osaka - Kyoto - Yamanashi - Tokyo',8780000,'PS006'),
(1,GETDATE(),'Nhatban02.jpg',N'Tour Nhật Bản 6N5Đ: Osaka - Kobe - Kyoto - Nagoya - Núi Phú Sĩ - Tokyo',9980000,'PS006')
GO
select * from products 
go 

INSERT INTO orders VALUES
(N'123 Đường Dương Ziệt, Long Hòa',GETDATE(),'huy69'),
(N'45 Đường Thuần Hoa, Tân Hiệp',GETDATE(),'huy666'),
(N'78 Đường Tân Phú, Hoa Gia',GETDATE(),'sang88'),
(N'20 Đường Trần Quốc Tiến, Văn Hiệp',GETDATE(),'hiep333'),
(N'128 Đường Tân Kỳ Tân Quý, Nhà Lò',GETDATE(),'phuc123'),
(N'121 Đường Dương Việt, Hỏa Lò',GETDATE(),'huy69'),
(N'55 Đường Dương Việt, Hơi Kì',GETDATE(),'huy69'),
(N'78 Đường Đại Việt, La Thăng',GETDATE(),'sang88'),
(N'128 Đường Tân Kỳ Tân Quý, Nhà Lò',GETDATE(),'phuc123'),
(N'111 Đường Tân Kỳ Tân Quý, Quốc Phúc',GETDATE(),'phuc123'),
(N'08 Đường Tân Kỳ Tân Quý, Phước Long',GETDATE(),'phuong84')
GO
select * from orders 
go 

INSERT INTO orderdetails VALUES
(57980000,2,1,5),
(35980000,6,6,6),
(57980000,1,2,5),
(27380000,2,3,4),
(13980000,2,4,3),
(13980000,1,5,3),
(8180000,4,11,2),
(10580000,3,7,8),
(4980000,2,8,9),
(57980000,1,9,5)
GO
select * from orderdetails 
go 
