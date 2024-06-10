USE KonMelShop;
GO

SET IDENTITY_INSERT [dbo].[tbl_Cart] ON;
GO

INSERT [dbo].[tbl_Cart] ([cartId], [userId], [stuffId], [quantity]) 
VALUES (3, N'tran@gmail.com', N'ferfe', 33);
GO

SET IDENTITY_INSERT [dbo].[tbl_Cart] OFF;
GO

INSERT [dbo].[tbl_Stuff] ([stuffId], [description], [price], [stuffName], [yearOfProduction], [quantity], [notSale], [image]) 
VALUES 
(N'#5353', N'Very Luxury', 94949, N'Givenchy', 2023, 9, 0, N'images.jpg'),
(N'43', N'hehee', 99999, N'33', 33, 11, 0, N'apple-iphone-14-pro-max-1.jpg'),
(N'ferfe', N'343', 34234, N'dfas', 2342, 9, 0, N'loginshoes.jpg.jpg'),
(N'wewe', N'22', 322, N's234', 222, 22, 0, N'con bo cuoi.jpg');
GO

INSERT [dbo].[tbl_User] ([userId], [password], [fullName], [role]) 
VALUES 
(N'hoang@gmail.com', 123, N'HoangHoang', 2),
(N'tran@gmail.com', 123, N'BaoTran', 0),
(N'khoa@gmail.com', 123, N'DangKhoa', 0);
GO
