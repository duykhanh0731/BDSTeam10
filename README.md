# BDSTeam10
Đoạn code add data của property
INSERT INTO `dbo.Property`(Property_Name,Property_Type_ID,Description,District_ID,Address,Area,Bed_Room,Bath_Room,Price,Installment_Rate,Property_Status_ID) VALUES(N'NHÀ PHỐ GARDEN KHANG ĐIỀN',2,N'Nhà xây 1 trệt, 2 lầu, hoàn thiện bên ngoài kính cường lực.',3,N'Nhà xây 1 trệt, 2 lầu, hoàn thiện bên ngoài kính cường lực, sơn nước chống rêu mốc chất lượng.',11,3,3,1000000000,7.99,6);
- Quốc và Khánh đã code trigger Property, Full_Contract
- Các file trigger và database đã được Quang convert mysql
- Quang Đã edit lại code database để phù hợp với kí tự của dữ liệu truyền từ web sang mysql (tăng số lượng ký tự truyền vào)
- Quang đã build web bằng PHP JS mysql
- Quang phụ Quốc code trigger (tạo thêm bảng TempSequence để giá trị tăng dần được lưu trong bảng TempSequence. Mỗi lần trigger chạy, nó sẽ chèn một giá trị mới vào bảng tạm thời và sử dụng nó cho Full_Contract_Code. Sau đó, giá trị đã sử dụng sẽ được xóa khỏi bảng tạm thời.)
