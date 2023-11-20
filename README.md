# 20HTTT2.BI.12
## Hướng dẫn design SOURCE-STAGE-NDS-DDS
### Điều kiện tiên quyết:
- Ta khởi chạy sẽ chạy VS2022 và SQL SERVER 2022
### Source - Stage
#### Bước 1 (Tạo DBs):
- Tạo Connection Management (Microsoft OLE DB Provider for SQL Server) dẫn tới SQL SERVER NAME (NO DATABASE)
- Chạy package "CREATE-DBs.dtsx"
#### Bước 2 (Nạp SOURCE vào STAGE): 
- Tạo Connection Management (Microsoft OLE DB Provider for SQL Server) dẫn tới SQL SERVER NAME (DATABASE: SUPERMARKET_SALES_STAGE)
- Chỉnh connection trong DATA FLOW và mapping các bảng
- Chạy package "SOURCE-STAGE"
#### Bước 3 (Nạp STAGE vào NDS - Normalize Data Store):
