# 20HTTT2.BI.12

## Hướng dẫn design SOURCE-STAGE-NDS-DDS

### Điều kiện tiên quyết:

- Ta khởi chạy sẽ chạy VS2022 và SQL SERVER 2022
- Thêm createdDate và updatedDate cho tất cả các bảng của file excel "supermarket_sales.xls"

### SOURCE - STAGE

- SSIS hỗ trợ đưa dữ liệu từ bất kỳ SOURCE vào STAGE để dễ dàng ETL (Extract-Transform-Load) cho từ n nguồn trở lên.
- Điều này giúp cho dễ quản lý các dữ liệu với định dạng khác nhau từ nhiều nguồn.
#### Quy tắc:
- Add thêm 2 trường createdDate và updatedDate vào các bảng trong nguồn.
- Cập nhật CET để có khoảng cách giữa LSET và CET để lấy dữ liệu thay đổi
- Tạo data flow để cập nhật lại khoảng cách LSET, CET
- Say khi đẩy SOURCE - STAGE xong thì cập nhật lại LSET để mai mốt không lấy lại dữ liệu (cũ) đó nữa.

#### Bước 1 (Tạo DBs):

- Tạo 2 database "STAGE" và "METADB" (xem file đính kèm trong InitialDB -> 1.CreateMETADB.sql)
  
#### Bước 2 (Nạp SOURCE vào STAGE):

- Tạo Connection Management (Microsoft OLE DB Provider for SQL Server) dẫn tới SQL SERVER NAME (DATABASE: STAGE)
- Chỉnh connection trong DATA FLOW và mapping các bảng
- Chạy package "SOURCE-STAGE"

### STAGE - NDS

- Ở giai đoạn này, dữ liệu bắt đầu được chuẩn hóa, làm sạch để nâng cao chất lượng dữ liệu và có các SK (SurrogateKey: khóa chính của từng bảng liên quan trong NDS), NK (NaturalKey: khóa chính của các bảng con) và sourceId (khóa nguồn: giúp xác định vị trí của các dữ liệu từ nguồn nào).
#### Quy tắc:
- Tạo các bảng NDS chứa các trường dữ liệu cần thêm để quản lý.
- Tiến hành đẩy dữ liệu từ STAGE -> NDS
- Dữ liệu nào chưa có trong các table_NDS thì insert vào, cái nào có rồi mà thay đổi thì update lại dữ liệu.

#### Bước 1 (Tạo DB NDS):

- Tạo database "NDS" có các bảng rỗng tự khởi tạo (xem file đính kèm InitialDB -> 2.CreateDatabase_NDS.sql)

#### Bước 2 (Nạp STAGE vào NDS - Normalize Data Store):

- Tạo Connection Management (Microsoft OLE DB Provider for SQL Server) dẫn tới SQL SERVER NAME (DATABASE: NDS)
- Chỉnh connection trong DATA FLOW và mapping các bảng
- Chạy package "STAGE-NDS"
