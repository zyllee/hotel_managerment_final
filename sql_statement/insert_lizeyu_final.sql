--插入到customer
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'111111111111111111', N'男  ', N'曹迅滔', N'19999999999', 899)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'222222222222222222', N'男  ', N'罗泳淋', N'17777777777', 9999)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'233333333333333333', N'男  ', N'杨巳兴', N'13999999999', 1314)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'333333333333333333', N'男  ', N'王虎', N'19999999999', 3999)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'510113199806295310', N'男  ', N'张华凌', N'13838381438', 5999)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'51050219971215873X', N'男  ', N'肖誉杰', N'13541846167', 9999)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'511023199810101871', N'男  ', N'李泽宇', N'15828620802', 39998)
INSERT [dbo].[customers] ([customerIDCard], [customerGender], [customerName], [customerPhoneNumber], [totalAmount]) VALUES (N'511321199802250318', N'男  ', N'雍洋', N'18888888888', 19999)
--插入到[roomTypeAndPrice]
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'单人间', 699)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'海景房', 19999)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'豪华单人房', 3999)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'豪华双人房', 5999)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'情侣间', 1314)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'三人间', 1399)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'商务间', 899)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'双人间', 999)
INSERT [dbo].[roomTypeAndPrice] ([roomType], [price]) VALUES (N'尊贵套房', 9999)
--插入到room
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1001  ', N'海景房', N'只要你敢想，我们就有')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1002  ', N'尊贵套房', N'只要你敢想，我们就有')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1003  ', N'豪华双人房', N'wifi，100英寸大电视，电脑')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1004  ', N'豪华单人房', N'只要你敢想，我们就有')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1005  ', N'三人间', N'三人行,必有我师')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1006  ', N'情侣间', N'房间内有免费安全套')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1007  ', N'双人间', N'无窗户')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1008  ', N'商务间', N'高级办公桌,电脑空调')
INSERT [dbo].[room] ([roomNumber], [roomType], [remarks]) VALUES (N'1009  ', N'单人间', N'设备齐全')
--插入到order
SET IDENTITY_INSERT [dbo].[orders] ON
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (16, N'预订中            ', N'511023199810101871', N'1001  ', CAST(0x213F0B00 AS Date), CAST(0x253F0B00 AS Date), 39998, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (17, N'预订中            ', N'51050219971215873X', N'1002  ', CAST(0x253F0B00 AS Date), CAST(0x263F0B00 AS Date), 9999, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (18, N'预订中            ', N'510113199806295310', N'1003  ', CAST(0x213F0B00 AS Date), CAST(0x243F0B00 AS Date), 5999, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (19, N'预订中            ', N'511321199802250318', N'1001  ', CAST(0x253F0B00 AS Date), CAST(0x283F0B00 AS Date), 19999, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (20, N'预订中            ', N'111111111111111111', N'1008  ', CAST(0x233F0B00 AS Date), CAST(0x263F0B00 AS Date), 899, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (21, N'预订中            ', N'222222222222222222', N'1002  ', CAST(0x213F0B00 AS Date), CAST(0x243F0B00 AS Date), 9999, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (22, N'预订中            ', N'333333333333333333', N'1004  ', CAST(0x213F0B00 AS Date), CAST(0x243F0B00 AS Date), 3999, CAST(0x133F0B00 AS Date))
INSERT [dbo].[orders] ([orderNumber], [orderStatus], [customerIDCard], [roomNumber], [checkInTime], [checkOutTime], [totalMoney], [orderTime]) VALUES (23, N'预订中            ', N'233333333333333333', N'1006  ', CAST(0x223F0B00 AS Date), CAST(0x253F0B00 AS Date), 1314, CAST(0x133F0B00 AS Date))
SET IDENTITY_INSERT [dbo].[orders] OFF
--插入到续费
SET IDENTITY_INSERT [dbo].[timeExtension] ON
INSERT [dbo].[timeExtension] ([operatingID], [orderNumber], [oldExpiryDate], [newExpiryDate], [addMoney]) VALUES (8, 16, CAST(0x243F0B00 AS Date), CAST(0x253F0B00 AS Date), 19999)
SET IDENTITY_INSERT [dbo].[timeExtension] OFF