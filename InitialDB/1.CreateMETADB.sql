--Tạo bảng dataflow trong metadb
CREATE TABLE DATA_FLOW
(
	ID INT NOT NULL IDENTITY(1,1),
	NAME VARCHAR(50) NOT NULL,
	STATUS INT,
	LSET DATETIME,
	CET DATETIME,
	CONSTRAINT PK_DATA_FLOW
	PRIMARY KEY CLUSTERED (ID)
)

GO
--Kiểm tra các source trong dataflow
SELECT * FROM DATA_FLOW

--Xóa dữ liệu trong dataflow
DELETE from DATA_FLOW

--Cập nhật lại CET và LSET để nạp vào STAGE
--STAGE
update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'supermarket_sales_STAGE'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'supermarket_sales_STAGE'

update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'product_STAGE'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'product_STAGE'

update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'product_line_STAGE'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'product_line_STAGE'

update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'city_STAGE'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'city_STAGE'

--NDS
update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'supermarket_sales_NDS'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'supermarket_sales_NDS'

update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'product_NDS'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'product_NDS'

update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'product_line_NDS'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'product_line_NDS'

update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'city_NDS'
update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'city_NDS'

--Thêm giá trị của bảng stage vào dataflow để quản lý
INSERT INTO DATA_FLOW (NAME, STATUS, LSET, CET)
VALUES ('supermarket_sales_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
('product_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
('product_line_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
('city_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),

('supermarket_sales_NDS', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
('product_NDS', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
('product_line_NDS', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
('city_NDS', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00')