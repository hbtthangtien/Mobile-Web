USE [Mobile_Web]
GO

INSERT INTO [dbo].[Categories] ([nameCategorie]) VALUES ('APPLE'),('SAMSUNG'),('XIAOMI'),('OPPO'),('REALME')
GO

INSERT INTO [dbo].[Product] ([nameProduct]
			, [primePrice] 
			,[salePrice] 
			,[quantity] 
			,[brand] 
			,[screen_size]
			,[screen_technology]
			,[rear_camera]
           ,[front_camera]
           ,[chipset]
           ,[ram_capacit]
           ,[internal_storage]
           ,[pin]
           ,[sim_card]
           ,[os]
           ,[screen_resolution]
           ,[screen_features]
		   ,[image]
           ,[idCategorie])
     VALUES
	 --1
		   (N'Samsung Galaxy S23 Ultra 256GB'
		   ,31990000
		   ,21790000
		   ,30
		   ,'SAMSUNG'
		   ,'6.8 inches'
		   ,'Dynamic AMOLED 2X'
		   ,N'Siêu rộng: 12MP F2.2 (Dual Pixel AF)<br>Chính: 200MP F1.7 OIS ±3° (Super Quad Pixel AF)<br>Tele 1: 10MP F4.9 (10X, Dual Pixel AF) OIS,<br>Tele 2: 10MP F2.4 (3X, Dual Pixel AF) OIS Thu phóng chuẩn không gian 100X'
		   ,'12MP F2.2 (Dual Pixel AF)'
		   ,'Snapdragon 8 Gen 2 (4 nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5.000mAh'
		   ,N'2 Nano SIM hoặc 1 Nano + 1 eSIM'
		   ,'Android'
		   ,'1440 x 3088 pixels (QHD+)'
		   ,'120Hz, HDR10+, 1750 nits, Gorilla Glass Victus 2'
		   ,'imgs/products/100001.jpg'
		   ,2
		   ),
--2
		   (N'iPhone 15 Pro Max 256GB | Chính hãng VN/A'
		   ,38990000
		   ,34990000
		   ,30
		   ,'APPLE'
		   ,'6.7 inches'
		   ,'Super Retina XDR OLED'
		   ,N'Camera chính: 48MP, 24 mm, ƒ/1.78, <br>Camera góc siêu rộng: 12 MP, 13 mm,
		   ƒ/2.2<br>Camera Tele 5x: 12 MP, 120 mm, ƒ/2.8<br>Camera Tele 2x: 12 MP, 48 mm, ƒ/1.78'
		   ,'12MP, ƒ/1.9'
		   ,'A17 Pro'
		   ,'8 GB'
		   ,'256 GB'
		   ,'4422 mAh'
		   ,'2 SIM (nano‑SIM và eSIM)'
		   ,'iOS 17'
		   ,'2796 x 1290-pixel'
		   ,N'Tốc độ làm mới 120Hz<br>460 ppi<br>HDR<br>True Tone<br>Dải màu rộng (P3)<br>Haptic Touch<br>Tỷ lệ tương phản 2.000.000:1'
		   ,'imgs/products/100002.jpg'
		   ,1
		   ),
--3
		    (N'iPhone 15 128GB | Chính hãng VN/A'
		   ,22990000
		   ,21990000
		   ,30
		   ,'APPLE'
		   ,'6.1 inches'
		   ,'Super Retina XDR OLED'
		   ,N'Camera chính: 48MP<br>Camerra góc rộng: 12MP<br> Camera Tele: 12MP'
		   ,'12MP'
		   ,'Apple A16 Bionic'
		   ,'6 GB'
		   ,'128 GB'
		   ,'3349 mAh'
		   ,'2 SIM (nano‑SIM và eSIM)'
		   ,'iOS 17'
		   ,'1179 x 2556 pixels'
		   ,N'Dynamic Island <br>HDR display <br>True Tone <br>Wide color (P3) 
		   <br>Haptic Touch<br>Lớp phủ oleophobia chống dấu vân tay<br>Độ sáng tối đa: 2000 nits
		   <br>Mặt kính cảm ứng: Kính cường lực Ceramic Shield'
		   ,'imgs/products/100003.jpg'
		   ,1
		   ),
