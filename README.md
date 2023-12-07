# 20HTTT2.BI.12

## Hướng dẫn design SOURCE-STAGE-NDS-DDS

### Điều kiện tiên quyết:

- Ta khởi chạy sẽ chạy VS2022 và SQL SERVER 2022
- Thêm createdDate và updatedDate cho tất cả các bảng của file excel "supermarket_sales.xls"

### SOURCE - STAGE

#### Bước 1 (Tạo DBs):

- Tạo 2 database "STAGE" và "METADB"
  - METADB có bảng như sau:
-     --Tạo bảng dataflow trong metadb
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
      update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'supermarket_sales_STAGE'
      update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'supermarket_sales_STAGE'

      update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'product_STAGE'
      update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'product_STAGE'

      update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'product_line_STAGE'
      update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'product_line_STAGE'

      update DATA_FLOW SET LSET = '2006-01-01 00:00:00' WHERE NAME = 'city_STAGE'
      update DATA_FLOW SET CET = '2006-01-01 00:00:00' WHERE NAME = 'city_STAGE'

      --Thêm giá trị của bảng stage vào dataflow để quản lý
      INSERT INTO DATA_FLOW (NAME, STATUS, LSET, CET)
      VALUES ('supermarket_sales_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
      ('product_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
      ('product_line_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00'),
      ('city_STAGE', 1, '2006-01-01 00:00:00', '2007-01-01 00:00:00')

#### Bước 2 (Nạp SOURCE vào STAGE):

- Tạo Connection Management (Microsoft OLE DB Provider for SQL Server) dẫn tới SQL SERVER NAME (DATABASE: STAGE)
- Chỉnh connection trong DATA FLOW và mapping các bảng
- Chạy package "SOURCE-STAGE"

### STAGE - NDS

#### Bước 1 (Tạo DB NDS):

- Tạo database "NDS" có các bảng và khóa
- ...

#### Bước 2 (Nạp STAGE vào NDS - Normalize Data Store):

- Tạo Connection Management (Microsoft OLE DB Provider for SQL Server) dẫn tới SQL SERVER NAME (DATABASE: NDS)
- Chỉnh connection trong DATA FLOW và mapping các bảng
- Chạy package "STAGE-NDS"
