s
create table Employee_Type(
   ID int identity(1,1) primary key,
   employeeType nvarchar(100)
)
INSERT [dbo].[Employee_Type] VALUES (N'Nhân viên lễ tân')
,( N'Quản lý nhân sự')
,( N'Người lao động')
,( N'Thực tập sinh')
,( N'Công nhân viên')

create table Role(
   ID int identity(1,1) primary key,
   roleName nvarchar(100)
)
INSERT [dbo].[Role] VALUES ( N'admin')
,( N'employee')
,( N'customer')

create table Account(
   ID int identity(1,1) primary key,
   username nvarchar(100),
   password nvarchar(10),
   displayName nvarchar(100),
   roleID int references Role(ID)
)
INSERT [dbo].[Account] VALUES (N'nguyenbaolan', N'12345678', N'Nguyễn Bảo Lan', 3)
,(N'luuhoanghai', N'12345678', N'Lưu Hoàng Hải', 3)
,( N'trinhducanh', N'12345678', N'Trịnh Đức Anh', 2)
,( N'nguyenhailinh', N'12345678', N'Nguyễn Hải Linh', 1)

create table Employee(
   ID int identity(1,1) primary key,
   employeeType int references Employee_Type(ID),
   status bit,
   accountID int references Account(ID),
   image nvarchar(100),
   gender bit,
   email nvarchar(100),
   phone nvarchar(20)
)
INSERT [dbo].[Employee]  VALUES (1, 1, 2, NULL, 1, N'trinhducanh123@gmail.com', N'12345678')

create table Customer(
   ID int identity(1,1) primary key,
   Phone nvarchar(100),
   Email nvarchar(100),
   Address nvarchar(500),
   IDProof nvarchar(100),
   gender bit,
   image nvarchar(100),
   status bit,
   accountID int references Account(ID)
)
INSERT [dbo].[Customer] VALUES ( N'1234567890', N'nguyebaolan123@gmail.com', N'Hải Dương', N'030301000987', 0, NULL, 1, 1)
INSERT [dbo].[Customer] VALUES ( N'0987654321', N'luuhoanghai@gmail.com', N'Thái Bình', N'030301000987', 1, NULL, 1, 2)

create table Product_Type(
   ID int identity(1,1) primary key,
   ProductTypeName nvarchar(100)
)
INSERT [dbo].[Product_Type]  VALUES ( N'Đồ nướng mặn và ngọt')
INSERT [dbo].[Product_Type] VALUES ( N'Đồ nóng')
INSERT [dbo].[Product_Type] VALUES ( N'Đồ uống')

create table Product(
   ID int identity(1,1) primary key,
   productName nvarchar(100),
   cost float,
   productTypeID int references Product_Type(ID),
   quantity int,
   status bit, 
   description nvarchar(MAX)
)
INSERT [dbo].[Product]  VALUES ( N'bánh mì', 100, 1, 10, 1, N'bánh mì nướng')
INSERT [dbo].[Product] VALUES ( N'bánh cuộn', 100, 1, 10, 1, NULL)
INSERT [dbo].[Product] VALUES ( N'bánh quy', 100, 1, 10, 1, NULL)
INSERT [dbo].[Product]  VALUES ( N'bánh sừng bò', 200, 1, 20, 1, NULL)
INSERT [dbo].[Product] VALUES ( N'bánh cà phê', 200, 1, 20, 0, NULL)
INSERT [dbo].[Product] VALUES ( N'Trứng cuộn, trứng chiên, trứng cuộn và trứng tráng ', 500, 2, 50, 1, N'Trứng cuộn, trứng chiên, trứng cuộn và trứng tráng (với hành tây, phô mai, giăm bông, thịt xông khói hoặc nấm,) luộc, nướng hoặc nướng, letcho (đặc sản bữa sáng ấm áp của Hungary), rau nướng, ratatouille, bánh mì nướng Pháp đồ gia vị.')

create table Room_Type(
   ID int identity(1,1) primary key,
   RoomType nvarchar(100),
   Price float,
   NumberOfPeople int,
   description nvarchar(MAX)
)
INSERT [dbo].[Room_Type]  VALUES ( N'Single bed room', 1000, 1, N'phòng thiết kế có 1 giường cho 1 người ngủ')
INSERT [dbo].[Room_Type] VALUES ( N'Twin bed room', 2000, 2, N'phòng thiết kế có 2 giường cho 2 người ngủ')
INSERT [dbo].[Room_Type]  VALUES ( N'Double bed room', 2500, 2, N'phòng thiết kế có 1 giường lớn đủ cho 2 người ngủ')
INSERT [dbo].[Room_Type]  VALUES ( N'Triple bed room', 3000, 3, N'phòng có 3 giường nhỏ hoặc 1 giường lớn và 1 giường nhỏ đủ được cho 3 người ngủ.')
INSERT [dbo].[Room_Type] VALUES ( N'Executive Suite', 4000, NULL, N'Đây là phòng thuộc dòng cao cấp nhất ở các loại phòng trong khách sạn có với diện tích có thể lên đến 80m2. Phòng được trang bị đầy đủ cả từ bồn tắm đứng và bồn tắm nằm, bàn làm việc thuộc cỡ lớn, điện thoại kết nối quốc tế, hồ bơi bên ngoài trời, phòng khách cũng như khu vực bếp riêng biệt')
INSERT [dbo].[Room_Type] VALUES ( N'Junior Suite', 35000, NULL, N'Phòng junior suite với diện tích khoảng 60-70m2 được thiết kế nhìn ra view đẹp hướng núi, hướng biển và hướng toàn cảnh của thành phố.')
INSERT [dbo].[Room_Type] VALUES ( N'Standard', 500, NULL, N'Đây là một loại phòng với diện tích khá nhỏ, thường được xây dựng ở các tầng thấp và không có view cao, đẹp.
Trang thiết bị của phòng này cũng được khách sạn đầu tư một cách tối giản đến mức tối thiểu. Chính vì vậy, giá phòng standard sẽ ở mức độ thấp nhất trong các loại phòng của khách sạn.')

create table Room(
   ID int identity(1,1) primary key,
   RoomName nvarchar(100),
   status bit,
   RoomTypeID int references Room_Type(ID)
)
INSERT [dbo].[Room]  VALUES ( N'F1001', 1, 1)
INSERT [dbo].[Room] VALUES ( N'F1002', 1, 2)
INSERT [dbo].[Room] VALUES ( N'F1003', 1, 1)
INSERT [dbo].[Room]  VALUES ( N'F1004', 0, 3)
INSERT [dbo].[Room]  VALUES ( N'F1005', 1, 4)
INSERT [dbo].[Room]  VALUES ( N'F1006', 1, 5)
INSERT [dbo].[Room] VALUES ( N'F1007', 0, 6)
INSERT [dbo].[Room]VALUES ( N'F1008', 1, 1)
create table Booking(
   ID int identity(1,1) primary key,
   CustomerID int references Customer(ID),
   RoomID int references Room(ID),
   CheckIn datetime,
   CheckOut datetime,
   status bit
)
create table [Order](
   ID int identity(1,1) primary key,
   ProductID int references Product(ID),
   BookingID int references Booking(ID),
   OrderDate datetime
)
create table Payment(
   ID int identity(1,1) primary key,
   BookingID int references Booking(ID),
   amount float,
   PaymentDate date,
   Note date,
   status bit
)