--4
			(N'iPhone 14 Pro Max 128GB | Chính hãng VN/A'
		   ,29990000
		   ,26390000
		   ,30
		   ,'APPLE'
		   ,'6.7 inches'
		   ,'Super Retina XDR OLED'
		   ,N'Camera chính: 48 MP, f/1.8, 24mm, 1.22µm, PDAF, OIS <br> Camera góc siêu rộng: 12 MP, f/2.2, 13mm, 120˚,
		   1.4µm, PDAF <br> Camera tele: 12 MP, f/2.8, 77mm (telephoto),
		   PDAF, OIS, 3x optical zoom <br> Cảm biến độ sâu TOF 3D LiDAR'
		   ,'Camera selfie: 12 MP, f/1.9, 23mm, 1/3.6, PDAF'
		   ,'Apple A16 Bionic 6-core'
		   ,'6 GB'
		   ,'128 GB'
		   ,'4.323 mAh'
		   ,'2 SIM (nano‑SIM và eSIM)'
		   ,'iOS 16'
		   ,'2796 x 1290-pixel'
		   ,N'120Hz, Always-On display, HDR, True Tone, Haptic Touch, 2,000,000:1, 2000 nits'
		   ,'imgs/products/100004.jpg'
		   ,1
		   ),
--5
			(N'Xiaomi Redmi Note 12 8GB 128GB'
		   ,5790000
		   ,4990000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 50MP, f/1.8 <br> Camera góc rộng: 8MP, f/2.2, 120° <br> Camera Macro: 2MP, f/2.4'
		   ,'13MP, f/2.45'
		   ,'Qualcomm Snapdragon 685'
		   ,'8 GB'
		   ,'128 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,'Android 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 120Hz, độ sáng 1200nits  <br> Corning® Gorilla® Glass 3'
		   ,'imgs/products/100005.jpg'
		   ,3
		   ),
--6
			(N'Xiaomi Redmi Note 12 4GB 128GB'
		   ,4990000
		   ,3990000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 50MP, f/1.8 <br> Camera góc rộng: 8MP, f/2.2, 120° <br> Camera Macro: 2MP, f/2.4'
		   ,'13MP, f/2.45'
		   ,'Qualcomm Snapdragon 685'
		   ,'4 GB'
		   ,'128 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,'Android 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 120Hz, độ sáng 1200nits  <br> Corning® Gorilla® Glass 3'
		   ,'imgs/products/100006.jpg'
		   ,3
		   ),
--7
			(N'Xiaomi 13T Pro 5G (12GB - 512GB)'
		   ,16990000
		   ,15990000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'OLED'
		   ,N'Camera chính góc rộng: 50 MP, 1/1.22<br>Camera góc siêu rộng: 12 MP<br>Camera Tele: 50 MP'
		   ,'20 MP'
		   ,'Dimensity 9200+'
		   ,'12 GB'
		   ,'512 GB'
		   ,'5000mAh'
		   ,'2 SIM (nano‑SIM và eSIM)'
		   ,'Android 13'
		   ,'1220 x 2712 pixels'
		   ,N'Màn OLED 1.5K<br>Tần số quét 144 Hz'
		   ,'imgs/products/100007.jpg'
		   ,3
		   ),
--8
			(N'Xiaomi Redmi Note 12 Pro 5G'
		   ,9490000
		   ,8490000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'OLED'
		   ,N'Camera góc rộng: 50MP, f/1.9, PDAF, OIS Camera góc siêu rộng: 8 MP, f/1.9, 119˚ Camera macro: 2 MP, f/2.4'
		   ,N'Camera góc rộng: 16 MP'
		   ,N'MediaTek Dimensity 1080 8 nhân'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,'Android 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét: 120Hz Dolby Vision, HDR10+, 500 nit, 900 nit Kính cường lực Corning Gorilla Glass 5'
		   ,'imgs/products/100008.jpg'
		   ,3
		   ),
--9
			(N'Xiaomi 13 8GB 256GB'
		   ,22990000
		   ,18090000
		   ,30
		   ,'XIAOMI'
		   ,'6.36 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 50MP, f/1.8, HyperOIS Camera tele của Leica: 10MP, f/2.0, OIS Camera góc siêu rộng Leica: 12MP, f/2.2'
		   ,N'Camera selfie trong màn hình 32MP, f/2.0'
		   ,N'Chip Snapdragon® 8 thế hệ thứ 2'
		   ,'8 GB'
		   ,'256 GB'
		   ,'Pin 4500mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,'MIUI 14, Android 13'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tốc độ lấy mẫu cảm ứng: lên tới 240Hz, Độ sáng: HBM 1200 nits (typ), độ sáng tối đa 1900 nits,
		   HDR Tầm nhìn Dolby® HDR10+, Gam màu: DCI-P3'
		   ,'imgs/products/100009.jpg'
		   ,3
		   ),
--10
			(N'Xiaomi Redmi Note 12 Pro 4G 8GB 256GB'
		   ,7990000
		   ,7190000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 108MP, f/1.9, 1/1.52 Camera góc siêu rộng: 8MP, f/2.2, FOV 120° Camera cận cảnh: 2MP, f/2.4 Camera chiều sâu: 2MP, f/2.4'
		   ,'16MP, f/2.45'
		   ,'Qualcomm SM7150 Snapdragon 732G (8 nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'MIUI 13 dựa trên Android 11'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 120Hz, Độ sáng tối đa 1100 nits Corning® Gorilla® Glass 5'
		   ,'imgs/products/100010.jpg'
		   ,3
		   ),
--11
			(N'Xiaomi Redmi 12C 4GB 64GB'
		   ,3590000
		   ,2390000
		   ,30
		   ,'XIAOMI'
		   ,'6.71 inches'
		   ,'IPS LCD'
		   ,N'Camera góc rộng: 50MP, PDAF Camera đo độ sâu: 0.08MP'
		   ,'5MP'
		   ,'Mediatek MT6769Z Helio G85 (12nm)'
		   ,'4 GB'
		   ,'64 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'720 x 1650 pixels'
		   ,N'500 nits'
		   ,'imgs/products/100011.jpg'
		   ,3
		   ),
--12
			(N'Xiaomi Redmi Note 12S'
		   ,6690000
		   ,5890000
		   ,30
		   ,'XIAOMI'
		   ,'6.43 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 108MP, f/1.89 Camera góc siêu rộng: 8MP, f/2.2, FOV 118° Camera cận cảnh: 2MP, f/2.4'
		   ,'16MP, f/2.45'
		   ,'MediaTek Helio G96'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 90Hz, Độ sáng: tối đa 700 nit (typ), 1000 nits cực đại (typ), Kính Corning Gorilla Glass 3 Chế độ Sunlight, Chế độ đọc sách 3.0'
		   ,'imgs/products/100012.jpg'
		   ,3
		   ),
--13
			(N'Xiaomi 13 Lite'
		   ,11490000
		   ,9490000
		   ,30
		   ,'XIAOMI'
		   ,'6.55 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 50 MP, f/1.8, PDAF Camera góc siêu rộng: 8 MP, f/2.2, 119˚ Camera macro: 2 MP, f/2.4'
		   ,N'Camera góc siêu rộng: 32 MP, f/2.4 Camera cảm chân dung: 8 MP'
		   ,'Chip Snapdragon 7 Gen 1 (4 nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'4500mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 12, MIUI 14'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'68 triệu màu, Dolby Vision, HDR10+, 120Hz, 500 nits, Corning Gorilla Glass 5'
		   ,'imgs/products/100013.jpg'
		   ,3
		   ),
--14
			(N'Xiaomi 12T 8GB 128GB'
		   ,12490000
		   ,8990000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'AMOLED'
		   ,N'108MP + 8MP + 2MP'
		   ,'20MP'
		   ,'MediaTek Dimensity 8100 Ultra'
		   ,'8 GB'
		   ,'128 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 12, MIUI 13'
		   ,'1220 x 2712 pixels'
		   ,N'1 tỉ màu, 120Hz, Dolby Vision, HDR10+'
		   ,'imgs/products/100014.jpg'
		   ,3
		   ),
--15
			(N'Xiaomi Redmi Note 11 Pro Plus 5G'
		   ,9990000
		   ,6790000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'AMOLED'
		   ,N'Camera góc rộng: 108 MP, f/1.8, PDAF Camera góc siêu rộng: 8 MP, f/2,2, FOV 120° Camera macro: 2 MP, f/2.4'
		   ,'16 MP'
		   ,'MediaTek Dimensity 920 5G (6 nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'Li-Po 4500 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 11, MIUI 12.5'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 120 Hz, Corning Gorilla Glass 5, HDR10, 700 nits, 1200 nits (peak)'
		   ,'imgs/products/100015.jpg'
		   ,3
		   ),
--16
			(N'Xiaomi POCO X5 5G 8GB 256GB'
		   ,7490000
		   ,6250000
		   ,30
		   ,'XIAOMI'
		   ,'6.67 inches'
		   ,'AMOLED'
		   ,N'Camera góc rộng: 108 MP, f/1.8, PDAF Camera góc siêu rộng: 8 MP, f/2,2, FOV 120° Camera macro: 2 MP, f/2.4'
		   ,N'Camera góc rộng: 13MP, f/2.5'
		   ,'Snapdragon 695 5G (6 nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000 mAh'
		   ,'Nano-SIM'
		   ,N'MIUI 13 (Android 12)'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 120 Hz Độ sáng: 700 nit (HBM), 1200 nit (cao nhất) Corning Gorilla Glass 3 Gam màu rộng DCI-P3395 ppi Màn hình Sunlight Chế độ đọc 3.0'
		   ,'imgs/products/100016.jpg'
		   ,3
		   ),
--17
			(N'OPPO Reno10 5G 8GB 256GB'
		   ,10990000
		   ,10490000
		   ,30
		   ,'OPPO'
		   ,'6.7 inches'
		   ,'AMOLED'
		   ,N'Camera góc rộng: 64MP; f/1.7, PDAF<br> Chụp Telephoto chân dung: 32 MP, f/2.0
		   <br> Camera góc siêu rộng: 8 MP, f/2.2, Zoom quang lai 2X× và Xoom kỹ thuật số 20X'
		   ,N'Camera góc rộng: 32 MP, f/2.4'
		   ,'MediaTek Dimensity 7050'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'1080 x 2412 pixels'
		   ,N'1.07 tỷ màu, tần số quét 120Hz, HDR10+, tỷ lệ hiển thị 93%, 950 nits , viền cong 3D'
		   ,'imgs/products/100017.jpg'
		   ,4
		   ),
--18
			(N'OPPO Find N2 Flip'
		   ,19990000
		   ,18490000
		   ,30
		   ,'OPPO'
		   ,'6.8 inches'
		   ,'AMOLED'
		   ,N'Camera góc rộng: 50MP, f/1.8, 23mm, PDAF <br> Camera góc siêu rộng 8MP, f/2.2, 112˚'
		   ,N'Camera góc rộng: 32MP, f/2.4, 22mm, AF'
		   ,'MediaTek 9000+ (4nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'4300 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'1080 x 2412 pixels'
		   ,N'Có thể gập lại <br>  Màn hình chính: FHD+ (2520×1080), 120Hz, 16,7 triệu màu, 403 PPI, 1200nit, AMOLED,
		   Kính siêu mỏng UTG<br>Màn hình phụ: 720×382, 30/60Hz, 250 PPI, 800nit, Corning Gorilla Glass 5'
		   ,'imgs/products/100018.jpg'
		   ,4
		   ),
--19
			(N'OPPO Reno8 5G (8GB 256GB)'
		   ,13990000
		   ,11990000
		   ,30
		   ,'OPPO'
		   ,'6.4 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 50 MP, f/1.8 <br> Camera phụ: 8 MP f/2.4 <br> Camera Marco: 2 MP f/2.2'
		   ,N'32 MP, f/2.4'
		   ,N'MediaTek Dimensity 1300 8 nhân'
		   ,'8 GB'
		   ,'256 GB'
		   ,'Li-Po 4500 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Kính cường lực Corning Gorilla Glass 5'
		   ,'imgs/products/100019.jpg'
		   ,4
		   ),
--20
			(N'OPPO Reno8 T 4G 256GB'
		   ,8490000
		   ,7190000
		   ,30
		   ,'OPPO'
		   ,'6.4 inches'
		   ,'AMOLED'
		   ,N'100MP (Chính) + 2MP (Kính hiển vi) + 2MP (Mono)2'
		   ,N'32 MP'
		   ,N'Helio G99, tối đa 2.2GHz'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000mAh (Typ)'
		   ,'2 SIM (Nano-SIM)'
		   ,N'ColorOS 13, nền tảng Android 13'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'screen_features: "16 triệu màu, 90Hz, Kính cường lực GG5'
		   ,'imgs/products/100020.jpg'
		   ,4
		   ),
--21
			(N'OPPO A58 4G 6GB 128GB'
		   ,5990000
		   ,4990000
		   ,30
		   ,'OPPO'
		   ,'6.72 inches'
		   ,'IPS LCD'
		   ,N'50 MP,F/1.8 (chính) + 2 MP, F/2.4 (Xóa phông)'
		   ,N'8 MP, F/2.0'
		   ,N'Helio G99, tối đa 2.2GHz'
		   ,'6 GB'
		   ,'128 GB'
		   ,'5000mAh (Typ)'
		   ,'2 SIM (Nano-SIM)'
		   ,N'ColorOS 13, nền tảng Android 13'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'screen_features: "16 triệu màu, 90Hz, Kính cường lực panda'
		   ,'imgs/products/100021.jpg'
		   ,4
		   ),
--22
			(N'OPPO Find N3 Flip 12GB 256GB'
		   ,29990000
		   ,22990000
		   ,30
		   ,'OPPO'
		   ,'6.8 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 50 MP, f/1.8, OIS <br> Camera góc rộng: 48 MP,  f/2.2<br> Tele: 32 MP,  f/2.0'
		   ,N'32 MP, f/2.4, FOV 90°, ống kính 5P; Hỗ trợ AF'
		   ,N'MediaTek Dimensity 9200'
		   ,'12 GB'
		   ,'256 GB'
		   ,'Li-Po 4300 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Màn hình chính: 6.8 inch, FHD+ (1080 x 2520 Pixels), tần số quét 120 Hz, 1.07 tỷ màu,1600 nits, Kính siêu mỏng Schott UTG<br> Màn hình phụ: 3.26 inch, AMOLED, 720 × 382 pixels, 16.7 triệu màu, độ sáng 900 nits, Kính cường lực GG7'
		   ,'imgs/products/100022.jpg'
		   ,4
		   ),
--23
			(N'OPPO Find N3 16GB 512GB'
		   ,49990000
		   ,44990000
		   ,30
		   ,'OPPO'
		   ,'7.82 inches'
		   ,'OLED'
		   ,N'Camera chính: 48MP, f/1.7, OIS<br>Camera góc rộng: 48MP, f/2.2<br>Camera Tele: 64MP, f/2.6'
		   ,N'Màn hình chính: 20MP, f/2.2 <br>Màn hình ngoài: 32MP, f/2.4'
		   ,N'Snapdragon 8 Gen 2 8 nhân'
		   ,'16 GB'
		   ,'512 GB'
		   ,'4805 mAh'
		   ,'Nano-SIM + eSIM'
		   ,N'Android 13'
		   ,'2268 x 2440 pixels'
		   ,N'Màn hình chính: 7.82 inches, 2K+ (2268 x 2440 Pixels), OLED, 120Hz, 2800 nit, 1 tỷ màu, Kính UTG<br>Màn hình phụ: 6.31 inches, FHD+ (1116 x 2484 Pixels), 120Hz, Kính siêu mỏng Nanocrystal'
		   ,'imgs/products/100023.jpg'
		   ,4
		   ),
--24
			(N'OPPO A18 4GB 128GB'
		   ,4990000
		   ,3990000
		   ,30
		   ,'OPPO'
		   ,'6.56 inches'
		   ,'IPS LCD'
		   ,N'Camera chính: 8 MP,  f/2.0<br>Camera xóa phông: 2 MP,  f/2.4'
		   ,N'5 MP, f/2.2'
		   ,N'MediaTek Helio G85 8 nhân'
		   ,'4 GB'
		   ,'128 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'720 x 1612 (HD+)'
		   ,N'Tần số quét 90Hz, 16 triệu màu, Kính cường lực Panda, 720 nits'
		   ,'imgs/products/100024.jpg'
		   ,4
		   ),
--25
			(N'OPPO A77s'
		   ,4990000
		   ,4790000
		   ,30
		   ,'OPPO'
		   ,'6.56 inches'
		   ,'IPS LCD'
		   ,N'Camera góc rộng: 50 MP, f/1.8, PDAF <br>Camera chân dung: 2 MP, f/2.4'
		   ,N'8 MP, f/2.0'
		   ,N'Snapdragon 680 4G'
		   ,'8 GB'
		   ,'128 GB'
		   ,'5000mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 13'
		   ,'720 x 1612 (HD+)'
		   ,N'Tần số quét 90Hz, 16 triệu màu, Kính cường lực Panda, 720 nits'
		   ,'imgs/products/100025.jpg'
		   ,4
		   ),
--26
			(N'OPPO Reno7 4G (8GB - 128GB)'
		   ,7990000
		   ,6000000
		   ,30
		   ,'OPPO'
		   ,'6.56 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 64MP, f/1.7; FOV 79°; ống kính 6P; AF<br>Microscope: 2MP, f/3.3<br>Đơn sắc: 2MP, f/2.'
		   ,N'32MP, f/2.4; FOV 85°'
		   ,N'Snapdragon™ 680'
		   ,'8 GB'
		   ,'128 GB'
		   ,'4500 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 11, ColorOS 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'16,7 triệu màu, 409PPI, 90Hz'
		   ,'imgs/products/100026.jpg'
		   ,4
		   ),
--27
			(N'OPPO Reno7 5G (8GB 256GB)'
		   ,12990000
		   ,7590000
		   ,30
		   ,'OPPO'
		   ,'6.56 inches'
		   ,'AMOLED'
		   ,N'Camera chính: 64 MP, f/1.7, PDAF <br> Camera góc siêu rộng: 8 MP, f/2.25, 120˚ <br> Camera macro: 2 MP, f/2.4'
		   ,N'32MP f/2.4'
		   ,N'MediaTek Dimensity 900'
		   ,'8 GB'
		   ,'128 GB'
		   ,'Li-Po 4500 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 11, ColorOS 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'90Hz, 430 nits (typ), 600 nits (HDR), Corning Gorilla Glass 5, HDR10+, 16.7 triệu màu'
		   ,'imgs/products/100027.jpg'
		   ,4
		   ),
--28
			(N'OPPO Reno 7 Pro'
		   ,18990000
		   ,11190000
		   ,30
		   ,'OPPO'
		   ,'6.5 inches'
		   ,'AMOLED'
		   ,N'Camera góc rộng: 50MP (IMX766) <br> Camera góc siêu rộng: 8MP (IMX355) <br> Camera macro: 2MP (OmniVision OV02B10)'
		   ,N'32MP f/2.4'
		   ,N'MediaTek Dimensity 1200 Max 8 nhân'
		   ,'12 GB'
		   ,'256 GB'
		   ,'4500 mAh'
		   ,'2 SIM (Nano-SIM)'
		   ,N'Android 11, ColorOS 12'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 90 Hz, Độ sáng tối đa: 920 nits, Kính cường lực Corning Gorilla Glass 5'
		   ,'imgs/products/100028.jpg'
		   ,4
		   ),
--29
			(N'Samsung Galaxy S22 Ultra (12GB - 256GB)'
		   ,33990000
		   ,17550000
		   ,30
		   ,'SAMSUNG'
		   ,'6.5 inches'
		   ,'Dynamic AMOLED 2X'
		   ,N'108 MP, f/1.8 góc rộng<br>10 MP, f/4.9<br>10 MP, f/2.4<br>12 MP, f/2.2 góc siêu rộng'
		   ,N'40 MP, f/2.2'
		   ,N'Snapdragon 8 Gen 1 (4 nm)'
		   ,'12 GB'
		   ,'256 GB'
		   ,'5000 mAh'
		   ,'2 Nano-SIM + eSIM'
		   ,N'Android 12, One UI 4.1'
		   ,'1440 x 3088 pixels (QHD+)'
		   ,N'Tần số quét 120Hz<br>Công nghệ HDR10+, 1750 nits'
		   ,'imgs/products/100029.jpg'
		   ,2
		   ),
--30
			(N'realme 10 8GB 256GB'
		   ,7190000
		   ,5190000
		   ,30
		   ,'REALME'
		   ,'6.4 inches'
		   ,'Super AMOLED'
		   ,N'Camera chính AI: 50MP, f/1.8 <br> Camera chân dung: 2MP,  f/2.4'
		   ,N'16 MP, f/2.5'
		   ,N'Helio G99 (6nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000 mAh'
		   ,'2 Nano-SIM + eSIM'
		   ,N'Android 12, Realme UI 3.0'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 90 Hz, 16,7 triệu màu, Độ tương phản: 4,000,000:1, kính cường lực: Corning Gorilla Glass 5'
		   ,'imgs/products/100030.jpg'
		   ,5
		   ),
--31
			(N'realme C55 (6GB - 128GB)'
		   ,4990000
		   ,4390000
		   ,30
		   ,'REALME'
		   ,'6.4 inches'
		   ,'Super AMOLED'
		   ,N'Camera chính AI: 50MP, f/1.8 <br> Camera chân dung: 2MP,  f/2.4'
		   ,N'16 MP, f/2.5'
		   ,N'Helio G99 (6nm)'
		   ,'8 GB'
		   ,'256 GB'
		   ,'5000 mAh'
		   ,'2 Nano-SIM + eSIM'
		   ,N'Android 12, Realme UI 3.0'
		   ,'1080 x 2400 pixels (FullHD+)'
		   ,N'Tần số quét 90 Hz, 16,7 triệu màu, Độ tương phản: 4,000,000:1, kính cường lực: Corning Gorilla Glass 5'
		   ,'imgs/products/100031.jpg'
		   ,5
		   )
GO


INSERT INTO [dbo].[User] ([username] ,[password],[phoneNumber],[fullname],[address])
     VALUES
           ('admin','admin','012345678','Cao Tien Cuong','abcdefgh')


