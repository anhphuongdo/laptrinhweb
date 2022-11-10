create database WQLNS
GO
use WQLNS
GO

create table SAN_PHAM(
masp char(5) PRIMARY KEY,
tensp nvarchar(max) not null,
matl char(5) not null,
matg char(5),
mancc char(5) not null,
gia int not null,
soluong int not null,
hinhanh Text,
)

create table MotaSP(
masp char(5) PRIMARY KEY,
mota NVARCHAR(max)
)

create table KHACH_HANG(
makh char(5) PRIMARY KEY,
tenkh nvarchar(100) not null,
taikhoan nvarchar(100) not null,
matkhau nvarchar(20) not null,
sdt char(10) not null,
diachi nvarchar(100) not null,
email Text
)

create table THE_LOAI(
matl char(5) PRIMARY KEY,
tentl varchar(100) not null
)

create table TAC_GIA(
matg char(5) PRIMARY KEY,
tentg nvarchar(100) not null)

create table NCC(
mancc char(5) PRIMARY KEY,
tenncc nvarchar(100) not null)

create table DON_HANG(
madh char(5) not null,
makh char(5) not null,
masp char(5) not null,
soluong int,
thoigian datetime DEFAULT (GETDATE())
primary key(madh, makh, masp)
)

ALTER TABLE SAN_PHAM
ADD CONSTRAINT FK_SP_TL
FOREIGN KEY (matl) REFERENCES THE_LOAI (matl)
ALTER TABLE SAN_PHAM
ADD CONSTRAINT FK_SP_TG
FOREIGN KEY (matg) REFERENCES TAC_GIA (matg)
ALTER TABLE SAN_PHAM
ADD CONSTRAINT FK_SP_NCC
FOREIGN KEY (mancc) REFERENCES NCC (mancc)

ALTER TABLE DON_HANG
ADD CONSTRAINT FK_DH_SP
FOREIGN KEY (masp) REFERENCES SAN_PHAM (masp)
ALTER TABLE DON_HANG
ADD CONSTRAINT FK_DH_KH
FOREIGN KEY (makh) REFERENCES KHACH_HANG (makh)

insert into THE_LOAI VALUEs ('TL001',N'Sách kinh tế')
insert into THE_LOAI VALUEs ('TL002',N'Văn học Việt Nam')
insert into THE_LOAI VALUEs ('TL003',N'Văn học nước ngoài')
insert into THE_LOAI VALUEs ('TL004',N'Sách học tiếng Anh')
insert into THE_LOAI VALUEs ('TL005',N'Sách học tiếng Hàn')
insert into THE_LOAI VALUEs ('TL006',N'Sách học tiếng Trung')
insert into THE_LOAI VALUEs ('TL007',N'Bút')
insert into THE_LOAI VALUEs ('TL008',N'Máy tính')
insert into THE_LOAI VALUEs ('TL009',N'Balo')

insert into TAC_GIA VALUEs ('TG000',N'Nhiều Tác Giả') /**/
insert into TAC_GIA VALUEs ('TG001',N'Katsumi Nishimura') /**/
insert into TAC_GIA VALUEs ('TG002',N'Sergio Zyman')
insert into TAC_GIA VALUEs ('TG003',N'Robert Cialdini')
insert into TAC_GIA VALUEs ('TG004',N'Scott Berkun')
insert into TAC_GIA VALUEs ('TG005',N'Tom Roberts')
insert into TAC_GIA VALUEs ('TG006',N'Riccardo Pozzoli')
insert into TAC_GIA VALUEs ('TG007',N'Moises Naim')
insert into TAC_GIA VALUEs ('TG008',N'Robert T. Kiyosaki')
insert into TAC_GIA VALUEs ('TG009',N'Alexander Jutkowitz')
insert into TAC_GIA VALUEs ('TG010',N'Rob Moore')
insert into TAC_GIA VALUEs ('TG011',N'Thân Tử Thần')
insert into TAC_GIA VALUEs ('TG012',N'Jack London')
insert into TAC_GIA VALUEs ('TG013',N'Anna Sewell')
insert into TAC_GIA VALUEs ('TG014',N'Lê Xuân Mậu')
insert into TAC_GIA VALUEs ('TG015',N'J. K. Rowling')
insert into TAC_GIA VALUEs ('TG016',N'Melinda Metz')
insert into TAC_GIA VALUEs ('TG017',N'Trần Hưng Đạo')
insert into TAC_GIA VALUEs ('TG018',N'Nam Cao')
insert into TAC_GIA VALUEs ('TG019',N'Trần Hữu Nghiệp')
insert into TAC_GIA VALUEs ('TG020',N'Di Li')
insert into TAC_GIA VALUEs ('TG021',N'Thảo Trang')
insert into TAC_GIA VALUEs ('TG022',N'Cao Văn Quyền')
insert into TAC_GIA VALUEs ('TG023',N'Võ Chí Nhất')
insert into TAC_GIA VALUEs ('TG024',N'An Chi')
insert into TAC_GIA VALUEs ('TG025',N'Đào Tuấn Ảnh')
insert into TAC_GIA VALUEs ('TG026',N'Lê Minh Hà')
insert into TAC_GIA VALUEs ('TG027',N'Nguyễn Hồng Chiến')
insert into TAC_GIA VALUEs ('TG028',N'Minh Đào')
insert into TAC_GIA VALUEs ('TG029',N'Trương Anh Ngọc')
insert into TAC_GIA VALUEs ('TG030',N'Pháp Y Tần Minh')
insert into TAC_GIA VALUEs ('TG031',N'Tây Tử Tự')
insert into TAC_GIA VALUEs ('TG032',N'Ernest Hemingway')
insert into TAC_GIA VALUEs ('TG033',N'Edgar Allan Poe')
insert into TAC_GIA VALUEs ('TG034',N'Suzanne Collins')
insert into TAC_GIA VALUEs ('TG035',N'YBM TOEIC R&D')
insert into TAC_GIA VALUEs ('TG036',N'Nguyễn Thị Thu Huế')
insert into TAC_GIA VALUEs ('TG037',N'Nguyễn Thị Lan Phương')
insert into TAC_GIA VALUEs ('TG038',N'Trần Hồng Lê')
insert into TAC_GIA VALUEs ('TG039',N'Dương Hương')
insert into TAC_GIA VALUEs ('TG040',N'Châu Thùy Trang')
insert into TAC_GIA VALUEs ('TG041',N'Gjin')
insert into TAC_GIA VALUEs ('TG042',N'Hội Nghiên Cứu Thi Năng Lực Tiếng Hàn')


insert into NCC VALUEs ('NCC01',N'NXB Dân Trí')
insert into NCC VALUEs ('NCC02',N'NXB Thế Giới')
insert into NCC VALUEs ('NCC03',N'NXB Trẻ')
insert into NCC VALUEs ('NCC04',N'NXB Tài Chính')
insert into NCC VALUEs ('NCC05',N'NXB Thanh Niên')
insert into NCC VALUEs ('NCC06',N'NXB Lao động')
insert into NCC VALUEs ('NCC07',N'NXB Công Thương')
insert into NCC VALUEs ('NCC08',N'NXB Văn Học')
insert into NCC VALUEs ('NCC09',N'NXB Tổng Hợp TP. HCM')
insert into NCC VALUEs ('NCC10',N'NXB Phụ Nữ')
insert into NCC VALUEs ('NCC11',N'NXB Kim Đồng')
insert into NCC VALUEs ('NCC12',N'NXB Hà Nội')
insert into NCC VALUEs ('NCC13',N'NXB Hội Nhà Văn')
insert into NCC VALUEs ('NCC14',N'NXB ĐH Quốc Gia Hà Nội')
insert into NCC VALUEs ('NCC15',N'NXB Hồng Đức')
insert into NCC VALUEs ('NCC16',N'NXB Khoa Học Xã Hội')
insert into NCC VALUEs ('NCC17',N'NXB ĐH Quốc Gia TP.HCM')
insert into NCC VALUEs ('NCC18',N'Nhật Bản')
insert into NCC VALUEs ('NCC19',N'Trung Quốc')
insert into NCC VALUEs ('NCC20',N'Mỹ')
insert into NCC VALUEs ('NCC21',N'Đức')
insert into NCC VALUEs ('NCC22',N'Việt Nam')
insert into NCC VALUEs ('NCC23',N'Tây Ban Nha')


/*Sách kinh tế*/
insert into SAN_PHAM VALUEs ('SP001',N'Rèn Luyện Tư Duy Chiến Lược 1 Phút','TL001','TG001','NCC01',95000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ren-luyen-tu-duy-chien-luoc-1-phut.jpg')
insert into SAN_PHAM VALUEs ('SP002',N'Marketing Giỏi Phải Kiếm Được Tiền','TL001','TG002','NCC02',299000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/227/marketing-gioi-phai-kiem-duoc-tien.jpg')
insert into SAN_PHAM VALUEs ('SP003',N'Thay Đổi - Bí Quyết Thay Đổi Khi Thay Đổi Trở Nên Khó Khăn','TL001','TG000','NCC03',110000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/thay-doi-bi-quyet-thay-doi.jpg')
insert into SAN_PHAM VALUEs ('SP004',N'Quy Luật Của Chiến Lược','TL001','TG000','NCC03',145000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/quy-luat-cua-chien-luoc-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP005',N'Dọn Đường Tâm Lý, Thuyết Phục Chắc Thắng','TL001','TG003','NCC03',160000,21,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/don-duong-tam-ly-thuyet-phuc-chac-thang.jpg')
insert into SAN_PHAM VALUEs ('SP006',N'How Design Makes The World - Sự Thống Trị Của Thiết Kế','TL001','TG004','NCC02',109000,17,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/su-thong-tri-cua-thiet-ke.jpg')
insert into SAN_PHAM VALUEs ('SP007',N'Gia Tộc Murdoch','TL001','TG005','NCC04',229000,31,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/gia-toc-murdoch.jpg')
insert into SAN_PHAM VALUEs ('SP008',N'Xây Dựng Sự Độc Đáo - Cách Để Khởi Nghiệp Từ Đam Mê','TL001','TG006','NCC05',81000,25,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/xay-dung-su-doc-dao.jpg')
insert into SAN_PHAM VALUEs ('SP009',N'Sự Suy Tàn Của Quyền Lực','TL001','TG007','NCC06',159000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/su-suy-tan-cua-quyen-luc.jpg')
insert into SAN_PHAM VALUEs ('SP010',N'Boxset Dạy Con Làm Giàu (Bộ 13 cuốn)','TL001','TG008','NCC03',1480000,4,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/combo-day-con-lam-giau-13c.jpg')
insert into SAN_PHAM VALUEs ('SP011',N'UX Research - Thấu Hiểu Người Dùng, Ung Dung Chiến Thắng','TL001','TG000','NCC02',139000,21,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ux-research-thau-hieu-nguoi-dung-ung-dung-chen-thang.jpg')
insert into SAN_PHAM VALUEs ('SP012',N'7 Phương Pháp Đầu Tư Warren Buffet','TL001','TG000','NCC07',169000,13,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/7-phuong-phap-dau-tu-warren-buffett-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP013',N'Content Marketing Trong Kỷ Nguyên 4.0','TL001','TG009','NCC06',169000,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/content-marketing-trong-ky-nguyen-4.0-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP014',N'Thịnh Vượng Tài Chính Tuổi 30 - Tập 1','TL001','TG000','NCC06',109000,6,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/thinh-vuong-tai-chinh-tuoi-30-tap-1-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP015',N'Tiền: Hiểu Rõ Hơn, Kiếm Tốt Hơn Và Cho Đi Nhiều Hơn','TL001','TG010','NCC02',218000,9,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/tien-hieu-ro-hon-kiem-tot-hon.jpg')

/*Văn học Việt Nam*/
insert into SAN_PHAM VALUEs ('SP016',N'Tiếng Việt Giàu Đẹp - Vẻ Đẹp Ngôn Ngữ, Vẻ Đẹp Văn Chương (Tái bản năm 2022)','TL002','TG014','NCC03',90000,19,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ve-dep-ngon-ngu-ve-dep-van-chuong-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP017',N'Binh Thư Yếu Lược','TL002','TG017','NCC01',195000,9,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/binh-thu-yeu-luoc.jpg')
insert into SAN_PHAM VALUEs ('SP018',N'Danh Tác Văn Học Việt Nam - Đời Thừa (Tái bản năm 2022)','TL002','TG018','NCC08',70000,7,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/danh-tac-van-hoc-viet-nam-doi-thua-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP019',N'Thời Gian Trong Mắt Tôi','TL002','TG019','NCC09',160000,14,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/thoi-gian-trong-mat-toi.jpg')
insert into SAN_PHAM VALUEs ('SP020',N'Ngủ Cùng Người Chết','TL002','TG021','NCC10',185000,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ngu-cung-nguoi-chet_5185-cj.jpg')
insert into SAN_PHAM VALUEs ('SP021',N'Câu Lạc Bộ Số 7','TL002','TG020','NCC08',156000,18,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/cau-lac-bo-so-7.jpg')
insert into SAN_PHAM VALUEs ('SP022',N'Lỗi Tại Cái Đuôi Diều','TL002','TG022','NCC09',60000,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/loi-tai-cai-duoi-dieu.jpg')
insert into SAN_PHAM VALUEs ('SP023',N'Muội Tro','TL002','TG023','NCC09',75000,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/muoi-tro.jpg')
insert into SAN_PHAM VALUEs ('SP024',N'An Chi - Rong Chơi Miền Chữ Nghĩa - Tập 5','TL002','TG024','NCC09',190000,17,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/an-chi-rong-choi-mien-chu-nghia-tap-5.jpg')
insert into SAN_PHAM VALUEs ('SP025',N'Bà Đỡ','TL002','TG025','NCC03',95000,19,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ba-do.jpg')
insert into SAN_PHAM VALUEs ('SP026',N'Đặc Sản Thời Yêu','TL002','TG026','NCC11',69000,13,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/dac-san-thoi-yeu.jpg')
insert into SAN_PHAM VALUEs ('SP027',N'Chuồn Chuồn Ớt Tìm Mẹ','TL002','TG027','NCC11',67000,13,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/chuon-chuon-ot-tim-me.jpg')
insert into SAN_PHAM VALUEs ('SP028',N'Rồi Cũng Sẽ Qua','TL002','TG028','NCC03',95000,27,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/roi-cung-se-qua.jpg')
insert into SAN_PHAM VALUEs ('SP029',N'Những Truyện Kỳ Thú Về Cọp Chưa Ai Kể','TL002','TG000','NCC03',70000,25,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/nhung-truyen-ky-thu-ve-cop-chua-ai-ke.jpg')
insert into SAN_PHAM VALUEs ('SP030',N'Đi Khi Ta Còn Trẻ','TL002','TG029','NCC02',120000,6,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/di-khi-ta-con-tre.jpg')

/*Văn học nước ngoài*/
insert into SAN_PHAM VALUEs ('SP031',N'Sát Nhân Liên Hoàn Kế','TL003','TG011','NCC01',154000,1,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/sat-nhan-lien-hoan-ke-tap-1.jpg')
insert into SAN_PHAM VALUEs ('SP032',N'Nanh Trắng','TL003','TG012','NCC01',139000,27,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/nanh-trang.jpg')
insert into SAN_PHAM VALUEs ('SP033',N'Ngựa Ô Yêu Dấu','TL003','TG013','NCC01',129000,24,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ngua-o-yeu-dau.jpg')
insert into SAN_PHAM VALUEs ('SP034',N'Harry Potter Và Phòng Chứa Bí Mật - Tập 2','TL003','TG015','NCC03',170000,37,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/harry-potter-va-phong-chua-bi-mat-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP035',N'Nhân Duyên... Mèo Định','TL003','TG016','NCC01',198000,33,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/nhan-duyen-meo-dinh.jpg')
insert into SAN_PHAM VALUEs ('SP036',N'Búp Bê (Pháp Y Tần Minh)','TL003','TG030','NCC08',199000,32,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/bup-be-phap-y-tan-minh.jpg')
insert into SAN_PHAM VALUEs ('SP037',N'Bức Họa Múa Rối Xương (Bộ 2 tập)','TL003','TG031','NCC12',279000,16,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/buc-hoa-mua-roi-xuong-bo-2c.jpg')
insert into SAN_PHAM VALUEs ('SP038',N'Văn Học Mỹ - Ông Già Và Biển Cả','TL003','TG032','NCC11',45000,16,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/van-hoc-my-ong-gia-va-bien-ca.jpg')
insert into SAN_PHAM VALUEs ('SP039',N'Vụ Án Mạng Đường Morgue - Tuyển Tập Edgar Allan Poe','TL003','TG033','NCC11',60000,20,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/vu-an-mang-duong-morgue.jpg')
insert into SAN_PHAM VALUEs ('SP040',N'Vợ Mới Của Chồng Tôi','TL003','TG000','NCC12',215000,14,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/vo-moi-cua-chong-toi.jpg')
insert into SAN_PHAM VALUEs ('SP041',N'Khúc Hát Của Chim Ca Và Rắn Độc (Tiền truyện Đấu Trường Sinh Tử)','TL003','TG034','NCC13',236000,6,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/khuc-hat-cua-chim-ca-va-ran-doc.jpg')
insert into SAN_PHAM VALUEs ('SP042',N'Harry Potter Và Thế Giới Phép Thuật Nhiệm Màu','TL003','TG000','NCC02',139000,30,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/harry-potter-va-the-gioi-phep-thuat-mau-nhiem-bc.jpg')
insert into SAN_PHAM VALUEs ('SP043',N'Harry Potter Và Chiếc Cốc Lửa - Tập 4 (Tái bản năm 2022)','TL003','TG015','NCC03',310000,19,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/harry-potter-va-chiec-coc-lua-tap-4-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP044',N'Harry Potter Và Đứa Trẻ Bị Nguyền Rủa: Phần Một Và Hai (Tái bản năm 2022)','TL003','TG000','NCC03',170000,39,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/234/harry-potter-va-dua-tre-bi-nguyen-rua-tb-2022.jpg')
insert into SAN_PHAM VALUEs ('SP045',N'Harry Potter Và Hoàng Tử Lai - Tập 6 (Tái bản năm 2022)','TL003','TG015','NCC03',245000,25,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/233/harry-potter-va-hoang-tu-lai-tap-3-tb-2022.jpg')

/*Sách học tiếng Anh*/
insert into SAN_PHAM VALUEs ('SP046',N'YBM TOEIC Reading 1000 - Tập 1','TL004','TG035','NCC01',229000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/185/ybm-toeic-reading-1000-tap-1.jpg')
insert into SAN_PHAM VALUEs ('SP047',N'YBM TOEIC Reading 1000 - Tập 2','TL004','TG035','NCC01',229000,23,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/184/ybm-toeic-reading-1000-2.jpg')
insert into SAN_PHAM VALUEs ('SP048',N'YBM TOEIC Reading 1000 - Tập 2 (Tái bản năm 2022)','TL004','TG035','NCC01',259000,5,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ybm-toeic-reading-100-tap-2.jpg')
insert into SAN_PHAM VALUEs ('SP049',N'The Langmaster - 360 Động Từ Bất Quy Tắc Và Cách Dùng Các Thì Tiếng Anh (Tái bản năm 2022)','TL004','TG036','NCC14',40000,48,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/360-dong-tu-bat-quy-tac-va-cach-dung-cac-thi-tieng-anh.jpg')
insert into SAN_PHAM VALUEs ('SP050',N'101+ Mẹo Sinh Tồn Với Tiếng Anh','TL004','TG000','NCC02',269000,42,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/101-meo-sinh-ton-tieng-anh.jpg')
insert into SAN_PHAM VALUEs ('SP051',N'IELTS Foundation - Luyện Thi IELTS Cho Người Mới Bắt Đầu 4 Kỹ Năng - Giúp Bạn Khởi Đầu Và Luyện Thi 4 Kỹ Năng IELTS Thành Công','TL004','TG037','NCC12',168000,59,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/ielts-foundation-luyen-thi-ielts-cho-nguoi-moi-bat-dau-4-ky-nang.jpg')
insert into SAN_PHAM VALUEs ('SP052',N'Học Tiếng Anh Cùng Truyện Ngụ Ngôn Aesop - Con Quạ Và Những Chiếc Lông (Song ngữ Anh-Việt)','TL004','TG000','NCC05',40000,33,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/130/hoc-tieng-anh-cung-truyen-ngu-ngon-aesop-con-qua-va-nhung-chiec-long.jpg')
insert into SAN_PHAM VALUEs ('SP053',N'Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 1: Cua Mẹ Và Cua Con','TL004','TG000','NCC11',30000,43,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/hoc-tieng-anh-qua-truyen-ngu-ngon-cua-me-va-cua-con.jpg')
insert into SAN_PHAM VALUEs ('SP054',N'Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 2: Gà Mái Và Trứng Vàng','TL004','TG000','NCC11',30000,44,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/hoc-tieng-anh-qua-truyen-ngu-ngon-ga-mai-va-trung-vang.jpg')
insert into SAN_PHAM VALUEs ('SP055',N'Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 3: Ba Chàng Thương Nhân','TL004','TG000','NCC11',30000,45,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/hoc-tieng-anh-qua-truyen-ngu-ngon-ba-chang-thuong-nhan.jpg')
insert into SAN_PHAM VALUEs ('SP056',N'Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 4: Sư Tử, Cáo Và Muôn Loài','TL004','TG000','NCC11',30000,44,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/hoc-tieng-anh-qua-truyen-ngu-ngon-su-tu-cao-va-muon-loai.jpg')
insert into SAN_PHAM VALUEs ('SP057',N'Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 5: Gã Hà Tiện Và Thỏi Vàng','TL004','TG000','NCC11',30000,45,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/hoc-tieng-anh-qua-truyen-ngu-ngon-ga-ha-tien-va-thoi-vang.jpg')
insert into SAN_PHAM VALUEs ('SP058',N'Everything You Need To Ace English Language Arts - Quyển Vở Ai Cũng Muốn Mượn','TL004','TG038','NCC01',339000,9,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/everything-you-need-to-ace-english-language-arts-quyen-vo-ai-cung-muon-muon.jpg')
insert into SAN_PHAM VALUEs ('SP059',N'Giải Thích Chuyên Sâu Ngữ Pháp Tiếng Anh: Cơ Bản Và Nâng Cao','TL004','TG039','NCC14',149000,42,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/236/giai-thich-chuyen-sau-ngu-phap-tieng-anh.jpg')
insert into SAN_PHAM VALUEs ('SP060',N'Tiếng Anh Giao Tiếp Dành Cho Người Chuẩn Bị Ra Nước Ngoài','TL004','TG040','NCC09',278000,1,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/tieng-anh-giao-tiep-danh-cho-nguoi-chuan-bi-ra-nuoc-ngoai.jpg')

/*Sách học tiếng Hàn*/
insert into SAN_PHAM VALUEs ('SP061',N'Phân Biệt Các Ngữ Pháp Tương Đồng Trong Tiếng Hàn Theo Chức Năng Diễn Ngôn','TL005','TG000','NCC01',189000,9,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/211/phan-biet-cac-ngu-phap-tuong-dong-trong-tieng-han-theo-chuc-nang-dien-ngon.jpg')
insert into SAN_PHAM VALUEs ('SP062',N'Luyện Nói Tiếng Hàn Qua 100 Chủ Đề Với Châu Thùy Trang','TL005','TG040','NCC05',480000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/191/luyen-noi-tieng-han-qua-100-chu-de-voi-chau-thuy-trang.jpg')
insert into SAN_PHAM VALUEs ('SP063',N'Tiếng Hàn Cho Du Lịch','TL005','TG000','NCC12',119000,19,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/188/tieng-han-cho-du-lich.jpg')
insert into SAN_PHAM VALUEs ('SP064',N'5000 Từ Vựng Tiếng Hàn Thông Dụng','TL005','TG041','NCC15',139000,7,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/188/5000-tu-vung-tieng-han-thong-dung.jpg')
insert into SAN_PHAM VALUEs ('SP065',N'Kỳ Thi Năng Lực Tiếng Hàn TOPIK II - Thi Là Đậu','TL005','TG042','NCC03',340000,12,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/186/thi-la-dau-ky-thi-nang-luc-tieng-han-topik-II.jpg')
insert into SAN_PHAM VALUEs ('SP066',N'Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay - Trung Cấp 1','TL005','TG000','NCC01',169000,18,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/186/tieng-han-ung-dung-hoc-nhanh-thuc-hanh-ngay-trung-cap-1.jpg')
insert into SAN_PHAM VALUEs ('SP067',N'Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay - Trung Cấp 2','TL005','TG000','NCC01',169000,22,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/186/tieng-han-ung-dung-hoc-nhanh-thuc-hanh-ngay-trung-cap-2.jpg')
insert into SAN_PHAM VALUEs ('SP068',N'Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay - Sơ Cấp 2','TL005','TG000','NCC01',169000,7,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/182/tien-han-ung-dung-hoc-nhanh-thuc-hanh-ngay-so-cap-2.jpg')
insert into SAN_PHAM VALUEs ('SP069',N'Bứt Phá Điểm Thi Kỹ Năng Nghe Topik I','TL005','TG000','NCC15',95000,27,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/181/but-pha-diem-thi-ky-nang-nghe-topik-1.jpg')
insert into SAN_PHAM VALUEs ('SP070',N'6.000 Từ Vựng Y Học Song Ngữ Hàn-Việt','TL005','TG000','NCC09',100000,4,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/181/6000-tu-vung-y-hoc-song-ngu-han-viet.jpg')
insert into SAN_PHAM VALUEs ('SP071',N'600 Câu Giao Tiếp Tiếng Hàn Thông Dụng','TL005','TG000','NCC15',97000,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/180/600-cau-giao-tiep-tieng-han-thong-dung.jpg')
insert into SAN_PHAM VALUEs ('SP072',N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Sơ Cấp 1 (Bản Đen Trắng)','TL005','TG000','NCC09',150000,16,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/219/bcf3f16a1385e0a42415e8a59e797c27_tn.jpg')
insert into SAN_PHAM VALUEs ('SP073',N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Sách Bài Tập Sơ cấp 1','TL005','TG000','NCC09',70000,25,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/219/8935246927892.jpg')
insert into SAN_PHAM VALUEs ('SP074',N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Trung Cấp 3 (Phiên bản mới - Bản màu)','TL005','TG000','NCC09',259000,19,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/176/tieng-han-tong-hop-danh-cho-nguoi-viet-nam-trung-cap-3-ban-mau.jpg')
insert into SAN_PHAM VALUEs ('SP075',N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Trung Cấp 3 - Sách Bài Tập','TL005','TG000','NCC09',95000,17,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/176/tieng-han-tong-hop-danh-cho-nguoi-viet-nam-trung-cap-3-sach-bai-tap.jpg')

/*Sách học tiếng Trung*/
insert into SAN_PHAM VALUEs ('SP076',N'301 Câu Đàm Thoại Tiếng Hoa (Bản chữ Phồn thể)','TL006','TG000','NCC16',62000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/171/301_cau_dam_thoai_tieng_hoa_ban_chu_phon_the.jpg')
insert into SAN_PHAM VALUEs ('SP077',N'Đột Phá Từ Vựng Hán Ngữ Quốc Tế HSK - Trình Độ B','TL006','TG000','NCC03',27750,14,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/215/1_lf88-um.jpg')
insert into SAN_PHAM VALUEs ('SP078',N'Đột Phá Từ Vựng Hán Ngữ Quốc Tế HSK Trình Độ C','TL006','TG000','NCC03',27750,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/212/12676691054b8f18710339d.jpg')
insert into SAN_PHAM VALUEs ('SP079',N'Đột Phá Từ Vựng Hán Ngữ Quốc Tế HSK Trình Độ D','TL006','TG000','NCC03',34750,49,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/212/12676691044b8f18703690e.jpg')
insert into SAN_PHAM VALUEs ('SP080',N'Hướng Dẫn Học Và Thi YCT - Cấp Độ 1 (Kèm CD)','TL006','TG000','NCC09',78000,7,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/152/huong-dan-hoc-va-thi-yct-cap-do-1.jpg')
insert into SAN_PHAM VALUEs ('SP081',N'Hướng Dẫn Học Và Thi YCT - Cấp Độ 2 (Kèm CD)','TL006','TG000','NCC09',88000,27,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/152/huong-dan-hoc-va-thi-yct-cap-do-2.jpg')
insert into SAN_PHAM VALUEs ('SP082',N'Hướng Dẫn Học Và Thi YCT - Cấp Độ 3 (Kèm CD)','TL006','TG000','NCC09',108000,22,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/152/huong-dan-hoc-va-thi-yct-cap-do-3.jpg')
insert into SAN_PHAM VALUEs ('SP083',N'Hướng Dẫn Học Và Thi YCT - Cấp Độ 4 (Kèm CD)','TL006','TG000','NCC09',138000,14,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/152/huong-dan-hoc-va-thi-yct-cap-do-4.jpg')
insert into SAN_PHAM VALUEs ('SP084',N'Giáo Trình Hán Ngữ Boya Sơ Cấp - Tập 1 (Tái bản)','TL006','TG000','NCC15',160000,8,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/181/giao-trinh-han-ngu-boya-so-cap-tap-1-tb.jpg')
insert into SAN_PHAM VALUEs ('SP085',N'Giáo Trình Hán Ngữ Boya Sơ Cấp - Tập 2 (Tái bản)','TL006','TG000','NCC15',135000,15,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/181/giao-trinh-han-ngu-boya-so-cap-tap-2-tb.jpg')
insert into SAN_PHAM VALUEs ('SP086',N'Giáo Trình Hán Ngữ Boya Sơ Cấp - Tập 1 (Sách bài tập kèm đáp án)','TL006','TG000','NCC15',99000,21,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/149/giao-trinh-han-ngu-boya-so-cap-bai-tap-kem-dap-an-tap-1.jpg')
insert into SAN_PHAM VALUEs ('SP087',N'Giáo Trình Hán Ngữ Boya Sơ Cấp - Tập 2 (Sách bài tập kèm đáp án)','TL006','TG000','NCC15',66000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/149/giao-trinh-han-ngu-boya-so-cap-bai-tap-kem-dap-an-tap-2.jpg')
insert into SAN_PHAM VALUEs ('SP088',N'Giáo Trình Hán Ngữ Boya Trung Cấp 2 - Tập 1','TL006','TG000','NCC09',177000,14,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/149/giao-trinh-han-ngu-boya-trung-cap-2-tap-1.jpg')
insert into SAN_PHAM VALUEs ('SP089',N'Luyện Thi HSK Cấp Tốc (Cấp 1-2) (Kèm CD)','TL006','TG000','NCC17',100000,24,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/148/luyen-thi-hsk-cap-toc-cap-1-2.jpg')
insert into SAN_PHAM VALUEs ('SP090',N'Luyện Thi HSK Cấp Tốc (Cấp 3-4) (Kèm CD)','TL006','TG000','NCC17',180000,20,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/148/luyen-thi-hsk-cap-toc-cap-3-4.jpg')

/*Bút*/
insert into SAN_PHAM VALUEs ('SP091',N'Hộp Bút Gel MR3 BL-MR3-F-HT-L - Mực Xanh','TL007',NULL,'NCC18',786000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/206/htl.jpg')
insert into SAN_PHAM VALUEs ('SP092',N'Bút Bi Ký Cao Cấp GRANCE (Thân Xanh) BGRC-5SR-BLS-L','TL007',NULL,'NCC18',2590000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/grance_xanh.png')
insert into SAN_PHAM VALUEs ('SP093',N'Bộ Chì Màu Nước Cao Cấp Reinor 48 Cây - hộp thiếc','TL007',NULL,'NCC19',762000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/202/1_nu4m-70.jpg')
insert into SAN_PHAM VALUEs ('SP094',N'Bút Bi Cao Cấp Parker Jotter XL Đ-MGrey CT TB6-2068514','TL007',NULL,'NCC20',709000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/210/1_dmxo-ws.jpg')
insert into SAN_PHAM VALUEs ('SP095',N'Bộ Chì Tô 72 Màu Nước Cao Cấp Marco Raffine 7120 - 72CB (Hộp Giấy)','TL007',NULL,'NCC19',694000,11,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/202/1_7iaz-gn.jpg')
insert into SAN_PHAM VALUEs ('SP096',N'Bộ Chì Màu Nước Cao Cấp Reinor 36 Cây - hộp thiếc','TL007',NULL,'NCC19',626000,14,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/202/1_m6s7-tq.jpg')
insert into SAN_PHAM VALUEs ('SP097',N'Bút Lông Hai Đầu Marvy 1122 - 12G LANDSCAPE SET','TL007',NULL,'NCC18',470000,4,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/132/1122_-_b%E1%BB%99_12_c%C3%A2y15887379275eb23787a3e5e.jpg')
insert into SAN_PHAM VALUEs ('SP098',N'Bộ Chì Màu Marco Raffine 48 Cây - hộp thiếc','TL007',NULL,'NCC19',448000,8,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/202/3_25xt-2o.jpg')
insert into SAN_PHAM VALUEs ('SP099',N'Viết Bi Nước Vỏ Đen 186001','TL007',NULL,'NCC21',119000,80,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/177/400467512626.PNG')
insert into SAN_PHAM VALUEs ('SP100',N'BLRL001 Ruột Mực Xanh Liah, Zeus','TL007',NULL,'NCC21',200000,6,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/177/400467512626.PNG')

/*Máy tính Casio*/
insert into SAN_PHAM VALUEs ('SP101',N'Máy Tính Casio Fx-880BTG - Màu Đen','TL008',NULL,'NCC22',839000,237,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/4549526613692.jpg')
insert into SAN_PHAM VALUEs ('SP102',N'Máy Tính Casio Fx-880BTG - Màu Xanh','TL008',NULL,'NCC22',839000,158,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/4549526613708__1_.jpg')
insert into SAN_PHAM VALUEs ('SP103',N'Máy Tính Casio Fx-880BTG - Màu Hồng','TL008',NULL,'NCC22',839000,6,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/235/4549526613715.jpg')
insert into SAN_PHAM VALUEs ('SP104',N'Máy Tính Casio FX580 VN X','TL008',NULL,'NCC18',780000,565,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/127/image_195509_1_8906.jpg')
insert into SAN_PHAM VALUEs ('SP105',N'Máy Tính Casio FX-580VN X-BU Màu Xanh','TL008',NULL,'NCC18',780000,210,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/209/casio-fx-580vn-x-xanh-body-1-1.png')
insert into SAN_PHAM VALUEs ('SP106',N'Máy Tính Casio FX-580VN X-PK Màu Hồng','TL008',NULL,'NCC18',780000,246,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/209/casio-fx-580vn-x-hYng-body-1-1_ld6x-b8.png')
insert into SAN_PHAM VALUEs ('SP107',N'Máy Tính Casio FX570 VN Plus','TL008',NULL,'NCC18',620000,544,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/127/fx570vnplus.jpg')
insert into SAN_PHAM VALUEs ('SP108',N'Máy Tính Casio FX 570ES Plus New','TL008',NULL,'NCC18',525000,127,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/186/image_199487.jpg')
insert into SAN_PHAM VALUEs ('SP109',N'Máy Tính Casio FX-570MS','TL008',NULL,'NCC18',450000,58,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/186/290-fx570ms.jpg')
insert into SAN_PHAM VALUEs ('SP110',N'Máy Tính Casio MS-20UC-BK','TL008',NULL,'NCC18',250000,10,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/220/Satellite.jpg')

/*Balo*/
insert into SAN_PHAM VALUEs ('SP111',N'Balo MILAN 624605MLGR','TL009',NULL,'NCC23',1199000,6,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/207/841157409007_iy9y-g4.jpg')
insert into SAN_PHAM VALUEs ('SP112',N'Túi Đeo Vải LM-50753','TL009',NULL,'NCC22',85000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/192/694148980370.PNG')
insert into SAN_PHAM VALUEs ('SP113',N'Túi Vải Trắng Đen Kariiou BD-4062-DL-2-3-4-5','TL009',NULL,'NCC22',125000,43,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/206/image084.png')
insert into SAN_PHAM VALUEs ('SP114',N'Balo TE Y209959C','TL009',NULL,'NCC22',1650000,4,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/196/Y209959C.jpg')
insert into SAN_PHAM VALUEs ('SP115',N'BA LÔ CẤP 1 Y209977C','TL009',NULL,'NCC19',1450000,3,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/231/b6d089e46a2da973f03c_x74f-dw.jpg')
insert into SAN_PHAM VALUEs ('SP116',N'BA LÔ CẤP 1 Y209968A','TL009',NULL,'NCC19',1350000,12,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/231/b6d089e46a2da973f03c_c64d-u1.jpg')
insert into SAN_PHAM VALUEs ('SP117',N'BA LÔ CẤP 1 Y21-7003A','TL009',NULL,'NCC19',1250000,5,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/231/b6d089e46a2da973f03c_p1v3-nt.jpg')
insert into SAN_PHAM VALUEs ('SP118',N'BA LÔ CẤP 1 Y21-7003D','TL009',NULL,'NCC19',1250000,4,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/231/b6d089e46a2da973f03c_s2md-bs.jpg')
insert into SAN_PHAM VALUEs ('SP119',N'BA LÔ CẤP 1 Y21-7008C','TL009',NULL,'NCC19',1250000,8,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/231/b6d089e46a2da973f03c_25f8-d7.jpg')
insert into SAN_PHAM VALUEs ('SP120',N'Ba Lô Cấp 2-3 Y21-7001B','TL009',NULL,'NCC19',1250000,5,'https://nhasachphuongnam.com/images/thumbnails/500/500/detailed/231/b6d089e46a2da973f03c_25f8-d7.jpg')

------------------------------------
insert into KHACH_HANG VALUEs ('KH001',N'Nguyễn Văn A', 'nguyenvana', '12345678', '0123456789', 'Hà Giang', 'nva@gmail.com')
insert into KHACH_HANG VALUEs ('KH002',N'Nguyễn Văn B', 'nguyenvanb', '12345678', '0289999999', 'Hà Nội', 'nvb@gmail.com')
insert into KHACH_HANG VALUEs ('KH003',N'Đỗ Thị Phương Anh', 'dtpa', '12345678', '0335991355', 'Thanh Hóa', 'anhdo@gmail.com')
insert into KHACH_HANG VALUEs ('KH004',N'Nông Thảo Hiền', 'nth', '12345678', '0333333333', 'Tiền Giang', 'hiennong@gmail.com')
insert into KHACH_HANG VALUEs ('KH005',N'Đặng Thị Kim Ngân', 'dtkn', '12345678', '0555555555', 'TP.HCM', 'ngandang@gmail.com')

------------------------------------
insert into DON_HANG VALUEs ('DH001', 'KH001', 'SP001', 2, '2022/10/30')
insert into DON_HANG VALUEs ('DH002', 'KH002', 'SP005', 4, '2022/10/30')
insert into DON_HANG VALUEs ('DH003', 'KH003', 'SP006', 6, '2022/10/30')
insert into DON_HANG VALUEs ('DH004', 'KH004', 'SP007', 8, '2022/10/30')
insert into DON_HANG VALUEs ('DH005', 'KH005', 'SP009', 9, '2022/10/30')
-------------------------
insert into MotaSP VALUEs('SP001', N'Tri thức mà bạn học được trong cuốn sách Rèn Luyện Tư Duy Chiến Lược 1 Phút (Bản Đặc Biệt) này bao gồm “suy nghĩ tinh nhanh” và “kiến thức tổng hợp”. Trong đó, “suy nghĩ tinh nhanh” có nghĩa là suy nghĩ một cách thông minh, khôn khéo và nhanh chóng.
Nói cách khác, đó là những lí luận, cách thiết lập kế hoạch, kiến thức, cách thức tư duy được bồi dưỡng và đúc kết từ binh pháp và những chiến lược kinh doanh. Trong lúc tiếp thu cách “suy nghĩ tinh nhanh” , thông qua những ví dụ cụ thể từ thực tế, bạn đồng thời sẽ học được một lượng “kiến thức tổng hợp” đầy đủ.
Đó chính là giá trị của cuốn sách này, mặt khác, cuốn sách Rèn Luyện Tư Duy Chiến Lược Trong 1 Phút (Bản Đặc Biệt) này có đầy đủ ví dụ về những doanh nghiệp mà có thể bạn đã biết đến.')
insert into MotaSP VALUEs('SP002', N'Marketing là một khoản đầu tư hay chi phí?
Marketing là tạo ra quảng cáo thắng giải hay bán hàng?
Marketing là một hoạt động “bí ẩn”, “nghệ thuật”, “sáng tạo” và người làm marketing phải có tố chất khác người?
Trong cuốn sách Marketing Giỏi Phải Kiếm Được Tiền Sergio Zyman sẽ ”dạy” cho cả thế giới biết Marketing thực sự có nghĩa gì?
HAI VẤN ĐỀ CỦA MARKETING NGÀY NAY LÀ:
– Tại hầu hết các công ty, marketing đang không hiệu quả và do đó bị coi là một hoạt động không cần thiết. Bất cứ khi nào ngân sách bị siết chặt, marketing là một trong nhưng thứ đầu tiên bị cắt đi chính bởi suy nghĩ rằng nó là chi phí.
– Nhiều năm qua những người làm marketing đã tái định vị và nâng cấp marketing thành nghệ thuật. Họ bị lúng túng bởi vẻ hào nhoáng, những giải thưởng, những buổi diễn thuyết, bay tới bay lui để chụp ảnh trên các quần đảo nhiệt đới, và họ quên mất công việc của Marketer là BÁN HÀNG.
Họ nói với nhau rằng các kết quả của hoạt động marketing là không thể đo đếm trong ngày một ngày hai được, chủ doanh nghiệp phải đo hiệu quả của marketing ở thì tương lai. Còn tương lai là bao nhiêu năm thì không ai có thể trả lời rõ ràng.
Những cá nhân này, người sắm vai ông chủ khó tính, kẻ đóng vai nghệ sĩ ve sầu mải mê ca hát nhảy múa tất cả đã tạo nên một Marketing bất lực – Một Marketing KHÔNG BÁN ĐƯỢC HÀNG, KHÔNG KIẾM ĐƯỢC TIỀN!
Đó là lý do Sergio Zyman – Cựu Giám đốc Marketing của Coca Cola, một marketer lão làng viết nên cuốn Marketing Giỏi Phải Kiếm Được Tiền. Cuốn sách là tổng hợp của những thập kỷ học tập của Sergio Zyman để cho ra đời những chiến dịch, chiến thuật và quy trình vô cùng ngoạn mục. M ột cuốn sách mà khi lật giở đến trang cuối cùng bạn sẽ hiểu được Marketing thực sự là gì, làm thế nào để Marketing hiệu quả và kiếm được tiền!
Rằng, marketing là một khoản đầu tư giá trị nhất của một doanh nghiệp, giúp doanh nghiệp gia tăng về mặt giá trị thương hiệu cũng như kiếm được nhiều tiền vì vậy chỉ có thể tăng đầu tư hoặc giữ nguyên chứ không nên cắt giảm.
Nếu điều công ty bạn làm khi không bán được hàng là cắt giảm ngân sách Marketing càng nhiều càng tốt thì bạn toi rồi!
Và những người làm Marketing cần nhớ lại thật nhanh rằng marketing là bán sản phẩm. Marketing không phải là một trò chơi và nó cũng chẳng phải nghệ thuật trang trí kỳ diệu nào cả. Nó là công chuyện kinh doanh, làm ăn thuần túy. Marketing chính là việc lập ra những kế hoạch một cách thấu đáo, có hệ thống và thực thi hiệu quả những hành động nhằm lôi kéo thêm nhiều người mua nhiều sản phẩm của bạn một thường xuyên hơn giúp công ty làm ra thêm tiền.
Chính vì lẽ đó, Marketing trong tương lai – là marketing-quay-về-nền-tảng-cơ-bản. Bạn chi tiền để kiếm ra tiền!')
insert into MotaSP VALUEs('SP003', N'THAY ĐỔI bàn về cách thức thực hiện sự thay đổi, khi sức ỳ và những thói quen đã trở nên thâm căn cố đế. Toàn bộ “triết lý” của cuốn sách tập trung vào 3 ý chính:

- Định hướng cho Người Quản Tượng: tác động đến lý trí bằng cách tìm kiếm gương sáng, chỉ rõ mục tiêu.

- Động viên Con Voi: tác động đến cảm xúc.

- Tạo dựng Con Đường: phá vỡ môi trường cũ, điều chỉnh môi trường, quy tụ đồng minh để tạo điều kiện cho thay đổi diễn ra.

Cuốn sách đưa ra những ví dụ sinh động - có cả những ví dụ liên quan đến Việt Nam - để minh họa cho ý tưởng. Ngoài ra còn có những bài thực hành để ứng dụng các ý này vào trường hợp thực tế. Sách dễ đọc, dễ hiểu và dễ ứng dụng vào thực tế.')
insert into MotaSP VALUEs('SP004', N'Trong khoảng thời gian từ 1968 – 1976, Bill Gates, Andy Grove, và Steve Jobs thành lập ba công ty có tác động lớn đến ngành công nghệ cao, tạo ra giá trị hơn 1.000 tỉ đôla Mỹ, và làm thay đổi cuộc sống chúng ta. Họ làm sao đạt được thành tựu đáng kinh ngạc này? Quy Luật Của Chiến Lược lần đầu tiên phân tích tổng hợp về ba nhân vật này – từ thành công đến thất bại, từ điểm chung đến điểm riêng – làm nổi bật những chiến lược sách lược kinh doanh mà họ tiên phong trong xây dựng doanh nghiệp.

Giáo sư David Yoffie và Michael Cusumano đã theo đuổi nghiên cứu về ba nhà lãnh đạo và ba công ty suốt gần 30 năm, trong quá trình giảng dạy về chiến lược kinh doanh, sáng tạo đột phá, khởi nghiệp tại Trường Kinh doanh Harvard và Trường Quản lý Sloan thuộc Học viện Công nghệ Massachusetts (MIT). Trong quyển sách này, hai giáo sư trình bày việc Gates, Grove, và Jobs đã trở thành những bậc thầy về chiến lược như thế nào? Trong vai trò CEO, cả ba tiếp cận chiến lược và thực thi rất giống nhau – nhưng lại hoàn toàn khác với đối thủ – bằng cách chú trọng đến các quy luật sau:

•  Nhìn về phía trước, suy luận ngược về phía sau: Họ xác định đích đến cho công ty trong tương lai và “suy luận ngược” để tìm ra đường đến đích.

•  Đặt cược lớn, nhưng không cược cả công ty: Cả ba người đều đặt cược rất lớn nhưng hiếm khi đưa tiềm lực tài chính công ty đứng trước rủi ro không đáng có.

•  Xây dựng nền tảng và hệ sinh thái: Người dẫn đầu công nghệ phải thiết lập nền tảng ngành, tạo điều kiện cho các công ty khác tạo ra sản phẩm và dịch vụ bổ trợ, nâng cao giá trị cho nền tảng.')
insert into MotaSP VALUEs('SP005', N'Điều gì làm nên sự khác biệt giữa một người giỏi giao tiếp và một người giỏi thuyết phục? Tác giả sách bán chạy Robert Cialdini, đồng thời là nhà tâm lý học được trích dẫn nhiều nhất trong thời đại chúng ta, đã giải thích tường tận trong Dọn Đường Tâm Lý, Thuyết Phục Chắc Thắng về cách chuẩn bị và dẫn dắt người nghe trước khi truyền tải thông điệp đến họ và rồi thành công trong việc thuyết phục họ, với những kỹ năng chi tiết – những “chiến lược kinh doanh dựa trên cơ sở khoa học” - có thể dễ dàng được áp dụng trong các chiến dịch tiếp thị số hiện đại. Sách được Financial Times vinh danh là đầu sách kinh tế hay nhất năm 2016.')
insert into MotaSP VALUEs('SP006', N'Mọi thứ chúng ta sử dụng, từ mạng xã hội, đến nhà cửa, đường cao tốc đều do ai đó thiết kế. Nhưng làm thế nào họ quyết định được điều gì là tốt cho ta? Họ đã làm đúng điều gì và họ đã khiến ta thất vọng ở đâu? Và ta có thể học được gì từ các chuyên gia này, nhằm đưa ra những quyết định đúng đắn trong cuộc sống của chính mình?

Trong Sự Thống Trị Của Thiết Kế, nhà thiết kế kiêm tác giả best – seller Scott Berkun đưa độc giả vào một cuộc hành trình khám phá cách các nhà thiết kế thuộc mọi loại, từ kỹ sư phần mềm đến nhà quy hoạch đô thị, đã thành công và thất bại như thế nào.

Bạn sẽ dám đưa ra những câu hỏi thú vị hơn về những thứ mình mua, sử dụng và chế tạo, đồng thời bạn có thể dễ dàng tận dụng ý tưởng từ những nhà thiết kế vĩ đại để cải thiện cuộc sống hằng ngày.

“Sau khi đọc Sự Thống Trị Của Thiết Kế, bạn sẽ biết phải cảm ơn ai khi bạn làm ra chiếc bánh mì nướng hoàn hảo, trách cứ ai khi bạn lỡ chuyến bay và chế giễu ai khi bạn thấy Segway chạy trên đường.”

- Jon Kolko, đối tác tại Modernist Studio và người sáng lập của Austin Center for Design')
insert into MotaSP VALUEs('SP007', N'Rupert Murdoch là ông trùm truyền thông theo đúng nghĩa trong một nền báo chí và truyền thông tư bản đầy rẫy những ông trùm. Tất cả đều tìm đến lợi nhuận và sử dụng mọi phương tiện của họ để làm giàu. Không ít trong số đó đã làm được hơn thế, khi tác động lên cả các nền chính trị, gây ảnh hưởng đến các cuộc tuyển cử, ủng hộ phe này hoặc dìm phe kia bằng các phương tiện tác động lên dư luận.

Nhưng Murdoch đặc biệt hơn cả, bởi con người siêu hạng theo cánh hữu bảo thủ này có tác động lớn đến hai thị trường báo chí sôi động nhất thế giới là Mỹ và Anh. Ở Mỹ, ông kiểm soát một hệ thống truyền thông lớn thân hữu, với “cái loa” lớn nhất là Fox News, một công cụ chiếm vai trò định hướng thông tin trong nền chính trị Mỹ. Quan trọng hơn cả, ông ủng hộ Donald Trump cả trước, trong và sau nhiệm kỳ Tổng thống của Trump. Ở Anh, tập đoàn của ông sở hữu hai cái loa lớn khác là The Sun và The Times. Ở nhiều nơi khác cũng có dấu chân ông.')
insert into MotaSP VALUEs('SP008', N'Khi một đam mê biến thành một hoạt động kinh doanh

Chuyện kể rằng Riccardo, một chàng trai trẻ 23 tuổi đang thực tập tại phòng Marketing của một công ty ở Chicago, vào một buổi tối đã mua tên miền từ một nhà cung cấp Mĩ mà trên đó bạn của anh, Chiara Ferragni, dự định đăng bài đăng đầu tiên của The Blonde Salad.

Chỉ 3 năm sau, hai người được mời về chia sẻ kinh nghiệm với những sinh viên ở Harvard. Và đây chỉ là khởi đầu của việc xây dựng một công ty với lợi nhuận hàng triệu euro - nhưng hơn cả, đó là một dự án có tính chất đổi mới, lớn đến mức trở thành một trong những đỉnh cao, giúp thay đổi luật lệ của ngành thời trang ở cấp độ quốc tế.

Ở thời điểm hiện tại, khi chỉ mới hơn 30 tuổi, Riccardo Pozzoli đã có hàng loạt doanh nghiệp mới trong ngành thời trang, thực phẩm, phong cách sống và mạng xã hội: một câu chuyện về dũng khí, sự sáng tạo và đam mê mà nhờ đó chúng ta có thể diễn giải thời đại của mình theo một góc nhìn mới.

Quan điểm của Pozzoli về những lĩnh vực kinh doanh ở hiện tại và tương lai là khuyến khích nhưng không bó buộc, thực tế nhưng không mất đi tầm nhìn và chất thơ, rất dễ đọc nhưng giàu thông tin và ý tưởng.

Cùng với Riccardo Pozzoli, trong cuốn sách này, chúng ta sẽ hiểu được:

•  Thế nào là một nhà khởi nghiệp thực sự.

•  Cách để biến ước mơ thành một ý tưởng có giá trị, và phát triển ý tưởng đó thành một công ty.

•  Những việc cần làm trên thực tế khi bạn bắt đầu từ con số 0, và bạn cần dũng khí và sự dẻo dai để xây dựng một dự án chưa được thực hiện.

•  Cách để bắt đầu lại lần nữa khi cuộc sống khiến chúng ta - hoặc cố gắng ép buộc chúng ta - phải bước sang một trang mới, xây dựng trên những thành công cũng như thất bại')
insert into MotaSP VALUEs('SP009', N'Những nhà lãnh đạo tối cao sẽ luôn sở hữu quyền lực vô hạn như người ta vẫn tưởng hay sao?

Không hẳn vậy. Quyền lực đang chuyển dịch - từ các đội quân lớn, ổn định sang các nhóm quân nổi dậy lỏng lẻo, từ các tập đoàn đến các công ty khởi nghiệp lanh lợi, và từ các dinh thự tổng thống sang các quảng trường. Nhưng quyền lực cũng đang thay đổi, trở nên khó sử dụng hơn và dễ mất hơn. Trong Sự Suy Tàn Của Quyền Lực, cựu biên tập viên của Foreign Policy đã phân tích cuộc đấu tranh giữa những tay chơi hạng nặng từng thống trị một thời và những quyền lực vi mô đang thách thức họ trong mọi lĩnh vực của đời sống. Dựa trên nghiên cứu ban đầu, cùng với những kinh nghiệm trong các vấn đề mang tính toàn cầu, Moisés Naím đã giải thích sự kết thúc của quyền lực đang tái thiết thế giới của chúng ta như thế nào.

Năm 2015, cuốn sách này đã được Mark Zuckerberg lựa chọn để mở đầu chiến dịch “Một năm đọc sách” của mình.')
insert into MotaSP VALUEs('SP010', N'Người giàu không làm việc vì tiền. Họ bắt tiền làm việc cho họ. Chấp nhận thất bại là bước đầu của thành công? Quyền lực của sự lựa chọn! Những bài học không có trong nhà trường. Hãy đọc bộ sách Dạy con làm giàu và bắt đầu từ hôm nay “để không có tiền vẫn tạo ra tiền”…

 Bộ sách gồm các tập:

Tập 1: Để không có tiền vẫn tạo ra tiền
Tập 2: Sử dụng đồng vốn
Tập 3: Hướng dẫn đầu tư
Tập 4: Con giàu con thông minh
Tập 5: Để có sức mạnh tài chính
Tập 6: Những câu chuyện thành công
Tập 7: Ai đã lấy tiền của tôi?
Tập 8: Để có những đồng tiền tích cực
Tập 9: Những bí mật về tiền bạc mà bạn không học ở nhà trường
Tập 10: Trước khi bạn thôi việc
Tập 11: Trường dạy kinh doanh
Tập 12: Lời tiên tri của cha giàu
Tập 13: Nâng cao chỉ số IQ tài chính')
insert into MotaSP VALUEs('SP011', N'Muốn kinh doanh thành công, các doanh nghiệp cần thấu hiểu người dùng để có thể mang đến những sản phẩm/dịch vụ đáp ứng nhu cầu, tâm tư nguyện vọng của họ. Vì thế, UX Research (nghiên cứu trải nghiệm người dùng) đã trở thành một bước quan trọng không-thể-thiếu trong bất cứ quá trình xây dựng sản phẩm/dịch vụ nào. Và đây cũng là một nghề nghiệp mới rất thú vị tại Việt Nam.

Nếu bạn muốn trở thành người có “nghề”, có kiến thức, trau dồi thêm kinh nghiệm trong lĩnh vực UX Research thì cuốn sách UX RESEARCH – Thấu hiểu người dùng, ung dung chiến thắng sẽ giải cơn khát “làm nghề”, mong muốn “phụng sự khách hàng”. Bằng vốn kinh nghiệm thực tiễn, hai chuyên gia về UX - Khúc Cẩm Huyên và Đỗ Thùy Linh chia sẻ về những bí quyết nghề nghiệp, làm thế nào để “hiểu” và “thương” khách hàng. Vốn kiến thức, tư tưởng, cách tiếp cận trong cuốn sách này đảm bảo vừa thực tiễn vừa hữu ích sẽ giúp những người làm nghề UX Research học được cách thấu hiểu người dùng nhằm phục vụ trong công việc và kinh doanh. Bên cạnh đó, cuốn sách còn đưa ra định hướng theo đuổi nghề nghiệp mới rất thú vị và quan trọng trong ngành UX.

UX RESEARCH – Thấu hiểu người dùng, ung dung chiến thắng gồm bốn phần chính: Phần 1 mang đến cái nhìn tổng quan, vén màn bí mật về UX Research - “lá bài sinh mệnh” của sản phẩm; bật mí những kim chỉ nam, phương pháp nghiên cứu UX phổ biến và hiệu quả; phân biệt rạch ròi UX Research và Market Research.

Phần 2 vạch rõ hành trình, chỉ rõ hành trang mà bạn cần chuẩn bị để trở thành UX Researcher. Phần 3 – Usability Testing (UT) thực chiến với những hướng dẫn về cách thực hiện hiệu quả một buổi UT - kiểm thử tính khả dụng.

Phần 4 gồm các bài tập thực hành dành cho bạn – các UX Researcher tương lai.')
insert into MotaSP VALUEs('SP012', N'Warren Buffett là chuyên gia đầu tư và là một trong những doanh nhân giàu có, được kính trọng nhất thế giới. Với 12 năm học hỏi trực tiếp các và thói quen đầu tư của Warren Buffett, Marry Buffett, cùng với Sean Sear, đã viết nên một cuốn sách hướng dẫn hoàn chỉnh dành cho những nhà đầu tư mới muốn học theo cách đầu tư thành công của Warren Buffett.

Thông qua cuốn sách, Mary và Sean sẽ mang lại cho người đọc hướng dẫn chi tiết từng bước về cách phân tích và mua cổ phiếu, đồng thời chỉ ra những cạm bẫy thường gặp trên thị trường cổ phiếu. Cuốn sách sẽ liệt kê những thói quen cần rèn luyện để trở thành một người thành công và giàu có, những phương pháp cụ thể, từ những phương pháp lâu đời nhất theo phong cách của Benjamin Graham đến những phương pháp tân tiến nhất để chọn cổ phiếu thích hợp.

Ngoài ra, cuốn sách cũng sẽ hướng dẫn người đọc cách đọc báo cáo tài chính, chuẩn bị bảng cân đối kế toán cá nhân và doanh nghiệp…

Với nội dung đơn giản, dễ hiểu và đầy đủ, cuốn sách 7 Phương Pháp Đầu Tư Warren Buffet thực sự là một cuốn sách không thể thiếu của mọi nhà đầu tư.')
insert into MotaSP VALUEs('SP013', N'Kể chuyện vốn dĩ là một quá trình sáng tạo đột phá.

Trong kinh doanh, một câu chuyện phù hợp sẽ quyết định tài sản quý giá nhất của mọi công ty: Thương hiệu. Những câu chuyện là yếu tố cơ bản của danh tiếng. Không kể được câu chuyện cũng đồng nghĩa với việc không có tiếng tăm hoặc thua cuộc vào tay kẻ khác. Đó cũng lí do vì sao

Content Marketing Trong Kỷ Nguyên 4.0 là một cuốn sách hướng dẫn hoàn thiện và thực tế về nghệ thuật kể chuyện. Và Alexander Jutkowitz đã viết nên sẽ chỉ cho bạn cách để:

- Tìm kiếm những nguồn lực độc đáo đem lại sự kinh ngạc, tri thức và niềm vui trong công ty của bạn

- Thúc đẩy sự sáng tạo cá nhân và tập thể

- Hiểu được chiến lược kể chuyện của những những thương hiệu hàng đầu thế giới

- Nắm được những bí mật của những người kể chuyện chiến lược vĩ đại trong quá khứ

Chẳng mấy chốc, tất cả chúng ta đều sẽ phải kể câu chuyện về tiến trình sự nghiệp của mình. Những câu chuyện ý nghĩa nhất của chúng ta không chỉ sống trong những trang sách bất động. Mà thay vào đó, nó sẽ được “kể ra” bằng âm thanh và hình ảnh của công nghệ, ở tốc độ nhanh hơn, và sẽ xuất hiện chỉ một nửa bước sau sự trải nghiệm.

Hãy đọc cuốn sách này và kể câu chuyện của mình và của công ty một cách tự tin.')
insert into MotaSP VALUEs('SP014', N'Một trong số những mong  muốn chung của mọi người là việc sống mà không cần phải lo lắng về tiền. Dù gì đi nữa nếu thiếu tiền hoặc không có tiền thì sẽ có nhiều khi phiền não, đôi khi sẽ trở nên khốn khổ. Nếu trong cuộc sống nhất thiết phải lựa chọn thời kỳ không có tiền thì nên chọn khi nào? Dù sao thì không có tiền khi còn nhỏ là tốt nhất. Khi còn nhỏ dù mệt nhọc hay thiếu thốn thì cũng còn tốt hơn là giàu có, an nhàn khi có tuổi. Trong quá khứ dù vất vả thì hiện tại giàu có hơn, hiện tại dù có hơi vất vả thì tương lai thoải mái hơn. “Tuổi già” chính là tương lai đó.Về già khi năng lực tài chính đã mất, đến tiền còn không có thì không phải là quá khốn khổ ư? Vì thế dù chỉ là một ngày thì cũng phải nhanh chóng chuẩn bị cho một tuổi già không phải lo lắng về tiền bạc.

Vậy thì cái thời gian tuổi già mà chúng ta phải chuẩn bị là bao lâu? Như ở đầu đề đã nói đến con số 30 năm có thể có cảm giác là hơi dài. Thực tế nếu bảo dự tính thời gian tuổi già cho mọi người xung quanh ( từ sau khi về hưu đến lúc chết ), thì đa số mọi người trả lời là 15~20 năm. Ở đất nước Hàn Quốc, thời gian tuổi già trung bình của người đi làm nam giới là khoảng 17 năm và nếu chỉ nghĩ về nam giới thì thời gian này tương đối chính xác. Nhưng mà nếu suy xét đến vấn đề vợ thường kém chồng trung bình là 3 tuổi và sống lâu hơn 7 năm thì thời gian tuổi già thực tế của 2 vợ chồng là 27 năm. Nếu kéo dài tuổi thọ theo ước tính tiêu chuẩn cuộc sống hiện tại thì cần phải chú ý là thời gian này sẽ tăng thêm từ 3 đến 5 năm.')
insert into MotaSP VALUEs('SP015', N'Cuốn sách này sẽ mang lại cho bạn một hiểu biết thực tế, chính xác và sâu sắc về tiền, mục đích và lịch sử cũng như hệ thống phía sau nó, bản chất và những quy luật kinh tế điều tiết nó, cách thức tiền lưu thông, vận hành và cách thức tận dụng kiến thức đó để kiếm được tiền.

Bạn có thể kiểm soát và cân bằng giữa kinh doanh và công việc, gia đình và con cái, đam mê và tạo ra sự khác biệt!

Bạn cũng có thể làm điều mình thích và thích thử minh làm, hòa trộn đam mê cùng sự nghiệp, và công việc với nghỉ ngơi, trong khi vẫn tạo ra lợi nhuận cũng như khẳng định bản thân mình!

Chúng ta không cần nghèo khổ mới được lên thiên đường, ta có thể giàu có mà vẫn tới được đổi!')

----------
insert into MotaSP VALUEs('SP016', N'Tập hợp những bài viết nghiên cứu về ngôn ngữ của nhà giáo Lê Xuân Mậu đã đăng trên các báo và tạp chí. Do đó nội dung các bài viết đề cập đến những hiện tượng ngôn ngữ, lời nói khá gần gũi trong xã hội, mang tính ứng dụng cao với những ví dụ cụ thể sinh động. Nội dung được trình bày khá dễ hiểu, giản dị, sinh động, súc tích, ít sử dụng các thuật ngữ khoa học hàn lâm. Các bài viết là những nghiên cứu, phát hiện khá lý thú về một số hiện tượng ngôn ngữ mang tính phổ quát và sức biểu cảm của ngôn ngữ nghệ thuật trong văn chương.')
insert into MotaSP VALUEs('SP017', N'Là bộ sách quân sự đầu tiên của dân tộc Việt Nam do Hưng Đạo đại vương Trần Quốc Tuấn viết vào thế kỷ XIII. Những tư tưởng quân sự trong "Binh thư yếu lược" chủ yếu là tư tưởng của Tôn Vũ và Ngô Khởi mà Trần Hưng Đạo đã vận dụng một cách sáng tạo vào hoàn cảnh Việt Nam lúc bấy giờ. Bộ sách là sự kết hợp giữa lý luận và thực tiễn với những chiến lược, chiến thuật quân sự độc đáo... đã àm nên chiến thắng vẻ vang cho dân tộc. Đặc biệt, nhà quân sự lỗi lạc này đã nhấn mạnh: "Phải khoan dùng sức dân để làm kế sâu rễ bền gốc, đó là thượng sách giữ nước, không còn gì hơn". Đến nay tư tưởng ấy vẫn còn nguyễn giá trị.')
insert into MotaSP VALUEs('SP018', N'Trong mảng sáng tác về đề tài tiểu tư sản của Nam Cao, truyện ngắn Đời Thừa có một vị trí đặc biệt . Đời Thừa đã ghi lại chân thật hình ảnh buồn thảm của người tri thức tiểu tư sản nghèo, nhà văn Nam Cao đã phác hoạ rõ nét hình ảnh vừa bi vừa hài của lớp người này trở nên đầy ám ảnh. Giá trị của Đời Thừa không phải chỉ ở chỗ đã miêu tả chân thật cuộc sống nghèo khổ, bế tắc của người  trí thức tiểu tư sản nghèo, đã viết về người tiểu tư sản không phải với ngòi bút vuốt ve, thi vị hoá, mà còn vạch ra cả những thói xấu của họ...')
insert into MotaSP VALUEs('SP019', N'Thời Gian Trong Mắt Tôi là cuốn hồi ký và những ghi chép, bài báo của Nhà giáo Nhân dân - Bác sĩ Trần Hữu Nghiệp (1911-2006) do chính ông viết và đã được Nxb Vãn nghệ Thành phố Hồ Chí Minh in, phát hành năm 1993 với số lượng hạn chế.

Trong Thời Gian Trong Mắt Tôi, ông đã chuyển tải, ghi lại những tháng ngày sôi động, trong sáng, nhiệt huyết của một TRÍ THỨC TÂY HỌC, để lại tất cả để đi theo Cách mạng, phục vụ nhân dân, chiến sĩ trong dòng chảy của cuộc đấu tranh giải phóng dân tộc trọn vẹn 60 năm của cuộc đời mình: Cho đến khi Ông nhắm mắt xuôi tay, 2006. Ông được ví như cây đa trong ngành Y, là “máy cái” trong công cuộc xây dựng và đào tạo cán bộ cho ngành Y tế Cách mạng miền Nam trong suốt hai cuộc kháng chiến chống Pháp, chống Mỹ.')
insert into MotaSP VALUEs('SP020', N'Một cuốn sách trinh thám kinh dị hội tụ đầy đủ những cung bậc cảm xúc, “nhấn” người đọc chìm sâu trong cảm giác lạnh gáy, rùng mình đến khiếp đảm

Đâu mới là “sự thật”?

Đâu mới là “tử thần”?

Rốt cuộc ánh mắt luôn theo dõi cô từ đằng xa là ai? Con người hay quỹ dữ?

Ngôi nhà giấy, hình nhân thế mạng, áo dài đỏ, chiếc gương nhuốm máu, cửa sổ đêm đêm mở hé, mũi dép hướng lên giường….Mọi sự kiện đều mở đường dân cô gái nhỏ bé mà kiên cường tới chốn âm ti

Sau một đêm mưa gió, cô bé sáu tuổi Phương Linh bỗng mất hết tất cả, bất đắc chí trở thành một đứa trẻ mồ côi.

Sau mười năm tận mắt chứng kiến cái chết bi thảm của cha mẹ, Phương Linh giờ đã trở thành một thiếu nữ kiên cường, và luôn đau đáu trong lòng vụ án mạng năm nào chưa có lời giải đáp. Trong một dịp tình cờ quay về căn nhà cũ, Phương Linh phát hiện bấy lâu nay vẫn luôn có một hồn ma dõi theo mình. Hồn ma đó gợi nhắc cho cô nhớ tới một người từng xuất hiện trong đêm mưa gió năm ấ Mụn nốt ruồi giữa sống mũi, đôi mắt thường trực nét u sầu, trong giấc mơ đưa cô rong ruổi khắp chốn rừng sâu, kéo theo sau là hàng loạt những biến cố liên tục ập đến, có lúc tưởng chừng đã đập tan cả ranh giới cuối cùng của sự can trường nơi cô.

Rốt cuộc hồn ma đó là ai, có liên quan gì tới cái chết của bố mẹ cô? Tại sao hết lần này tới lần khác đều xuất hiện trước lưỡi hái tử thần, dang đôi tay đổi cho cô một mạng?

Rốt cuộc đằng sau cái chết của cha mẹ cô còn ẩn giấu bí mật động trời nào mà chính cô cũng không thể mường tượng nổi?

Liệu rằng cô có thể thoát khỏi cơn ác mộng kinh hoàng này để quay trở về với cuộc sống bình yên như điều cô từng mong cầu trong lúc gần như rơi vào cảnh tuyệt vọng:

“Nhất định phải trốn thoát khỏi đây, nhất định không thể chết một cách vô nghĩa.”')
insert into MotaSP VALUEs('SP021', N'Câu chuyện khởi đầu bằng những cái chết thương tâm của các cô gái trẻ. Nguyên nhân tử vong hoàn toàn khác nhau như tai nạn giao thông, ngã vực hay giết người cướp của… khiến cho không ai nghĩ rằng đây là một vụ giết người hàng loạt. Tuy nhiên cảnh sát hình sự Phan Đăng Bách khám phá ra rằng các nạn nhân đều có điểm chung ban đầu là đều đi taxi của hãng Hoa Sen. Và còn nữa, phần lớn trong số họ đều bị giết sau khi chuếnh choáng men say tình ái.

Hành trình truy dấu của Phan Đăng Bách bắt đầu, lần theo những tài khoản mạng, những nhân chứng có quan hệ chung… anh khéo léo tìm ra được mối nối, một sợi dây mảnh dẫn về một thế lực hắc ám phía sau tội ác.

Thế nhưng phía trước Phan Đăng Bách là muôn trùng hiểm nguy đang giăng sẵn cho bản thân anh và những người anh yêu thương.

Tựa như một bộ phim Noir kịch tính, bất ngờ đến phút chót và đậm chất Việt Nam, “Câu Lạc Bộ Số 7” đặt ra những vấn đề về thân phận con người và giá trị của tình yêu trong một thế giới mà tinh thần vị kỷ đang lên ngôi.')
insert into MotaSP VALUEs('SP022', N'Tập truyện ngắn Lỗi Tại Cái Đuôi Diều của Cao Văn Quyền kể viết về tuổi thơ của chính tác giả và những đứa trẻ ở làng quê thế hệ 8X 9X: trong trẻo, hồn nhiên, yêu ghét rõ ràng.

"Tác giả không đặt nặng tính giáo dục, không dùng một tâm hồn già cỗi để viết về thế giới trẻ thơ. Mà tác giả đã khai thác những câu chuyện giản dị, gần gũi, nhẹ nhàng mà bất cứ đứa trẻ nông thôn nào cũng có thể bắt gặp mình trong đó." (trích lời Nhà văn Vũ Thị Huyền Trang)')
insert into MotaSP VALUEs('SP023', N'Vẫn kiểu kể chuyện hóm hỉnh, nhẹ nhàng, nhưng chú trọng các chi tiết nghiệp vụ mang tính kiến thức khoa học hơn là trực giác thám tử, “Muội tro” của Võ Chí Nhất đưa người đọc tiếp cận nhận thức muôn thuở “Thiên bẩm chỉ là lẻ loi, lao động mới là phổ quát để đạt được kết quả tốt đẹp”, đặc biệt với công tác điều tra tội phạm.

Những câu chuyện trong cuốn sách này như một chuỗi hình sin cứ lên tới cao trào rồi lại xuống. Đó cũng là đặc điểm của truyện trinh thám. 10 truyện ngắn là 10 kiểu phá án tinh tế khác nhau, chỉ dùng một nhân vật xuyên suốt là cô cảnh sát hình sự trẻ Hà “ớt”, Võ Chí Nhất đã áp dụng “kiểu” của Sherlock Holmes hay Thanh tra Maigret quen thuộc cho dòng văn chương trinh thám Việt Nam.')
insert into MotaSP VALUEs('SP024', N'“Kinh giới là hai hình vị Hán Việt mà chữ Hán là 荆芥. Tại Trung Quốc, nó được gọi là hương nhu 香幕 nhưng, ở đây, chúng tôi sẽ không đi sâu vào sự khác biệt này mà chỉ muốn nhấn mạnh - như đã từng nhấn mạnh - rằng, về mặt từ nguyên, thì “Không phải tất cả những kẻ giống hệt nhau đều là bà con [với nhau]".

Thì là (với biến thể ngữ âm thìa là) là âm “nửa xưa nửa nay”của hai chữ Hán 紫蘇, mà âm Hán Việt hiện hành là thì la, mà hầu như tất cả những quyển từ điển tiếng Hán đều ghi nhận tên khoa học là Anethum graveolens, y chang tên khoa học của cây thì là ở Việt Nam.

Tía tô là âm “nửa xưa nửa nay” của hai chữ Hán 紫蘇, mà âm Hán Việt hiện hành là tứ tô, dùng để chỉ tên một loại rau, mà đó lại là thứ y chang rau tía tô của Việt Nam, đều có tên khoa học là Perilla frutescens. Chữ 紫 nay đọc thành tử nhưng đây là một chữ vốn thuộc vận mục chỉ 支, vận bộ chi 支 nên lẽ ra phải đọc là tỉ. Nhưng một số chữ thuộc vận bộ chi 支 đã chuyển nguyên âm từ I > IA/IÊ, mà ngay như chữ đứng đầu vận bộ là chữ chi 支 này cũng đã chuyển thành chia, như có thể thấy trong chia đôi, chia lìa, chia rễ, v.v. Vậy chẳng có gì lạ nếu trong tử tô 紫蘇, tử đã chuyển thành tía. Còn từ thanh thượng (dấu hỏi) của tỉ > tử 紫 sang thanh khứ (dấu sắc) của tía thì đây là một trong những luật biến đổi thanh điệu thường thấy nên chúng tôi bất tất phải chứng minh”

– An Chi')
insert into MotaSP VALUEs('SP025', N'Hồi ký Bà Đỡ của dịch giả, nhà nghiên cứu văn học Đào Tuấn Ảnh gồm có ba phần. Riêng phần đầu, kể chuyện bà ngoại là chủ yếu, đã chiếm đến một nửa dung lượng bản thảo. Hai phần sau, “Chuyến du lịch đầu tiên” và “Cô Tí Hon”, kể chuyện những người thân khác trong gia đình. Xa, là chuyện về thời con gái của người mẹ đẻ, tức cô Tí Hon, giờ đã ngoại cửu tuần; gần, là chuyện về những đứa cháu, con cháu của cô Hon, đứa em gái có dòng máu Tây lai mà vợ chồng cô Tí Hon nhận nuôi thuở trước. Luôn có một giọng kể nghèn nghẹn như kìm nén nỗi xúc động khi nhớ lại những cơ cực oan trái, những hy sinh thầm lặng, những trớ trêu sự đời trong cuộc đời và số phận những người thân trong gia đình của tác giả.')
insert into MotaSP VALUEs('SP026', N'“Có những giai điệu nghe từ thời đang lớn vang vọng suốt một đời.

Có những giọng nói rủ rỉ hoài trong trí.

Cũng thế, có thể là mùi hương của một loài hoa theo mùa, lời nắng rợn, mùi vị của miếng ăn ngày gieo neo trên đất nước một thời giông bão.

Tất cả sẽ thành kí ức, thành sức mạnh để ta sống, và hiểu sống khó như thế nào, và ta giàu có thế nào khi có kí ức.

Kí ức không phải là trí nhớ.

Kí ức là biết nhớ.”')
insert into MotaSP VALUEs('SP027', N'"Bộ áo giáp thân đốt mà Bọ mang theo trên mình từ thuở lọt lòng hình như đang nhẹ dần, nhẹ dần rồi vỡ ra. Từ trong hình hài một con Bọ Ăn Mày xấu xí, khi rũ bỏ bộ cánh cũ, bỗng hiện lên một thân hình hoàn toàn khác, màu đỏ tươi với đôi cánh mỏng tanh.

Một cơn gió thoảng qua và có tiếng reo vang lên:

- A, một con Chuồn Chuồn Ớt!"

– Trích Chuồn Chuồn Ớt tìm mẹ

Bọ ăn mày vốn mồ côi, quanh năm kiếm ăn nơi đáy ao, ẩn mình trên các câu rong và an phận với cuộc sống thường ngày. Từ khi nghe cô Ốc Nhồi kể về thế giới lạ lẫm phía trên mặt nước với trời cao, mây bay, gió thổi, Bọ ta quyết tâm lên đường thám hiểm bầu trời và tìm mẹ. Vừa lên khỏi mặt nước, nó lột xác trở thành chuồn chuồn với thân hình đỏ tươi như quả ớt chín.

Vậy là hành trình tìm mẹ của Chuồn Chuồn Ớt bắt đầu. Mỗi thử thách là một bài học hấp dẫn cùng những câu chuyện kì thú về thế giới các loài sống trên mặt đất.')
insert into MotaSP VALUEs('SP028', N'“Là một người viết, một người dạy, và một người như bao con người khác, thứ giá trị nhất tôi nghĩ mình có thể mang lại cho nhau là chút hi vọng. Có người hỏi cảm giác khi yêu là gì. Tôi nghĩ đó chính là cảm giác được sống trong hi vọng. Tỉnh dậy và bạn biết rằng họ là tương lai của mình và tương lai của mình còn có họ. Khi bạn còn mong ngày mai, bạn sẽ còn yêu cuộc đời. Khi bạn quá dựa vào quá khứ, đời chỉ là những chuỗi ngày thở than. Hãy nói cho tôi biết bạn hi vọng điều gì, tôi sẽ cho biết cuộc đời bạn sẽ đi về đâu.

Trong tập tiểu luận này, tôi trải lòng về những gì mình từng trải qua để nói rằng không dễ để mỉm cười với đời. Tôi đã từng gục ngã, rất nhiều lần, để ý thức rất rõ rằng còn sống đã là một sự can đảm.

…

Bạn cũng sẽ thấy, trong suốt tác phẩm, tôi nói rất nhiều về sự không thể. Không thể quên, không thể cố gắng, không thể vượt qua, không thể kết nối... Chỉ những gì bất khả mới tạo cảm giác gây nghiện. Nó ta khiến ta muốn chinh phục, khiến ta ám ảnh và khiến ta không ngừng nghĩ về. Nó tạo ra sự bế tắc và những con đường cùng.

Nhưng có những khi ‘Không thể’ nói ‘Có thể’, và ta thật vui khi biết mình đã sai. Hãy quên rằng mình từng nói sẽ không bao giờ quên. Hãy đau khổ một cách hạnh phúc, còn hơn cố hạnh phúc một cách đau khổ. Hãy quên những cuộc đời ta không thể có và sống cuộc đời mà ta đang có. Và đó là lúc hi vọng được sinh ra, trong lằn ranh giữa sự sống và cái chết, giữa kết thúc và bắt đầu, giữa dừng lại và nỗ lực cho đến khi tới điểm dừng.

Tôi nghĩ mỗi khi cầm một cuốn sách, ta cầm nó với một chút hi vọng. Và tôi hi vọng dù sao đi nữa, bạn vẫn luôn giữ hi vọng của mình. Bởi vì, suy cho cùng, nếu còn nó, nghĩa là chúng ta còn tất cả.”

-- Minh Đào')
insert into MotaSP VALUEs('SP029', N'Tập sách kể 5 câu chuyện về Cọp chưa từng ghi lại trên sách vở mà được truyền khẩu đặc biệt trong giới võ thuật Bình Định xưa. Cái hay của những câu chuyện là người thật, việc thật, ở một xứ sở có thật, đủ để hấp dẫn trẻ em khi tự đọc hoặc nghe kể lại.

Bối cảnh những câu chuyện vào thời Tây Sơn, lúc ấy, không riêng gì Bình Định, mà các vùng khác còn khá hoang sơ với chốn rừng núi hiểm hóc, Cọp vẫn hay lai vãng vào làng bắt người hoặc trộm gia súc, thú nuôi của người dân.  Ở mỗi truyện, là ý chí chiến đấu sống còn của người với cọp và cọp với người. Dù chiến đấu với nhau một mất một còn, nhưng giữa cọp và người, dường như có gì đó vẫn kết nối trong nhau. 5 chuyện Cọp, với những  truyện như người giành mồi của cọp, ông già đánh cọp ba chân, hoặc làm sao để cải số bị cọp bắt... là những kiểu con người đối mặt với cọp, cọp đối diện với người  trong những tình huống khá lắc léo, nguy hiểm và mang cả tính huyền bí. Với vùng đất giỏi võ như Bình Định, truyện kể sắc nét khía cạnh những con người, vốn dĩ rất bình thường nhưng đặc biệt giỏi võ cũng như thông thạo các thuộc tính của thú dữ.

Các truyện cọp trong tập sách vẽ nên một nét văn hóa dân gian đậm chất  Việt Nam, với  hào khí lẫm liệt. Những  truyện này có thể nuôi dưỡng các em nhỏ sự can trường, tính bền bĩ, gợi niềm hiếu kỳ, biết thêm yêu đất nước Việt, người Việt. Nhiều câu chuyện như vậy hẳn còn “lưu lạc” trong dân gian, đủ để trẻ nhỏ hiểu rằng, nhiều bí ẩn vẫn còn chờ đợi  khám phá.

Sách phù hợp với các lứa tuổi tiểu học, trung học và đặc biệt hỗ trợ cho các bậc phụ huynh có thêm vốn "truyện kể" đầy hấp dẫn. Sách cũng có thể sử dụng trong nhà trường làm nguồn tài liệu tham khảo quý giá.

Những Truyện Kỳ Thú Về Cọp Chưa Ai Kể - nằm trong Tủ sách "Văn học thiếu nhi" với hi vọng cùng bạn đọc làm thành một khu vườn xanh mát phong phú cho văn chương Việt Nam.')
insert into MotaSP VALUEs('SP030', N'"Đi Khi Ta Còn Trẻ, cũng như những cuốn sách khác của Trương Anh Ngọc về niềm đam mê khám phá thế giới, đều là những cuốn sách đầy cảm xúc, giàu triết lý và tràn trề sức sống. Nỗi khát khao xê dịch – một thử nghiện sang trọng, niềm hạnh phúc khi mỗi ban mai thấy một khung trời lạ được mô tả hào hứng say mê, truyền tải mạnh mẽ thông điệp rằng những trải nghiệm với thế giới chính là tài sản lớn nhất của mỗi đời người, và ta có thể để tuổi xuân trôi đi một cách đáng tự hào theo cách ấy.

Đi nhiều hơn nghĩa là hiểu biết hơn, là trở nên bao dung và khiêm tốn hơn. Trương Anh Ngọc đã và đang dựng nên một biểu tượng về tinh thần công dân toàn cầu, về những chuyến đi làm người ta lột xác để sống đẹp, sống vì cộng đồng hơn nữa."

-- Nhà báo ĐỖ DOÃN HOÀNG')

----------
insert into MotaSP VALUEs('SP031', N'Những tưởng vụ án ngày 28.3 khép lại, Chu Sĩ Khiêm đã có thể an tâm nghỉ hưu nhưng hóa ra tất cả mới chỉ trải qua một nửa màn kịch. Ông cùng không ngờ những án mạng liên tiếp có liên quan mật thiết với bí mật năm xưa của ông. Sau khi mọi chuyện được làm sáng tỏ, cuối cùng, ông đã tìm ra hung thủ thực sự nhưng đồng thời lại phải chấp nhận một sự thật đau lòng…')
insert into MotaSP VALUEs('SP032', N'Jack London là một trong những nhà văn hiện thực hàng đầu nước Mỹ với “33 đầu sách cùng rất nhiều truyện ngắn và mẩu tin trên báo”. Ông được đánh giá là người không biết mệt mỏi cùng khả năng sáng tạo phi thường, vốn sống phong phú. Tất cả đều được thể hiện rõ nét qua những trang viết của ông.

Sau sự thành công của cuốn sách best-seller Tiếng gọi nơi hoang dã, Jack London tiếp tục cho ra đời cuốn Nanh Trắng và được đón nhận rất lớn từ độc giả.

Nanh Trắng là một tác phẩm kinh điển của nhà văn Jack London kể về hành trình phiêu lưu đầy “bão tố” của một chú chó mang trong mình dòng máu chỉ ba phần tư là sói và phần còn lại là “chó nhà”.  Và chú chó ấy có tên là Nanh Trắng, sống trong vùng Yukon của Canada, trong thời kì người ta đổ xô đi tìm vàng Klondike vào cuối thế kỷ 19.

Nếu Tiếng gọi nơi hoang dã kể về chú chó Buck kéo xe đã bị bản năng hoang dã biến thành một chú chó sói, thì Nanh Trắng lại kể về một chú chó cùng tên cuốn sách với ba phần tư dòng máu là chó sói nhưng đã được thuần hóa bằng lòng yêu thương của con người để trở thành chó nhà. Dù có nội dung đảo ngược nhau nhưng cả hai tác phẩm nổi bật nhất này của Jack London đều hướng đến, đều miêu tả sự khắc nghiệt, tàn bạo trong tự nhiên, cũng như thái độ tàn độc hoặc yêu thương của con người đã tác động tới sự thay đổi bản chất của những chú chó.

Dưới ngòi bút táo bạo của Jack London, tiểu thuyết Nanh Trắng đã miêu tả và lột tả rõ nét sự tàn nhẫn, độc ác của thiên nhiên đối với con người. Đồng thời nội dung cuốn tiểu thuyết này cũng chứa đựng nhiều bài học quý giá về tình mẫu tử, tình bạn và cả tình người đoàn kết vượt qua nghịch cảnh. Mọi thứ diễn ra rất tự nhiên, chân thật và đầy tính nhân văn. Và tất nhiên, đáng chú ý nhất vẫn là hành trình lớn lên của sói Nanh Trắng, từ một chú chó sói hoang dã trở thành một chú chó nhà anh hùng.')
insert into MotaSP VALUEs('SP033', N'Tác phẩm đầu tiên thuộc thể loại này, Ngựa ô yêu dấu của tác giả Anna Sewell là một cuốn tự truyện mà nhân vật chính là một chú ngựa có tên Black Beauty. Có thể nói đây là một tác phẩm kinh điển vượt thời gian – cuốn sách đã được dựng thành phim – và cho đến hiện tại vẫn không giảm đi sự hấp dẫn. Dù bạn là một đứa trẻ hay một người trưởng thành yêu thích các tác phẩm kinh điển, thì bạn cần đọc cuốn sách này.

Ngựa ô yêu dấu của Anna Sewell được tác giả viết ra với mục đích, mong muốn con người xem lại cách đối xử với các loài động vật, nhất là đối với loài ngựa. Tác giả, tuy là một người tàn tật, nhưng lại có mối liên hệ đặc biệt với loài ngựa và bà đã có nhiều đóng góp, nỗ lực để biến thế giới trở thành một nơi tốt đẹp hơn cho loài ngựa.

Nội dung cuốn sách là lời kể của chú ngựa mang tên Black Beauty, chú ngựa được sinh ra trên đồng cỏ, nơi nó học được một số bài học quý giá từ mẹ của mình và sau đó, tiếp tục trải qua với những người chủ khác nhau – tốt và xấu, cẩn thận và lơ là, nhân từ và độc ác. Black Beauty đã mô tả kinh nghiệm của mình, trong khi thường bình luận về hoàn cảnh của những con ngựa mà chú làm việc cùng. Chú ấy cũng rất nỗ lực trong việc mô tả tính cách của con người thông qua những người chủ, phân tích họ và nói về họ nhiều hơn bất cứ điều gì.

Với những gợi ý tinh tế, Ngựa ô yêu dấu còn cung cấp cho độc giả nhất là những người đang nuôi ngựa những gợi ý về việc chăm sóc ngựa đúng cách. Người ta đồn rằng tác giả Anna Sewell, thực sự muốn viết một cuốn sách để giáo dục mọi người về cách đối xử đúng đắn với loài ngựa, tuy nhiên bà sợ rằng một tác phẩm phi hư cấu sẽ được ít người đón đọc. Do đó, bà đã chuyển nội dung đó thành một cuốn tiểu thuyết - tự truyện của một chú ngựa. Chắc chắn, cuốn tự truyện sẽ tiếp tục truyền cảm hứng cho nhiều tác phẩm kinh điển hơn và cũng trở thành tác phẩm kinh điển vượt thời gian được mọi người yêu thích.

Ngựa ô yêu dấu được viết theo cách rất dễ hiểu, cách triển khai mạch lạc, điều này khiến cho câu từ trở nên đẹp và mượt mà. Không tập trung quá nhiều, quá rườm rà vào việc mô tả. Những mô tả phù hợp với một cốt truyện tiếp tục tiến lên, cuốn sách sẽ mang lại cho bạn cảm giác hài lòng và cả những niềm vui khiến bạn bật cười. Nếu bạn đang nuôi một chú ngựa – hay bất kì một con vật nào đó – hoặc giao tiếp với chúng thường xuyên thì chúng sẽ dạy bạn cách hiểu về loài ngựa và lòng trắc ẩn, sự quan tâm có thể sửa chữa bất kì con ngựa nào.

Đây là một tác phẩm kinh điển dành cho trẻ em, vì vậy cách viết và ngôn ngữ rất dễ hiểu nhưng lại có điểm nhấn và rất sâu sắc.')
insert into MotaSP VALUEs('SP034', N'Harry khổ sở mong ngóng cho kì nghỉ hè kinh khủng với gia đình Dursley kết thúc. Nhưng một con gia tinh bé nhỏ tội nghiệp đã cảnh báo cho Harry biết về mối nguy hiểm chết người đang chờ cậu ở trường Hogwarts.

Trở lại trường học, Harry nghe một tin đồn đang lan truyền về phòng chứa bí mật, nơi cất giữ những bí ẩn đáng sợ dành cho giới phù thủy có nguồn gốc Muggle. Có kẻ nào đó đang phù phép làm tê liệt mọi người, khiến họ gần như đã chết, và một lời cảnh báo kinh hoàng được tìm thấy trên bức tường. Mối nghi ngờ hàng đầu – và luôn luôn sai lầm – là Harry. Nhưng một việc còn đen tối hơn thế đã được hé mở.

"Harry Potter và phòng chứa bí mật, không như những bộ truyện nhiều tập khác, vẫn tuyệt hay như người anh em trước… Hogwarts là sáng tạo của một thiên tài." - Times Literary Supplement')
insert into MotaSP VALUEs('SP035', N'Được truyền cảm hứng từ câu chuyện có thật về chú mèo “đạo chích” ở Portland, Oregon - chú mèo chuyên trộm đồ đạc nhà hàng xóm, và cũng “trộm” mất trái tim của họ…

“Mac ngoạm lấy miếng vải bông. Nó nhấm nháp cả mùi lẫn vị tỏa ra từ vật đó. Rồi với cảm giác chiến thắng ngập tràn, nó nhảy trở lên bệ cửa sổ rồi biến mất vào trong bóng đêm với chiến lợi phẩm bay lất phất phía sau.”

MacGyver, nhân vật chính trong cuốn sách Nhân Duyên... Mèo Định, là một chú mèo tinh nghịch, thích đùa giỡn, leo trèo nhưng luôn ôm ấp hy vọng có thể khiến cô chủ của mình hạnh phúc. Bạn có đang sở hữu một chú mèo như thế?

Từng là một giáo viên dạy Lịch sử, Jamie Snyder phóng khoáng và yêu thích sự tự do. Sau 5 năm với bốn mối tình không có kết quả khiến cho Jamie dù đã ba mươi tư tuổi vẫn chưa tìm được một nửa của mình. Năm đầu tiên với anh chàng chỉ biết nghĩ cho bản thân; năm thứ hai trải qua với anh chàng quên nói mình đã kết hôn; năm thứ ba kết thúc với anh chàng đeo bám, và đến năm thứ 4 gặp phải anh chàng không thích sự ràng buộc. Năm tệ nhất, năm thứ năm, là năm mẹ của Jamie bị ngã bệnh, nên lúc đó mọi quyết định cô đưa ra đều là vì mẹ.

Sau những năm tháng ấy, Jamie cuối cùng cũng quyết định sống cuộc sống của Năm-tôi-tỏa-sáng. Nhưng nỗ lực chẳng muốn liên quan đến đàn ông của cô đã sớm bị lung lay vì chú mèo MacGyver - người bạn đồng hành và là chỗ dựa quan trọng trong đời cô.

Từ tình yêu dành cho cô chủ, sự thông minh, tinh nghịch lẫn tinh tế và đương nhiên là cả chiếc mũi vô cùng thính của mình, Mac hiểu Năm-tỏa-sáng của Jamie là năm cô ấy hạnh phúc. Nếu muốn sống hạnh phúc thì cô ấy cần một người “bạn cùng bầy” phù hợp, chính vì thế Mac đã lập nên một kế hoạch hoàn hảo nhằm tác hợp cho Jamie và David – một anh chàng làm bánh điển trai gần nhà. “Phi vụ” xe duyên do Mac lãnh đạo đã khiến Jamie và David vô tình trao đổi cho nhau những món đồ bị đánh tráo, và rồi, theo thời gian, câu chuyện tình yêu giữa cô nàng sợ yêu và anh chàng cô đơn bắt đầu chớm nở... Một cách nhẹ nhàng nhưng vô cùng lãng mạn, tình yêu đó được tiếp sức với một chú mèo lém lỉnh và nhiều mưu kế.

Điều ấn tượng nhất của cuốn sách chính là mạch chuyện thỉnh thoảng được kể từ góc nhìn của chú mèo Mac tinh nghịch với trái tim tràn ngập sự yêu thương. Mac mong cô chủ của nó hạnh phúc, muốn mọi người xung quanh thoát khỏi nỗi buồn và sự cô độc. Với lối kể chuyện hóm hỉnh, và cách xây dựng nhân vật độc đáo, Nhân Duyên... Mèo Định không chỉ mang lại những giây phút giải trí mà còn truyền tải nhiều thông điệp ý nghĩa dành cho bạn đọc.

Như Jamie và David, những người trẻ hiện đại sống tẻ nhạt, sợ yêu đương vì những vấp ngã của quá khứ, đã được chú mèo Mac kết nối để thoát khỏi bóng ma của sự cô đơn. Họ đã dần phá bỏ những bức tường họ vô thức dựng lên sau khi trải qua những mất mát, tổn thương, bắt đầu mở lòng đón nhận yêu thương, cũng như cho bản thân và những người xung quanh một cơ hội tìm kiếm hạnh phúc.

Biết đâu được, ngay lúc này, chú mèo bên cạnh bạn cũng đang “bày mưu tính kế” tìm cho bạn một nửa hoàn hảo?

------

“Với điểm nhấn là một chú mèo lanh lợi cố gắng nối kết mọi người xung quanh lại với nhau, câu chuyện dễ thương này chắc chắn sẽ đánh cắp trái tim của mọi bạn đọc… Bên cạnh chú mèo đáng yêu ấy, các tuyến nhân vật phụ sinh động và hài hước cũng sẽ khiến các độc giả bật cười. Đây thật sự là một câu chuyện vui nhộn, ngọt ngào và ấm áp” - Trang RT Book Review

“Ai hâm mộ những mối tình lãng mạn, ấm áp thì ắt sẽ bị cuốn hút bởi chú mèo Mac tinh nghịch và các nhân vật khác trong câu chuyện hấp dẫn này.” - Tạp chí Publishers Weekly

“Một câu chuyện cực kỳ đáng yêu về một chú mèo quyết tâm xe duyên cho cô chủ của mình với một anh chàng hàng xóm, thông qua sức mạnh của mấy bộ quần áo bốc mùi.” - Trang Kirkus Reviews

“Với nhiều tình tiết lãng mạn và những trò nghịch ngợm đáng yêu, Nhân Duyên... Mèo Định là một cuốn sách nhẹ nhàng và ấm áp, đặc biệt phù hợp để bạn cuộn mình đọc trong chăn, bên cạnh chú mèo cưng tinh nghịch của mình!” - Tạp chí Modern Cat')

insert into MotaSP VALUEs('SP036', N'Chúng sinh đều đeo mặt nạ, chỉ trong một ý niệm, người liền biến thành thú.

Trong tòa nhà dân cư, một cô gái sau khi không còn nghe thấy tiếng cãi vã của nhà hàng xóm, chợt nghe thấy tiếng rơi nặng trịch từ bên dưới chân tòa vọng tới.

Vào đêm hè, một người đàn ông mang theo hai chiếc vali hành lý rời khỏi nhà, tung tích của vợ anh ta đến nay vẫn là một ẩn số.

Bên cạnh hồ trong công viên, đôi vợ chồng trẻ nắm tay nhau du thuyền, đột nhiên bèn ngã nhào xuống hồ, và không hề nổi lên trên mặt nước.

“Nếu như tôi chết, xin hãy điều tra chồng tôi!”

Một cuốn nhật ký viết đầy những lời dự đoán, trong những con chữ toát ra tâm ý xin cầu cứu, chủ nhân của nó rốt cuộc là ai?

Hai người phụ nữ không rõ tung tích, trải qua 18 năm dõi nhìn nhau từ xa, rốt cuộc họ đã chia sẻ với nhau bí mật gì?

Bạo lực dưới mái nhà, âm thầm lặng lẽ; Bộ xương khô bên dưới lớp da như hình với bóng.

Hoa bên bờ nở rộ trong bóng tối, mặt con búp bê xinh đẹp lạnh tanh.

Thế nhưng nếu chưa nhìn đến cuối cùng, bạn vĩnh viễn không thể nào biết được… bên trong con búp bê ẩn giấu điều gì.')
insert into MotaSP VALUEs('SP037', N'Trở về từ chuyến hành trình kinh hoàng ở nước Nga xa xôi, Lâm Bán Hạ và Tống Khinh La ngay lập tức phải đương đầu với một vụ án mới.

Bảy thiếu niên bốc đồng đã rủ nhau khám phá bí ẩn đằng sau những cái chết bất ngờ trên chuyến tàu lượn siêu tốc tại một công viên giải trí.

Thời khắc cánh cửa gỉ sét mở ra cũng là lúc họ vô tình bước qua ranh giới giữa thực và ảo. Sau lớp sương mù dày đặc, thứ đang lặng lẽ đón chờ họ chỉ có sự tuyệt vọng chết chóc.

Tàu lượn lao vun vút trên đường ray, giọng nói méo mó trong loa phát thanh thốt ra một câu thông báo đơn giản.

Cứ thế, trò chơi sinh tử điên rồ đã chính thức bắt đầu…')
insert into MotaSP VALUEs('SP038', N'ÔNG GiÀ VÀ BIỂN CẢ kể về ông lão đánh cá nghèo khổ, một mình vật lộn ở đại dương ba ngày liền với con cá kiếm khổng lồ, không nản lòng, luôn tin tưởng sẽ đánh được một mẻ cá lớn xứng đáng với uy danh thời trai trẻ của mình. Cốt truyện hết sức đơn giản nhưng phô diễn nghệ thuật độc thoại nội tâm đạt tới mức đỉnh cao, theo nguyên lí tảng băng trôi của Hemingway. Tác phẩm như một bản hùng ca ca ngợi nghị lực và sức lao động phi thường của con người...')
insert into MotaSP VALUEs('SP039', N'“Truyện trinh thám đã ở đâu, cho tới khi được Poe thổi vào đó hơi thở của sự sống?” - ARTHUR CONAN DOYLE

Nhiều thập kỉ trước khi vị thám tử lừng danh của Arthur Conan Doyle mê hoặc độc giả với sự tinh ranh và hóm hỉnh của mình, Edgar Allan Poe đã giới thiệu với thế giới C. Auguste Dupin. Là một người yêu thích những điều bí ẩn và được trời phú cho khả năng suy luận đáng kinh ngạc, Dupin đã giải đáp những bí ẩn phức tạp nhất, các tội ác khiến giới cảnh sát bối rối và tất cả người dân Paris sống trong thấp thỏm. Đồng hành cùng anh là người bạn thân, và cũng là người dẫn truyện.

Bằng ba câu chuyện đầy lôi cuốn về anh chàng người Pháp lập dị này, Poe đã khai sinh ra thể loại truyện trinh thám. Là thám tử thực sự đầu tiên trong lịch sử văn học, nhân vật Dupin đặt nền móng cho sự ra đời của các thám tử hư cấu sau này, và thiết lập phần lớn các yếu tố đặc trưng của dòng sách trinh thám hiện đại.

Có lẽ cả Sherlock Holmes lẫn Hercule Poirot, hay bất kì vị thám tử anh tài nào của nền văn học và điện ảnh sẽ không tồn tại nếu thế giới thiếu đi sự xuất hiện của C. Auguste Dupin.')
insert into MotaSP VALUEs('SP040', N'Cuốn sách được công ty Amblin Partners của Steven Spielberg mua bản quyền chuyển thể thành phim vào năm 2017.

 

Vanessa từ một cô vợ được cưng chiều hết mực bỗng chốc bị chồng bỏ rơi, biến thành người đàn bà nghiện rượu, thảm hại, phải tá túc ở nhà bác mình. Giờ đây, chồng cũ của cô chuẩn bị cưới vợ mới. Người phụ nữ đó sẽ thay thế cô bước vào cuộc đời xa hoa sung sướng mà cô đã đánh mất. Cuộc hôn nhân này - cô nhất định phải ngăn chặn!

Một người đàn bà bất ổn; một người đàn ông thành đạt; một người kể chuyện không đáng tin: những yếu tố vốn quá quen thuộc với các độc giả của thể loại tiểu thuyết tâm lý ly kỳ. Nhưng bộ đôi tác giả Greer Hendricks và Sarah Pekkanen đã dùng các chất liệu đó mà dựng nên một mê cung hoành tráng, độc đáo, với những góc rẽ bất ngờ.

------

“Phải đến giữa sách, câu chuyện mới bắt đầu hé lộ bí mật đầu tiên, và chỉ riêng nó thôi cũng không uổng công ta chờ đợi. Tiếp theo đó, các nút thắt lần lượt bung ra dữ dội và ào ạt không ngừng.” — The New York Times

“Độc giả say mê Sau cánh cửa đóng của B. A. Paris và Cô gái mất tích của Gillian Flynn sẽ thích thú với yếu tố tâm lý và cách kể chuyện luân phiên giữa các góc nhìn trong cuốn tiểu thuyết trinh thám ly kỳ này.” — Library Journal')
insert into MotaSP VALUEs('SP041', N'Một thập kỷ sau Nội chiến, cả người thắng lẫn kẻ thua đều kiệt quệ, chật vật để hồi phục và tái thiết. Đấu trường Sinh tử - đòn trả thù man rợ nhất của bên thắng cuộc - cũng bước vào năm thứ mười. Hai mươi tư học sinh cuối cấp ưu tú từ Học viện của Capitol được chọn làm người hướng dẫn cho các vật tế, trong số đó có Coriolanus Snow. Phải, chính Tổng thống Snow khét tiếng máu lạnh của bộ ba Đấu trường Sinh tử. Và hắn không hẳn là kiểu nhân vật chính được ta đón chờ.

Nhưng, dẫu tự mãn, ích kỷ, tham vọng, Coriolanus không hoàn toàn là tên độc tài tàn nhẫn của sáu mươi tư năm sau. Vẫn chưa. Đó là một chàng trai mười tám tuổi, xuất thân danh gia vọng tộc nhưng sa cơ lỡ vận, vẫn còn đâu đó những tình cảm tốt đẹp trong tâm hồn, có gia đình để bảo vệ, có một người con gái để yêu. Và ta chứng kiến cậu ta từng bước đưa ra những lựa chọn sai lầm, từng bước sa ngã, để từng bước leo lên đỉnh.

Khúc Hát Của Chim Ca Và Rắn Độc thỏa mãn những câu hỏi bạn có thể đã đặt ra sau những dòng cuối cùng của Húng nhại. Trong một bối cảnh tưởng quen mà hóa ')
insert into MotaSP VALUEs('SP042', N'Harry Potter đã được công nhận là một trong những bộ sách nổi tiếng nhất mọi thời đại. Ý nghĩa của cuộc đấu tranh với cái ác tối thượng chính là một trong nhiều yếu tố khiến bộ truyện này trở nên đặc biệt với đông đảo bạn đọc khắp thế giới.

Cuốn sách này sẽ đưa độc giả trở lại với thế giới phép thuật để khám phá những bài học từ tuổi thơ từ một góc độ khác, do đó nó đặc biệt phù hợp cho những độc giả đã trưởng thành cùng loạt sách này trong suốt hơn 20 năm vừa qua.

•  Bao gồm một loạt các chủ đề hấp dẫn như sự chuộc lỗi của Severus Snape, sức mạnh của tình yêu và định mệnh trong thế giới phù thủy,…

•  Mang đến cho bạn cái nhìn mới về các nhân vật, cốt truyện và chủ đề.

•  Trở thành tác phẩm bổ trợ hoàn hảo cho loạt sách và phim chuyển thể.

Với đầy những ý tưởng kỳ thú, Harry Potter Và Thế Giới Phép Thuật Nhiệm Màu (Tựa gốc: The Ultimate Harry Potter and Philosophy: Hogwarts for Muggles) là một người bạn đồng hành lý tưởng cho bất kỳ ai quan tâm đến việc làm sáng tỏ ẩn ý và khám phá các vấn đề lớn lao trong tác phẩm vĩ đại này.')
insert into MotaSP VALUEs('SP043', N'Khi giải Quidditch Thế giới bị cắt ngang bởi những kẻ ủng hộ Chúa tể Voldemort và sự trở lại của Dấu hiệu hắc ám khủng khiếp, Harry ý thức được rõ ràng rằng, Chúa tể Voldemort đang ngày càng mạnh hơn. Và để trở lại thế giới phép thuật, Chúa tể hắc ám cần phải đánh bại kẻ duy nhất sống sót từ lời nguyền chết chóc của hắn - Harry Potter. Vì lẽ đó, khi Harry bị buộc phải bước vào giải đấu Tam Pháp thuật uy tín nhưng nguy hiểm, cậu nhận ra rằng trên cả chiến thắng, cậu phải giữ được mạng sống của mình.

‘Bốn năm của Harry cũng như của chúng tôi ở trường Hogwarts thật vui nhộn, một thế giới đầy hài hước cùng nhiều hoạt động thú vị.’')
insert into MotaSP VALUEs('SP044', N'Kịch bản Harry Potter và Đứa trẻ bị nguyền rủa được viết dựa trên câu chuyện của J.K. Rowling, Jack Thorne và John Tiffany. Từ những nhân vật quen thuộc trong bộ Harry Potter, kịch bản nói về cuộc phiêu lưu của những hậu duệ, sự can thiệp vào dòng thời gian đã gây ra những thay đổi không ngờ cho tương lai tưởng chừng đã yên ổn sau khi vắng bóng chúa tể Voldermort.')
insert into MotaSP VALUEs('SP045', N'Đây là năm thứ 6 của Harry Potter tại trường Hogwarts. Trong lúc những thế lực hắc ám của Voldemort gieo rắc nỗi kinh hoàng và sợ hãi ở khắp nơi, mọi chuyện càng lúc càng trở nên rõ ràng hơn đối với Harry, rằng cậu sẽ sớm phải đối diện với định mệnh của mình. Nhưng liệu Harry đã sẵn sàng vượt qua những thử thách đang chờ đợi phía trước?

Trong cuộc phiêu lưu tăm tối và nghẹt thở nhất của mình, J.K.Rowling bắt đầu tài tình tháo gỡ từng mắc lưới phức tạp mà cô đã mạng lên, cũng là lúc chúng ta khám phá ra sự thật về Harry, cụ Dumblebore, thầy Snape và, tất nhiên, Kẻ Chớ Gọi Tên Ra…

‘Diễn biến nhanh, huyền bí, hấp dẫn và chặt chẽ trong từng chi tiết.’ - Daily Mail')

-----------------------------
insert into MotaSP VALUEs('SP046', N'Bắt kịp xu hướng ra đề thi TOEIC theo định dạng mới, bộ sách YBM TOEIC Reading 1000 (gồm 2 cuốn) cho thấy rõ những thay đổi trong phần thi Đọc. Mỗi cuốn trong bộ sách cung cấp 1000 câu hỏi bám sát đề thi thật, được cập nhật mới nhất, phù hợp với người học thuộc các trình độ khác nhau (band 500+ và 700+). Phần giới thiệu ở những trang đầu (giải đáp thắc mắc liên quan đến kỳ thi TOEIC, phân tích xu hướng ra đề theo định dạng mới, bảng quy đổi điểm,…) tóm lược những thông tin chắt lọc và quan trọng về TOEIC. Phần phía sau cuốn sách đưa ra lời giải thích đáp án chi tiết, cho thấy điểm vượt trội của tài liệu này so với các cuốn sách luyện đề khô khan khác. Với những hướng dẫn cụ thể và rõ ràng, người học chắc chắn sẽ không còn bỡ ngỡ trước những đổi mới của bài thi TOEIC, tự tin bước vào phòng thi và chinh phục điểm số cao như kỳ vọng.

Bộ sách YBM TOEIC Reading 100 gồm 2 cuốn: Tập 1 hướng tới đối tượng có mong muốn chinh phục band điểm 400-650 (mức điểm 450 là yêu cầu tốt nghiệp cao đẳng; mức điểm 650 là yêu cầu chung đối với sinh viên tốt nghiệp Đại học hệ đào tạo 4-5 năm, nhân viên, trưởng nhóm tại các doanh nghiệp có yếu tố nước ngoài). Tập 2 dành cho band điểm 650+ (có khả năng giao tiếp tiếng Anh tốt).

ƯU ĐIỂM NỔI BẬT

- Về thương hiệu

YBM là nhà xuất bản lớn nhất nhì Hàn Quốc, từng xuất bản các tài liệu học tiếng Anh (đặc biệt là sách luyện thi TOEIC) nổi tiếng, được nhiều người luyện thi ở Việt Nam biết tới. YBM đã trở thành thương hiệu có tên tuổi trong mảng sách học tiếng Anh.

- Về nội dung

Mỗi cuốn sách gói gọn nội dung chính trong 10 test bám sát cấu trúc của bài thi TOEIC định dạng mới, kịp thời cập nhật những điểm thay đổi, bao gồm:

+ Số lượng câu hỏi của Part 5 giảm, đồng thời tăng số lượng câu hỏi trong Part 6 và 7.

+ Tỷ lệ câu hỏi về ngữ pháp tăng lên so với câu hỏi về từ vựng.

+ Dạng bài ba đoạn văn, hình thức chuỗi tin nhắn được bổ sung thêm trong Part 7.

+ Các dạng câu hỏi mới cũng được thiết kế và lồng ghép hợp lý: câu hỏi chọn câu thích hợp để điền vào chỗ trống, câu hỏi nắm bắt ý đồ, câu hỏi chọn vị trí của câu cho sẵn.

- Về hình thức

+ Sách được trình bày rõ ràng, khoa học theo hai phần chính là đề thi và giải thích đáp án, giúp người luyện thi tiện chấm điểm, tra cứu và tự sửa lỗi.

+ Phần đề thi được sắp xếp và thiết kế tương đối giống đề thi thật, giúp người học dễ hình dung trong quá trình làm bài.

- Về tính ứng dụng

Bộ sách phù hợp cho mục đích tự học. Mỗi bài test có phần đáp án giải thích rõ ràng từng câu và dịch nghĩa toàn bộ văn bản. Mọi hoạt động chấm điểm, tra cứu đáp án và sửa lỗi, người học đều có thể tự làm.

')
insert into MotaSP VALUEs('SP047', N'Bắt kịp xu hướng ra đề thi TOEIC theo định dạng mới, bộ sách YBM TOEIC Reading 1000 (gồm 2 cuốn) cho thấy rõ những thay đổi trong phần thi Đọc. Mỗi cuốn trong bộ sách cung cấp 1000 câu hỏi bám sát đề thi thật, được cập nhật mới nhất, phù hợp với người học thuộc các trình độ khác nhau (band 500+ và 700+). Phần giới thiệu ở những trang đầu (giải đáp thắc mắc liên quan đến kỳ thi TOEIC, phân tích xu hướng ra đề theo định dạng mới, bảng quy đổi điểm,…) tóm lược những thông tin chắt lọc và quan trọng về TOEIC. Phần phía sau cuốn sách đưa ra lời giải thích đáp án chi tiết, cho thấy điểm vượt trội của tài liệu này so với các cuốn sách luyện đề khô khan khác. Với những hướng dẫn cụ thể và rõ ràng, người học chắc chắn sẽ không còn bỡ ngỡ trước những đổi mới của bài thi TOEIC, tự tin bước vào phòng thi và chinh phục điểm số cao như kỳ vọng.

Bộ sách YBM TOEIC Reading 100 gồm 2 cuốn: Tập 1 hướng tới đối tượng có mong muốn chinh phục band điểm 400-650 (mức điểm 450 là yêu cầu tốt nghiệp cao đẳng; mức điểm 650 là yêu cầu chung đối với sinh viên tốt nghiệp Đại học hệ đào tạo 4-5 năm, nhân viên, trưởng nhóm tại các doanh nghiệp có yếu tố nước ngoài). Tập 2 dành cho band điểm 650+ (có khả năng giao tiếp tiếng Anh tốt).

ƯU ĐIỂM NỔI BẬT

- Về thương hiệu

YBM là nhà xuất bản lớn nhất nhì Hàn Quốc, từng xuất bản các tài liệu học tiếng Anh (đặc biệt là sách luyện thi TOEIC) nổi tiếng, được nhiều người luyện thi ở Việt Nam biết tới. YBM đã trở thành thương hiệu có tên tuổi trong mảng sách học tiếng Anh.

- Về nội dung

Mỗi cuốn sách gói gọn nội dung chính trong 10 test bám sát cấu trúc của bài thi TOEIC định dạng mới, kịp thời cập nhật những điểm thay đổi, bao gồm:

+ Số lượng câu hỏi của Part 5 giảm, đồng thời tăng số lượng câu hỏi trong Part 6 và 7.

+ Tỷ lệ câu hỏi về ngữ pháp tăng lên so với câu hỏi về từ vựng.

+ Dạng bài ba đoạn văn, hình thức chuỗi tin nhắn được bổ sung thêm trong Part 7.

+ Các dạng câu hỏi mới cũng được thiết kế và lồng ghép hợp lý: câu hỏi chọn câu thích hợp để điền vào chỗ trống, câu hỏi nắm bắt ý đồ, câu hỏi chọn vị trí của câu cho sẵn.

- Về hình thức

+ Sách được trình bày rõ ràng, khoa học theo hai phần chính là đề thi và giải thích đáp án, giúp người luyện thi tiện chấm điểm, tra cứu và tự sửa lỗi.

+ Phần đề thi được sắp xếp và thiết kế tương đối giống đề thi thật, giúp người học dễ hình dung trong quá trình làm bài.

- Về tính ứng dụng

Bộ sách phù hợp cho mục đích tự học. Mỗi bài test có phần đáp án giải thích rõ ràng từng câu và dịch nghĩa toàn bộ văn bản. Mọi hoạt động chấm điểm, tra cứu đáp án và sửa lỗi, người học đều có thể tự làm.')
insert into MotaSP VALUEs('SP048', N'Bắt kịp xu hướng ra đề thi TOEIC theo định dạng mới, bộ sách YBM TOEIC Reading 1000 (gồm 2 cuốn) cho thấy rõ những thay đổi trong phần thi Đọc. Mỗi cuốn trong bộ sách cung cấp 1000 câu hỏi bám sát đề thi thật, được cập nhật mới nhất, phù hợp với người học thuộc các trình độ khác nhau (band 500+ và 700+). Phần giới thiệu ở những trang đầu (giải đáp thắc mắc liên quan đến kỳ thi TOEIC, phân tích xu hướng ra đề theo định dạng mới, bảng quy đổi điểm,…) tóm lược những thông tin chắt lọc và quan trọng về TOEIC. Phần phía sau cuốn sách đưa ra lời giải thích đáp án chi tiết, cho thấy điểm vượt trội của tài liệu này so với các cuốn sách luyện đề khô khan khác. Với những hướng dẫn cụ thể và rõ ràng, người học chắc chắn sẽ không còn bỡ ngỡ trước những đổi mới của bài thi TOEIC, tự tin bước vào phòng thi và chinh phục điểm số cao như kỳ vọng.

Bộ sách YBM TOEIC Reading 100 gồm 2 cuốn: Tập 1 hướng tới đối tượng có mong muốn chinh phục band điểm 400-650 (mức điểm 450 là yêu cầu tốt nghiệp cao đẳng; mức điểm 650 là yêu cầu chung đối với sinh viên tốt nghiệp Đại học hệ đào tạo 4-5 năm, nhân viên, trưởng nhóm tại các doanh nghiệp có yếu tố nước ngoài). Tập 2 dành cho band điểm 650+ (có khả năng giao tiếp tiếng Anh tốt).

ƯU ĐIỂM NỔI BẬT

- Về thương hiệu

YBM là nhà xuất bản lớn nhất nhì Hàn Quốc, từng xuất bản các tài liệu học tiếng Anh (đặc biệt là sách luyện thi TOEIC) nổi tiếng, được nhiều người luyện thi ở Việt Nam biết tới. YBM đã trở thành thương hiệu có tên tuổi trong mảng sách học tiếng Anh.

- Về nội dung

Mỗi cuốn sách gói gọn nội dung chính trong 10 test bám sát cấu trúc của bài thi TOEIC định dạng mới, kịp thời cập nhật những điểm thay đổi, bao gồm:

+ Số lượng câu hỏi của Part 5 giảm, đồng thời tăng số lượng câu hỏi trong Part 6 và 7.

+ Tỷ lệ câu hỏi về ngữ pháp tăng lên so với câu hỏi về từ vựng.

+ Dạng bài ba đoạn văn, hình thức chuỗi tin nhắn được bổ sung thêm trong Part 7.

+ Các dạng câu hỏi mới cũng được thiết kế và lồng ghép hợp lý: câu hỏi chọn câu thích hợp để điền vào chỗ trống, câu hỏi nắm bắt ý đồ, câu hỏi chọn vị trí của câu cho sẵn.

- Về hình thức

+ Sách được trình bày rõ ràng, khoa học theo hai phần chính là đề thi và giải thích đáp án, giúp người luyện thi tiện chấm điểm, tra cứu và tự sửa lỗi.

+ Phần đề thi được sắp xếp và thiết kế tương đối giống đề thi thật, giúp người học dễ hình dung trong quá trình làm bài.

- Về tính ứng dụng

Bộ sách phù hợp cho mục đích tự học. Mỗi bài test có phần đáp án giải thích rõ ràng từng câu và dịch nghĩa toàn bộ văn bản. Mọi hoạt động chấm điểm, tra cứu đáp án và sửa lỗi, người học đều có thể tự làm.')
insert into MotaSP VALUEs('SP049', N'Cuốn sách này sẽ cho các bạn một cái nhìn cụ thể về động từ bất quy tắc trong tiếng Anh, cách sử dụng, cách ghi nhớ cũng như những động từ bất quy tắc thông dụng nhất.

Nội dung chính của cuốn sách:

Giới thiệu 360 động từ bất quy tắc và cách sử dụng các thì trong tiếng Anh
Ví dụ minh họa cho 360 động từ bất quy tắc
Giúp người học có thể vượt qua trở ngại về ngữ pháp và cách ứng dụng, từng bước nâng cao khả năng tiếng Anh
Là nguồn tài liệu giúp bạn đọc dễ dàng tra cứu và tham khảo
Cùng tham khảo cuốn sách để nắm vững 360 động từ bất quy tắc trong tiếng Anh nhé.')
insert into MotaSP VALUEs('SP050', N'Tiếng Anh len lỏi trong mọi ngóc ngách của cuộc sống thường nhật, trong khi bạn vẫn nghĩ tiếng Anh khó?

Khi bắt đầu, nếu bạn chưa nói được tiếng Anh, đừng tự ti, vì không ai giỏi tiếng Anh ngay từ đầu.

Nhưng chính người bản xứ nói tiếng Anh chỉ dùng các từ quen thuộc trong cuộc sống hằng ngày, tương tự như của chúng ta. Vậy nên cách học tiếng Anh hiệu quả nhất chính là sử dụng những từ ngữ gần gũi trong cuộc sống. Và tất cả nhiệm vụ trong 101+ MẸO SINH TỒN VỚI TIẾNG ANH đều rất thông dụng, với hơn một trăm tình huống hội thoại gần gũi thực tế như tìm nhà thuê, đi xe buýt, đi máy bay, giao tiếp công sở, đi ăn nhà hàng, du lịch, tham gia các hoạt động xã hội,… sẽ giúp bạn cải thiện trình độ tiếng Anh và làm chủ kỹ năng đàm thoại bằng tiếng Anh; đồng thời khám phá những bí mật của ngôn ngữ này trong đời sống.

101+ MẸO SINH TỒN VỚI TIẾNG ANH sẽ dành cho bất cứ ai, ở bất cứ đâu!

Sách được phát hành bởi thương hiệu sách trẻ Wavebooks với sứ mệnh trở thành người bạn đồng hành tin cậy cho quá trình phát triển kỹ năng và tâm hồn người Việt trẻ.

#wavebooks #HyunjeongYoo #kynangsong #azvietnam #sachhocngoaingu #sachhoctienganh')
insert into MotaSP VALUEs('SP051', N'Việc học IELTS rất quan trọng nhưng đối với những bạn chưa từng học IELTS và đang chuẩn bị học IELTS, có thể sẽ cảm thấy mông lung và không biết nên bắt đầu từ đâu. Cuốn IELTS Foundation - Luyện thi IELTS cho người mới bắt đầu 4 kỹ năng - Giúp bạn khởi đầu và luyện thi 4 kỹ năng IELTS thành công sẽ là một tài liệu hữu ích để các bạn có kiến thức tổng quát nhất về kỳ thi IELTS và các bài thi trong kỳ thi IELTS.

ƯU ĐIỂM NỔI BẬT CỦA CUỐN SÁCH

1. IELTS Foundation được coi là cuốn “bản đồ” chi tiết giúp bạn mới học IELTS dễ dàng và thuận tiện nhất

Tất tần tật về kỳ thi IELTS đều được gói gọn cuốn Cẩm nang IELTS Foundation này

Phần 1: giới thiệu từ những chi tiết nhỏ nhất như thi ở đâu?, lệ phí thi, cách đăng ký thi như thế nào?, ….

Phần 2: đi sâu vào 4 phần trong bài thi IELTS, bao gồm: Listening, Reading, Writing và Speaking. Phần này các em sẽ được giới thiệu các chiến thuật làm bài và luyện tập để làm quen và ứng dụng các kiến thức vừa học.

2. Nội dung trình bày chi tiết, cụ thể những kiến thức và kỹ năng cần thiết cho từng dạng bài, từng phần thi trong các bài thi IELTS

Áp dụng công nghệ quét QR code thuận tiện và tiết kiệm thời gian cho các em trong việc tìm file nghe.

Phần lời khuyên từ chuyên gia cung cấp những lưu ý và mẹo làm bài giá trị để hạn chế sai sót, chinh phục được điểm số cao.

Phần luyện tập là các bài tập tương đương với đề thi thực tế để làm quen và ứng dụng các kiến thức vừa học.

3. Phần lời giải chi tiết giúp tự kiểm tra, đánh giá và hoàn thiện kỹ năng làm bài

Nội dung kết hợp chặt chẽ giữa kiến thức lý thuyết, bài luyện tập và bài tập ứng dụng thực tế như đề thi thật sẽ giúp các bạn hiểu và vận dụng kiến thức một cách nhuần nhuyễn nhất.

Hy vọng các em sẽ Chinh phục đỉnh cao IELTS với cuốn “bản đồ” IELTS Foundation - Luyện thi IELTS cho người mới bắt đầu này nhé!')
insert into MotaSP VALUEs('SP052', N'Nhà giáo dục lừng danh Maria Montessori từng nói: “Giáo dục ngày nay không nên quá chú trọng việc truyền thụ kiến thức thuần túy, mà phải đi theo một con đường khác. Giáo dục phải hướng tới mục tiêu giải phóng tất cả tiềm năng của con người.”

Thấu hiểu điều đó, bộ sách Học Tiếng Anh Cùng Truyện Ngụ Ngôn Aesop được phát hành với kỳ vọng tối ưu hóa tất cả tiềm năng ngoại ngữ của trẻ và giúp trẻ hình thành nhân cách trong sáng, tốt đẹp từ sớm. Bộ sách có rất nhiều điểm độc đáo, thú vị:

- Những câu chuyện ngụ ngôn kinh điển, thâm thúy và sâu sắc.

- Song ngữ Anh - Việt, tranh minh họa sống động đi kèm với file nghe, nhãn dán, đảm bảo sự lôi cuốn và không gây nhàm chán.

- Đầy đủ các dạng bài tập để rèn luyện toàn diện 4 kỹ năng nghe - nói - Đọc - viết.

Tin rằng bộ sách sẽ là công cụ hữu ích cho các bạn nhỏ trong việc trau dồi vốn tiếng Anh, thấu hiểu các bài học đạo đức và thỏa sức “học mà chơi, chơi mà học”.')
insert into MotaSP VALUEs('SP053', N'Hàng nghìn năm trước, những câu chuyện ngụ ngôn nho nhỏ hàm chứa ý nghĩa luân lí sâu xa đã bắt đầu ra đời và lan tỏa khắp nơi. Với cả trẻ nhỏ lẫn người lớn, đây vừa là những lời nhắc nhở nhẹ nhàng, vừa là bài học thấm thía.

Bộ sách Learn English with Fables - Học tiếng Anh qua truyện ngụ ngôn này đưa những câu chuyện dí dỏm ấy đến với các bạn nhỏ qua một diện mạo hoàn toàn khác. Các em sẽ được đọc những câu chuyện dễ hiểu bằng tiếng Anh chuẩn mực, mang đến những thông điệp giản dị mà sâu sắc, từ đó tìm hiểu từ vựng, cấu trúc ngữ pháp cũng như mẫu câu tiếng Anh xuất hiện trong sách.

Xen kẽ trong từng mẩu truyện là những hình ảnh mô tả từ vựng tạo thành một trò chơi nho nhỏ: Các em sẽ phải vừa đọc vừa suy luận từ, nhờ đó ghi nhớ từ vựng nhanh và lâu dài hơn. Bên cạnh đó, mã QR gắn với mỗi cuốn sách còn giúp các bạn nhỏ nghe truyện qua lời kể của người bản ngữ, từ đó luyện kĩ năng nghe và cách phát âm chuẩn xác nhất. Mong rằng đây sẽ là món quà hữu ích, giúp các em học tiếng Anh thêm hiệu quả. 

Chúng mình cùng tìm đọc trọn bộ nhé!

•  Learn English With Fables 1 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 1: The Crab And His Mother - Cua Mẹ Và Cua Con
•  Learn English With Fables 2 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 2: The Hen And The Golden Eggs - Gà Mái Và Trứng Vàng
•  Learn English With Fables 3 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 3: The Three Businessmen - Ba Chàng Thương Nhân
•  Learn English With Fables 4 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 4: The Lion, The Fox, And The Beasts - Sư Tử, Cáo Và Muôn Loài
•  Learn English With Fables 5 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 5: The Miser And His Gold - Gã Hà Tiện Và Thỏi Vàng')
insert into MotaSP VALUEs('SP054', N'Hàng nghìn năm trước, những câu chuyện ngụ ngôn nho nhỏ hàm chứa ý nghĩa luân lí sâu xa đã bắt đầu ra đời và lan tỏa khắp nơi. Với cả trẻ nhỏ lẫn người lớn, đây vừa là những lời nhắc nhở nhẹ nhàng, vừa là bài học thấm thía.

Bộ sách Learn English with Fables - Học tiếng Anh qua truyện ngụ ngôn này đưa những câu chuyện dí dỏm ấy đến với các bạn nhỏ qua một diện mạo hoàn toàn khác. Các em sẽ được đọc những câu chuyện dễ hiểu bằng tiếng Anh chuẩn mực, mang đến những thông điệp giản dị mà sâu sắc, từ đó tìm hiểu từ vựng, cấu trúc ngữ pháp cũng như mẫu câu tiếng Anh xuất hiện trong sách.

Xen kẽ trong từng mẩu truyện là những hình ảnh mô tả từ vựng tạo thành một trò chơi nho nhỏ: Các em sẽ phải vừa đọc vừa suy luận từ, nhờ đó ghi nhớ từ vựng nhanh và lâu dài hơn. Bên cạnh đó, mã QR gắn với mỗi cuốn sách còn giúp các bạn nhỏ nghe truyện qua lời kể của người bản ngữ, từ đó luyện kĩ năng nghe và cách phát âm chuẩn xác nhất. Mong rằng đây sẽ là món quà hữu ích, giúp các em học tiếng Anh thêm hiệu quả. 

Chúng mình cùng tìm đọc trọn bộ nhé!

•  Learn English With Fables 1 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 1: The Crab And His Mother - Cua Mẹ Và Cua Con
•  Learn English With Fables 2 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 2: The Hen And The Golden Eggs - Gà Mái Và Trứng Vàng
•  Learn English With Fables 3 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 3: The Three Businessmen - Ba Chàng Thương Nhân
•  Learn English With Fables 4 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 4: The Lion, The Fox, And The Beasts - Sư Tử, Cáo Và Muôn Loài
•  Learn English With Fables 5 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 5: The Miser And His Gold - Gã Hà Tiện Và Thỏi Vàng')
insert into MotaSP VALUEs('SP055', N'Hàng nghìn năm trước, những câu chuyện ngụ ngôn nho nhỏ hàm chứa ý nghĩa luân lí sâu xa đã bắt đầu ra đời và lan tỏa khắp nơi. Với cả trẻ nhỏ lẫn người lớn, đây vừa là những lời nhắc nhở nhẹ nhàng, vừa là bài học thấm thía.

Bộ sách Learn English with Fables - Học tiếng Anh qua truyện ngụ ngôn này đưa những câu chuyện dí dỏm ấy đến với các bạn nhỏ qua một diện mạo hoàn toàn khác. Các em sẽ được đọc những câu chuyện dễ hiểu bằng tiếng Anh chuẩn mực, mang đến những thông điệp giản dị mà sâu sắc, từ đó tìm hiểu từ vựng, cấu trúc ngữ pháp cũng như mẫu câu tiếng Anh xuất hiện trong sách.

Xen kẽ trong từng mẩu truyện là những hình ảnh mô tả từ vựng tạo thành một trò chơi nho nhỏ: Các em sẽ phải vừa đọc vừa suy luận từ, nhờ đó ghi nhớ từ vựng nhanh và lâu dài hơn. Bên cạnh đó, mã QR gắn với mỗi cuốn sách còn giúp các bạn nhỏ nghe truyện qua lời kể của người bản ngữ, từ đó luyện kĩ năng nghe và cách phát âm chuẩn xác nhất. Mong rằng đây sẽ là món quà hữu ích, giúp các em học tiếng Anh thêm hiệu quả. 

Chúng mình cùng tìm đọc trọn bộ nhé!

•  Learn English With Fables 1 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 1: The Crab And His Mother - Cua Mẹ Và Cua Con
•  Learn English With Fables 2 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 2: The Hen And The Golden Eggs - Gà Mái Và Trứng Vàng
•  Learn English With Fables 3 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 3: The Three Businessmen - Ba Chàng Thương Nhân
•  Learn English With Fables 4 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 4: The Lion, The Fox, And The Beasts - Sư Tử, Cáo Và Muôn Loài
•  Learn English With Fables 5 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 5: The Miser And His Gold - Gã Hà Tiện Và Thỏi Vàng')
insert into MotaSP VALUEs('SP056', N'Hàng nghìn năm trước, những câu chuyện ngụ ngôn nho nhỏ hàm chứa ý nghĩa luân lí sâu xa đã bắt đầu ra đời và lan tỏa khắp nơi. Với cả trẻ nhỏ lẫn người lớn, đây vừa là những lời nhắc nhở nhẹ nhàng, vừa là bài học thấm thía.

Bộ sách Learn English with Fables - Học tiếng Anh qua truyện ngụ ngôn này đưa những câu chuyện dí dỏm ấy đến với các bạn nhỏ qua một diện mạo hoàn toàn khác. Các em sẽ được đọc những câu chuyện dễ hiểu bằng tiếng Anh chuẩn mực, mang đến những thông điệp giản dị mà sâu sắc, từ đó tìm hiểu từ vựng, cấu trúc ngữ pháp cũng như mẫu câu tiếng Anh xuất hiện trong sách.

Xen kẽ trong từng mẩu truyện là những hình ảnh mô tả từ vựng tạo thành một trò chơi nho nhỏ: Các em sẽ phải vừa đọc vừa suy luận từ, nhờ đó ghi nhớ từ vựng nhanh và lâu dài hơn. Bên cạnh đó, mã QR gắn với mỗi cuốn sách còn giúp các bạn nhỏ nghe truyện qua lời kể của người bản ngữ, từ đó luyện kĩ năng nghe và cách phát âm chuẩn xác nhất. Mong rằng đây sẽ là món quà hữu ích, giúp các em học tiếng Anh thêm hiệu quả. 

Chúng mình cùng tìm đọc trọn bộ nhé!

•  Learn English With Fables 1 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 1: The Crab And His Mother - Cua Mẹ Và Cua Con
•  Learn English With Fables 2 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 2: The Hen And The Golden Eggs - Gà Mái Và Trứng Vàng
•  Learn English With Fables 3 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 3: The Three Businessmen - Ba Chàng Thương Nhân
•  Learn English With Fables 4 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 4: The Lion, The Fox, And The Beasts - Sư Tử, Cáo Và Muôn Loài
•  Learn English With Fables 5 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 5: The Miser And His Gold - Gã Hà Tiện Và Thỏi Vàng')
insert into MotaSP VALUEs('SP057', N'Hàng nghìn năm trước, những câu chuyện ngụ ngôn nho nhỏ hàm chứa ý nghĩa luân lí sâu xa đã bắt đầu ra đời và lan tỏa khắp nơi. Với cả trẻ nhỏ lẫn người lớn, đây vừa là những lời nhắc nhở nhẹ nhàng, vừa là bài học thấm thía.

Bộ sách Learn English with Fables - Học tiếng Anh qua truyện ngụ ngôn này đưa những câu chuyện dí dỏm ấy đến với các bạn nhỏ qua một diện mạo hoàn toàn khác. Các em sẽ được đọc những câu chuyện dễ hiểu bằng tiếng Anh chuẩn mực, mang đến những thông điệp giản dị mà sâu sắc, từ đó tìm hiểu từ vựng, cấu trúc ngữ pháp cũng như mẫu câu tiếng Anh xuất hiện trong sách.

Xen kẽ trong từng mẩu truyện là những hình ảnh mô tả từ vựng tạo thành một trò chơi nho nhỏ: Các em sẽ phải vừa đọc vừa suy luận từ, nhờ đó ghi nhớ từ vựng nhanh và lâu dài hơn. Bên cạnh đó, mã QR gắn với mỗi cuốn sách còn giúp các bạn nhỏ nghe truyện qua lời kể của người bản ngữ, từ đó luyện kĩ năng nghe và cách phát âm chuẩn xác nhất. Mong rằng đây sẽ là món quà hữu ích, giúp các em học tiếng Anh thêm hiệu quả. 

Chúng mình cùng tìm đọc trọn bộ nhé!

•  Learn English With Fables 1 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 1: The Crab And His Mother - Cua Mẹ Và Cua Con
•  Learn English With Fables 2 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 2: The Hen And The Golden Eggs - Gà Mái Và Trứng Vàng
•  Learn English With Fables 3 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 3: The Three Businessmen - Ba Chàng Thương Nhân
•  Learn English With Fables 4 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 4: The Lion, The Fox, And The Beasts - Sư Tử, Cáo Và Muôn Loài
•  Learn English With Fables 5 - Học Tiếng Anh Qua Truyện Ngụ Ngôn - Tập 5: The Miser And His Gold - Gã Hà Tiện Và Thỏi Vàng')
insert into MotaSP VALUEs('SP058', N'Everything you need to ace English Language Arts là một cuốn sách nằm trong series sách bán chạy của thương hiệu sách giáo dục hàng đầu của Mỹ Brain Quest (nhà xuất bản Workman). Mỗi cuốn sách trong series này tổng hợp các kiến thức cơ bản của một môn học theo chuẩn chương trình bậc trung học cơ sở (các lớp 6-7-8). Everything you need to ace English Language Arts là cuốn sách tổng hợp kiến thức môn Language Arts, tương tự như môn Ngữ văn của học sinh Việt Nam.

Ý tưởng độc đáo của bộ sách nằm ở chỗ nó được thiết kế mô phỏng cuốn vở ghi chép trên lớp của một học sinh giỏi nhất lớp. Nhờ vậy, nội dung mỗi cuốn sách không chỉ khái quát gần như đầy đủ những kiến thức cơ bản trong chương trình bậc trung học cơ sở mà chúng còn được trình bày theo cách rất khoa học, dễ hiểu và sinh động, bắt mắt.

Những kiến thức của môn English Language Arts được chia thành các nội dung lớn sau:

•  Ngữ pháp: nhắc lại những kiến thức ngữ pháp cơ bản nhất, lưu ý những lỗi ngữ pháp học sinh thường mắc khi viết, cung cấp những mẹo hay cần ghi nhớ. Chương này đồng thời cũng giới thiệu với các bạn học sinh cách phân biệt và sử dụng các tài liệu tham khảo, tra cứu trong quá trình học.

•  Ngôn ngữ: là những cách mà ngôn ngữ được sử dụng để biểu đạt nội dung muốn truyền tải một cách hiệu quả. Những cách này bao gồm: các biện pháp tu từ, mối quan hệ giữa các từ, sắc thái ý nghĩa của từ…

•  Đọc tác phẩm phi hư cấu: cách nhận biết các thể loại văn học, cách tóm tắt tác phẩm, phân tích văn bản và bằng chứng, hiểu về các khái niệm trong một tác phẩm văn học (bối cảnh, nhân vật, cốt truyệt, chủ đề, giọng điệu…). Cuối chương là danh mục các tác phẩm văn học hư cấu gợi ý cho học sinh các lớp 6, 7, 8.

•  Đọc tác phẩm hư cấu: cách nhận biết các thể loại phi hư cấu, cách phân tích văn bản và bằng chứng, hiểu về tác giả và cách họ xây dựng lập luận của mình. Cuối chương là danh mục các cuốn sách phi hư cấu khuyên đọc dành cho học sinh các lớp 6, 7, 8.

•  Viết: chương này hướng dẫn học sinh các bước cơ bản khi viết, bao gồm việc nghiên cứu trước khi viết, lên ý tưởng, lập dàn ý, chọn từ, xây dựng lập luận… và thực hành viết các thể loại khác nhau

* Đối tượng: Các em học sinh trong độ tuổi từ 10 đến 15, đã có vốn tiếng Anh khá tốt.

Ưu điểm nổi bật

-  Mọi kiến thức cơ bản của cả bậc trung học cơ sở (các lớp 6-7-8) đều được tổng kết đầy đủ trong cuốn sách này với các định nghĩa rõ ràng, ví dụ dễ hiểu, minh họa sinh động và các mẹo học tập hiệu quả.

-  Với cuốn sách này, các em sẽ có một hình dung rất đầy đủ về những kiến thức được giảng dạy trong môn Language Arts của các bạn học sinh Mỹ. Đây là những kiến thức cơ bản và cần thiết để các em có thể hiểu và sử dụng thành thạo tiếng Anh, đặc biệt bước đầu tiếp cận với tiếng Anh học thuật.

-  Khác với việc học tiếng Anh như một ngoại ngữ, Everything You Need to Ace English Language là cách tiếp cận tiếng Anh như một ngôn ngữ theo cách của các học sinh bản ngữ. Nhờ đó mà các em có thể hiểu, cảm nhận và biết cách sử dụng tiếng Anh tinh tế và sinh động hơn, đồng thời thông qua đó cũng hiểu hơn về văn hóa và cách tư duy của người bản ngữ thể hiện trong cách sử dụng ngôn ngữ của họ.

-  Không chỉ giúp học tiếng Anh, cuốn sách còn có thể hỗ trợ các em trong việc học tiếng Việt. Các kiến thức về đọc và cảm thụ tác phẩm văn học, cách nhận biết các thể loại văn bản, cách tìm kiếm tài liệu, cách nghiên cứu đề tài, lập dàn ý, xây dựng lập luận và chọn từ ngữ khi viết… đều rất hữu ích cho các em học sinh trong việc đọc, viết nói chung.

-  Cách trình bày, tóm lược và tổng kết kiến thức trong cuốn sách này đồng thời cũng là một gợi ý cho các em học sinh về cách học tập khoa học. Ghi chép trên lớp là một kỹ năng học tập rất cần thiết đối với mọi học sinh và cuốn sách này thực sự là một minh họa sống động về một phương pháp học tập khoa học như thế.')
insert into MotaSP VALUEs('SP059', N'Cuốn sách Giải thích chuyên sâu ngữ pháp Tiếng Anh là tài liệu tham khảo hữu ích, giúp các em học sinh tổng ôn kiến thức ngữ pháp phục vụ cho kỳ thi THPT Quốc gia nói riêng, và các em học sinh cần ôn luyện và nâng cao kiến thức ngữ pháp nói chung.

NHỮNG ƯU ĐIỂM VƯỢT TRỘI CỦA CUỐN SÁCH:

1. Tổng hợp kiến thức ngữ pháp trọng tâm

Cuốn sách tổng hợp đầy đủ, chi tiết các kiến thức ngữ pháp cần thiết cho kỳ thi THPT Quốc gia và giúp học sinh mở rộng nâng cao kiến thức ngữ pháp khó dưới dạng các note dễ ghi nhớ.

2. Phân tích câu hỏi từ đề thi thật

Gồm các câu hỏi đặc trưng tiêu biểu được trích từ đề thi thật, có kèm phân tích và giải thích chi tiết, giúp các em làm quen với các câu hỏi ngữ pháp trong đề thi, cũng như tự ôn tập và vận dụng các kiến thức ngữ pháp vừa được học.

3. Bài tập vận dụng đa dạng

Phần bài tập vận dụng gồm các dạng bài đa dạng, giúp các em tự trau dồi và ôn luyện toàn diện để hình thành thói quen, phản xạ khi làm bài thi.

Ngoài ra, sau mỗi 4 chủ điểm ngữ pháp sẽ có 1 bài test liên quan đến những kiến thức ngữ pháp vừa học, giúp các em tự đánh giá chính xác năng lực của bản thân và lên kế hoạch ôn luyện phù hợp.

4. Lời giải chi tiết

Lời giải thích chi tiết, giúp các em tự đánh giá đúng năng lực. Đồng thời, cuốn sách cũng cung cấp nhiều mẹo giải, dấu hiệu nhận biết dễ dàng vận dụng, dễ nhớ, sẽ giúp học sinh làm bài nhanh hơn và đạt điểm cao hơn, từ đó các em sẽ tăng thêm niềm hứng thú với môn học này.

Hy vọng rằng bộ sách Giải thích chuyên sâu ngữ pháp Tiếng Anh sẽ là một tài liệu ôn thi hiệu quả cho các em!')
insert into MotaSP VALUEs('SP060', N'Không ít người thuộc nhiều từ, nhớ nhiều mẫu câu nhưng trong thực tế vẫn không thể nói tiếng Anh trôi chảy.

Quyển sách này trang bị cho bạn một lượng lớn từ vựng và mẫu câu thiết thực kèm nhiều thông tin hỗ trợ nhằm khắc phục nhược điểm nói trên. Bằng cách thực hành và ôn tập thường xuyên, chắc chắn bạn sẽ trò chuyện bằng tiếng Anh với người nước ngoài một cách tự tin bất kể khi du học, du lịch hay làm việc ở nước ngoài.

Sách sẽ cung cấp cho bạn:

•  100 tình huống thường gặp trong cuộc sống hằng ngày

Với tài liệu này, bạn hoàn toàn có thể sử dụng tiếng Anh trong rất nhiều tình huống, từ dự tiệc, kết bạn, làm thủ tục ở sân bay, đi nghỉ ở nước ngoài… cho đến những tình huống khẩn cấp.

•  2.000 từ và 400 cấu trúc quan trọng

Chỉ cần nắm vững 2.000 từ tiếng Anh thông dụng và 400 cấu trúc quan trọng là bạn có thể dễ dàng diễn đạt ý tưởng bằng tiếng Anh.

•  2.000 câu thoại tiếng Anh thường dùng nhất

Sử dụng và phát âm thật tốt những câu thoại này giúp bạn thực sự thoải mái khi giao tiếp để có nhiều bạn bè là người nước ngoài.')

--------------------------------------------
insert into MotaSP VALUEs('SP061', N'Tiếng Hàn vốn là ngôn ngữ coi trọng mối quan hệ với người nghe, nên khi nói những điều có thể gây áp lực cho người nghe như hành động từ chối, biện minh hay xin lỗi thì phải nói sao cho toát ra được sự tôn trọng mà người nói muốn truyền tải.

Các lý luận về giảng dạy ngữ pháp lấy trọng tâm là chức năng diễn ngôn trong giảng dạy tiếng Hàn có ý nghĩa rất lớn. Đặc biệt chức năng diễn ngôn được phân tích trong cuốn sách này là kết quả mang tính quy nạp đã phân tích trong kho ngữ liệu, vì thế chúng tôi cho rằng nó sẽ được vận dụng nhiều hơn tại các cơ quan giảng dạy tiếng Hàn. Nhu cầu sử dụng kết quả nghiên cứu về giáo dục tiếng Hàn tại các cơ quan giảng dạy tiếng Hàn rất cao và cấp thiết.

Phần lớn nghiên cứu từ trước đến nay chủ yếu tập trung vào việc tìm ra đặc trưng cú pháp của các cấu trúc ngữ pháp riêng biệt. Tuy nhiên gần đây, phương pháp giáo dục ngữ pháp theo chức năng diễn ngôn căn cứ vào ý đồ phát ngôn ngày càng được chú ý, việc phân biệt các biểu hiện tương đồng có chức năng diễn ngôn tương tự nhau về mặt cú pháp và ngữ dụng ngày càng được quan tâm hơn. Người nói sau khi nghĩ đến ý nghĩa mà bản thân muốn truyền tải thì xem xét tình huống sử dụng phù hợp rồi lựa chọn hình thái ngữ pháp phù hợp nhất. Do đó, người dạy cần phải dạy ngữ pháp sao cho nó là một công cụ để người học có thể giao tiếp truyền tải ý nghĩa mà mình muốn biểu hiện phù hợp với từng tình huống.')
insert into MotaSP VALUEs('SP062', N'Bạn đọc thân mến, tiếng Hàn giờ đây không còn xa lạ gì đối với người Việt chúng ta nữa phải không ạ?  Tuy nhiên để học và nói tốt được một ngôn ngữ nào đó thì việc học và trau dồi về từ vựng - ngữ pháp thôi vẫn chưa đủ. Mà chúng ta cần phải  học thêm những mẫu câu giao tiếp mà người bản xứ hay dùng. Phương pháp để học được những mẫu câu này thường thì các bạn hay xem phim Hàn, phim tài liệu Hàn, đọc sách Hàn, và thực tế hơn đó là giao tiếp với người Hàn.

Phương pháp này đối với những anh chị em biết cách học, biết cách tìm tòi và tra cứu thì không khó khăn gì với họ. Nhưng đối với hầu hết những anh chị em chúng ta vốn là những người bận rộn do công việc, bận rộn vì gia đình, bận rộn vì phải lo biết bao nhiêu vấn đề khác thì khó mà tập trung học được.

Hiểu được khó khăn đó Trang đã biên soạn quyển Luyện Nói Tiếng Hàn Qua 100 Chủ Đề Với Châu Thùy Trang này. Quyển sách này đã được biên soạn qua các giai đoạn khảo sát & tìm hiểu thực tế các tình huống giao tiếp, xem lại các đoạn phim tài liệu do đài truyền hình Hàn Quốc ghi lại, tham khảo các tình huống giao tiếp trên phim ảnh Hàn Quốc, những cuộc trò chuyện với mẹ chồng

Trang đã tập hợp lại các chủ đề cần thiết nhất trong cuộc sống, lao động ở Hàn và có kèm luôn phần phiên âm tiếng Việt - file audio nghe - một số video bài giảng nhằm giúp cho các anh chị em học tốt và hiệu quả hơn.

Thông qua quyển sách này các anh chị em có thể dễ dàng tham khảo những lúc cần thiết cũng như luyện tập hàng ngày để có thể nói tiếng Hàn được tốt hơn.

Hy vọng rằng với tác phẩm lần này tất cả các anh chị em đang sống và làm việc ở Hàn Quốc cũng như những bạn đang học tiếng Hàn sẽ tự tin hơn trong khi giao tiếp với người Hàn.

Chúc các anh chị em chúng ta có được cuộc sống vui vẻ - hạnh phúc và luôn gặp được nhiều may mắn - thành công hơn trong cuộc sống.

Trong quá trình biên soạn, Trang đã chỉnh sửa rất nhiều lần, nhưng có thể sẽ không tránh được sơ sót. Mong quý độc giả, quý anh chị em lượng thứ. Rất mong nhận được đóng góp ý kiến chân thành từ phía bạn đọc để lần tái bản sau được hoàn thiện hơn.

Xin chân thành cám ơn quý độc giả rất nhiều.

Châu Thuỳ Trang')
insert into MotaSP VALUEs('SP063', N'Ấn phẩm đặc biệt được tuyển chọn và biên dịch bởi dịch giả và tác giả hàng đầu về ngôn ngữ Hàn Lê Huy Khoa với rất nhiều kiến thức bổ ích có giá trị ứng dụng trong việc tiếp cận với tiếng Hàn.

Hàn Quốc là một đất nước xinh đẹp và con người ở nơi đây cũng rất thân thiện. Chuyến đi du lịch Hàn Quốc của các bạn chắc chắn sẽ rất tuyệt vời và là một kỷ niệm đáng nhớ nếu không gặp bất cứ khó khăn, trở ngại nào. Để tránh khỏi bỡ ngỡ và lạc lõng ở xứ sở kim chi này, các bạn hãy tập trung nói những câu giao tiếp bằng tiếng Hàn thông dụng nhất khi du lịch có trong cuốn bí kíp hữu dụng này nhé!')
insert into MotaSP VALUEs('SP064', N'Cuốn 5000 Từ Vựng Tiếng Hàn Thông Dụng giúp bạn tăng vốn từ vựng hàng ngày tự nhiên như hơi thở khi có thể đem nó đi đâu tùy thích, lấy ra tra lúc nào tuỳ ý.

5000 Từ Vựng Tiếng Hàn Thông Dụng – cuốn sách nhiều ưu việt

Bạn không cần phải dày công tốn sức để học hết tất cả từ vựng tiếng hàn mà vẫn có thể sử dụng tiếng hàn thành thạo. Chỉ với 5000 từ tiếng hàn thông dụng là bạn đã có thể làm điều đó.

Những lý do gì mà chúng ta nên lựa chọn 5000 từ vựng tiếng Hàn thông dụng?

-  5000 từ vựng thường dùng nhất trong giao tiếp tiếng Hàn

Dưới sự nghiên cứu, tìm tòi và tham khảo rất nhiều nguồn để có thể hệ thống cho bạn đọc được 5000 từ vựng thường sử dụng trong giao tiếp tiếng Hàn quả là không đơn giản chút nào. Tuy nhiên, những từ vựng được lựa chọn đều có căn cứ rất rõ ràng.

-  Hệ thống từ vựng sắp xếp khoa học và logic

Hệ thống từ vựng trong cuốn sách đều đã được biến hóa sắp xếp theo alphabet, nội dung hợp lý, trình bày logic. Dễ tìm, dễ nhớ, dễ ứng dụng vào học tập, cuộc sống. Hơn nữa sự sinh động các hình ảnh màu sắc bắt mắt còn kích thích người học, nhắc nhở bạn chủ động học tìm tòi ngay khi cầm trên tay cuốn sách.

-  Người học không chỉ nắm được từ vựng và còn học được cách phát âm chuẩn

5000 từ vựng tiếng hàn thông dụng nhất giúp bạn học đúng khối lượng từ vựng cần thiết nhất, theo một cách thức đúng đắn nhất. Không chỉ một mà còn nhiều kĩ năng khác bạn được bổ trợ ngoài tra nghĩa còn là cách phát âm chuẩn, cách sử dụng từ.

-  Cuốn sách cũng rất bổ ích cho người mới bắt đầu

Với những từ ngữ thông dụng nhất được phiên âm và dịch ngữ nghĩa một cách rõ ràng, trình bày dễ hiểu. Ngoài ra còn được phân loại ra nhiều loại từ, động từ, tính từ, danh từ giúp những người mới học học không bị nhầm lẫn khi sử dụng vào nói cũng như khi viết ngữ pháp câu.

-  Một cuốn sách nhỏ gọn, dễ dàng mang theo và học ở bất cứ đâu

Cuốn sách tự học tiếng hàn này giúp bạn tăng vốn từ vựng hàng ngày tự nhiên như hơi thở khi có thể đem nó đi đâu tùy thích, lấy ra tra lúc nào tuỳ ý. Tiện lợi mọi nơi bạn đến trong lúc học, đi chơi hay bất cứ khi nào trên đường đi làm về, trong xe buýt lúc rảnh rang. Thấy trên bảng quảng cáo chỉ dẫn, hay tờ báo đang đọc gặp từ lạ đem cuốn sách ra tra. Sau đó tận dụng học hiểu phát âm, cách sử dụng một từ mới. Như thế thường xuyên bạn đã xây dựng cho mình một kho từ vựng khổng lồ dễ dàng.

Tiếng hàn đối với bạn sẽ không còn nặng nề, mất thời gian như trước nữa. Việc chú trọng phát triển vốn từ vựng giờ đây chỉ cần bỏ vào túi thôi là bạn có thể tung tăng giao tiếp bất cứ đâu và một sự tự tin mọi nơi khi đã nắm chắc trong tay 5000 Từ Vựng Tiếng Hàn Thông Dụng của The Changmi Còn chần chừ gì nữa mà không đặt mua ngay cuốn sách tuyệt vời này nhé!')
insert into MotaSP VALUEs('SP065', N'TOPIK II - Thi Là Đậu là giáo trình cập nhật mới nhất về kỳ thi và các dạng đề TOPIK II. Giáo trình cũng đáp ứng đầy đủ nhất yêu cầu của người muốn học thi TOPIK, với những nội dung “Bí quyết giải đề”, “Giải thích Từ vựng và Ngữ pháp”, “Đề thi từng ra”, “Đề mẫu”, và “Chú giải”. Ngoài ra còn có “Sổ tay từ vựng” TOPIK với 3 ngôn ngữ Hàn, Anh, Việt chỉ có duy nhất trong giáo trình này.

TOPIK II - Thi Là Đậu là giáo trình không thể thiếu dành cho các đối tượng đang:

-    Học chuyên ngành liên quan đến Hàn Quốc học / Ngôn ngữ Hàn

-    Định đăng ký tuyển dụng vào công ty, cơ quan có liên quan đến Hàn Quốc

-    Đang làm việc tại công ty Hàn Quốc và muốn được tăng lương, thăng tiến

-    Định du học Hàn Quốc

-    Định sang làm việc, sinh sống tại Hàn Quốc')
insert into MotaSP VALUEs('SP066', N'Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay là bộ sách được sử dụng làm giáo trình chính thức của MasterKorean, chương trình đào tạo số 1 về tiếng Hàn tại Việt Nam. Bộ sách được chia thành hai trình độ: sơ cấp và trung cấp, với nhiều chủ đề đa dạng cùng hình ảnh sinh động, gắn liền với cuộc sống thường nhật.

Thông qua việc giới thiệu từ vựng và ngữ pháp, cung cấp các bài tập luyện nghe, nói, và hướng dẫn tự đánh giá trình độ trong sách, các bạn có thể tự học và củng cố vốn kiến thức tiếng Hàn theo cách dễ dàng và bài bản.

Chắc chắn Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay sẽ là bộ sách hữu ích dành cho các bạn đam mê tiếng Hàn và có nhu cầu muốn chinh phục ngôn ngữ này.')
insert into MotaSP VALUEs('SP067', N'Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay là bộ sách được sử dụng làm giáo trình chính thức của MasterKorean, chương trình đào tạo số 1 về tiếng Hàn tại Việt Nam. Bộ sách được chia thành hai trình độ: sơ cấp và trung cấp, với nhiều chủ đề đa dạng cùng hình ảnh sinh động, gắn liền với cuộc sống thường nhật.

Thông qua việc giới thiệu từ vựng và ngữ pháp, cung cấp các bài tập luyện nghe, nói, và hướng dẫn tự đánh giá trình độ trong sách, các bạn có thể tự học và củng cố vốn kiến thức tiếng Hàn theo cách dễ dàng và bài bản.

Chắc chắn Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay sẽ là bộ sách hữu ích dành cho các bạn đam mê tiếng Hàn và có nhu cầu muốn chinh phục ngôn ngữ này.')
insert into MotaSP VALUEs('SP068', N'Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay là bộ sách được sử dụng làm giáo trình chính thức của MasterKorean, chương trình đào tạo số 1 về tiếng Hàn tại Việt Nam. Bộ sách được chia thành hai trình độ: sơ cấp và trung cấp, với nhiều chủ đề đa dạng cùng hình ảnh sinh động, gắn liền với cuộc sống thường nhật.

Thông qua việc giới thiệu từ vựng và ngữ pháp, cung cấp các bài tập luyện nghe, nói, và hướng dẫn tự đánh giá trình độ trong sách, các bạn có thể tự học và củng cố vốn kiến thức tiếng Hàn theo cách dễ dàng và bài bản.

Chắc chắn Tiếng Hàn Ứng Dụng Học Nhanh, Thực Hành Ngay sẽ là bộ sách hữu ích dành cho các bạn đam mê tiếng Hàn và có nhu cầu muốn chinh phục ngôn ngữ này.')
insert into MotaSP VALUEs('SP069', N'Với tốc độ ảnh hưởng của văn hóa Hàn Quốc hiện nay, càng ngày càng có nhiều bạn có nhu cầu học tiếng Hàn giao tiếp. Tuy nhiên, các bạn thường  gặp phải khó khăn trong quá trình học từ đầu:

Nguyên tắc phát âm tiếng Hàn quá phức tạp
Không thể nghe được tiếng Hàn bởi sự phong phú về ngữ âm
Học tiếng Hàn khi đã trưởng thành là thử thách quá lớn
Khối lượng từ vựng quá lớn để thu nạp
Và hàng ngàn những lý do khác khiến bạn do dự có nên bắt đầu học hay không. Nhằm đáp ứng nhu cầu trở thành một tài liệu học cho người mới bắt đầu, cuốn sách Luyện nghe tiếng Hàn cho người mới bắt đầu ra đời giúp bạn giải quyết tất cả những vấn đề trên.

Cuốn sách Bứt Phá Điểm Thi Kỹ Năng Nghe Topik I có gì?

-  Phần mở đầu

Với trình độ dành cho người mới bắt đầu học tiếng Hàn, những kiến thức cơ bản cần được chú trọng, do đó, trong phần mở đầu, mỗi bài sẽ cung cấp những mẫu câu cơ bản và cách biểu hiện câu để người học dễ dàng nắm bắt nội dung bài học.

-  Bố cục

Mỗi bài bao gồm 12 câu hỏi. Phần mở đầu là các dạng câu hỏi ở mức độ dễ như nghe và liên kết các bức tranh phù hợp, nghe nội dung chọn đáp án và chọn câu sau. Những tình huống cơ bản và mức độ cơ bản giúp người đọc làm quen với cách phát âm tiếng Hàn và từ đó luyện phát âm cho riêng mình. Ngoài ra, trong giáo trình còn nhiều bài luyện nghe khác để người học có thể học tập củng cố thêm như nghe và chọn tranh, nghe và chọn đáp án đúng,…

-  Ngôn ngữ phong phú

Phần cuối mỗi bài đều có bảng từ vựng được dịch sang tiếng Anh, tiếng Nhật, tiếng Trung, giúp người đọc có thể tiếp cận các ngôn ngữ khác cùng lúc, đồng thời củng cố ngôn ngữ mà người học đã từng sử dụng.

-  Mỗi câu hỏi đều được đánh số tự động tránh nhầm lẫn và giúp người học nghe đi nghe lại trong quá trình học.

-  Lời giải và đáp án

Thông thường, có nhiều loại sách trên thị trường chỉ cung cấp cho người đọc đáp án mà không có lời giải cho đáp án. Với cuốn sách này, nhằm khắc phục những điểm yếu và nắm tâm lý người học, cuối sách là đáp án với lời giải chi tiết, không chỉ giúp bạn học kiểm tra kiến thức mà còn nắm chắc bản chất của kiến thức.

Cuốn sách dành cho những bạn có mong muốn nâng cao năng lực nghe ngôn ngữ tiếng Hàn của mình, đồng thời cũng là người bạn đồng hành cùng bạn học trong các kỳ thi năng lực tiếng Hàn.')
insert into MotaSP VALUEs('SP070', N'Đây là quyển từ vựng y học song ngữ Hàn - Việt đầu tiên tập hợp khá đầy đủ các khái niệm dịch tễ, tên các loại bệnh, triệu chứng, tên các loại thiết bị y tế, cơ quan y tế, hệ thống phòng ban của bệnh viện, cơ quan phòng chống dịch, phương pháp trị liệu, y học truyền thống và hiện đại...')
insert into MotaSP VALUEs('SP071', N'Bạn đã thử học giao tiếp tiếng Hàn bằng nhiều phương pháp ở nhiều trung tâm, qua nhiều thầy cô giáo nhưng trình độ của bạn vẫn không được cải thiện. Tư duy ngôn ngữ của bạn vẫn chưa được thay đổi, bạn có thể nghe hiểu nhưng không thể nói. Bạn phản xạ chậm làm người những người đối thoại phải mất nhiều thời gian để chờ đợi, đôi khi điều đó làm bạn giống như bị cô lập vì không hiểu những người xung quanh đang nói về chủ đề gì.

Mỗi ngày trôi qua bạn đều tự học tiếng Hàn nhưng học mãi mà trình độ vẫn “lẹt đẹt” chỉ vì những rào cản trên. Bạn có tin mỗi ngày bạn chỉ cần bỏ ra 15 phút, chỉ trong 3 tháng liên tục và đều đặn thực hiện là bạn có thể giao tiếp tiếng Hàn cơ bản? Cuốn sách 600 Câu Giao Tiếp Tiếng Hàn Thông Dụng sẽ giúp bạn làm điều đó.

Cuốn sách này bao gồm 26 bài học là 26 tình huống thiết thực trong cuộc sống giúp người nói biểu đạt được cảm xúc, suy nghĩ và thái độ của mình. Các bạn có thể bắt đầu học từ Bài 1 và học lần lượt từng chủ đề, hoặc các bạn có thể bắt đầu bằng bất cứ chủ đề nào bạn muốn, theo thứ tự bạn thích.

Mỗi bài được thiết kế gồm hai phần: các câu biểu hiện thường dùng và hội thoại kèm với file nghe giọng phát âm chuẩn của người bản ngữ. Các bạn hãy dành mỗi ngày 5 phút nghe và luyện tập nói thật to theo các câu giao tiếp, mỗi ngày dù chỉ học 5 câu giao tiếp thì chỉ trong 4 tháng các bạn sẽ thấy số lượng từ vựng, khả năng nghe cũng như phản ứng giao tiếp của bạn sẽ tăng lên đáng kể. Các bạn đừng ngần ngại và hãy tiến tới chủ động giao tiếp với người Hàn Quốc.')
insert into MotaSP VALUEs('SP072', N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Sơ Cấp 1 (Bản Đen Trắng)
 
Giáo trình tổng hợp tiếng Hàn sơ cấp 1
Giáo trình tiếng Hàn tổng hợp dành cho người Việt Nam – Sơ cấp 1 được biên soạn dành cho người  Việt Nam muốn học tiếng Hàn ở trình độ sơ cấp. Sách được biên soạn nhằm hướng tới việc sử dụng được trong các tiết học tiếng Hàn tại giảng đường đại học nên mỗi bài học được chia thành nhiều phần như: Lý thuyết cơ bản gồm từ vựng và cấu trúc ngữ pháp; phần luyện tập theo 4 kỹ năng giao tiếp như: Nghe – Nói – Đọc – Viết, phần luyện phát âm, phần tìm hiểu văn hóa…
Các chủ đề trong sách được sắp xếp một cách có hệ thống và liên quan chặt chẽ với nhau. Giáo trình tiếng Hàn tổng hợp được biên soạn kèm theo một cuốn sách bài tập hỗ trợ giúp người học ôn tập kỹ hơn và có thể luyện tập nâng cao trong những trường hợp cần thiết.')
insert into MotaSP VALUEs('SP073', N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Sách Bài Tập Sơ cấp 1
 
Giáo trình tiếng Hàn tổng hợp dành cho người Việt Nam – Sơ cấp 1 được biên soạn dành cho người  Việt Nam muốn học tiếng Hàn ở trình độ sơ cấp. Sách được biên soạn nhằm hướng tới việc sử dụng được trong các tiết học tiếng Hàn tại giảng đường đại học nên mỗi bài học được chia thành nhiều phần như: Lý thuyết cơ bản gồm từ vựng và cấu trúc ngữ pháp; phần luyện tập theo 4 kỹ năng giao tiếp như: Nghe – Nói – Đọc – Viết, phần luyện phát âm, phần tìm hiểu văn hóa…
Các chủ đề trong sách được sắp xếp một cách có hệ thống và liên quan chặt chẽ với nhau. Giáo trình tiếng Hàn tổng hợp được biên soạn kèm theo một cuốn sách bài tập hỗ trợ giúp người học ôn tập kỹ hơn và có thể luyện tập nâng cao trong những trường hợp cần thiết.')
insert into MotaSP VALUEs('SP074', N'Nhằm xây dựng lộ trình phù hợp cho bạn học và tiếp nối sự thành công của hai cuốn giáo trình sơ cấp, giáo trình Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Trung Cấp 3 (Phiên bản mới) chính thức được ra mắt. Cuốn sách là cẩm nang không thể thiếu đối với người học tiếng Hàn hiện nay.

•  Đối tượng: Dành cho các bạn đã học qua trình độ sơ cấp củng cố, nâng cao kiến thức của mình.

•  Giúp bạn tiệm cận với tiếng Hàn ở một cấp độ cao hơn, kiến thức cũng được đào sâu hơn nhưng vẫn đảm bảo nội dung phù hợp và thuận tiện nhất cho người học.

•  Học hết trình độ Trung cấp tương đương đạt trình độ TOPIK cấp 3

•  Tặng kèm APP học online học mọi lúc mọi nơi trên tất cả thiết bị di động, máy tính.')
insert into MotaSP VALUEs('SP075', N'Tiếng Hàn Tổng Hợp Dành Cho Người Việt Nam - Sách Bài Tập Sơ cấp 3
 
Giáo trình tiếng Hàn tổng hợp dành cho người Việt Nam – Sơ cấp 1 được biên soạn dành cho người  Việt Nam muốn học tiếng Hàn ở trình độ sơ cấp. Sách được biên soạn nhằm hướng tới việc sử dụng được trong các tiết học tiếng Hàn tại giảng đường đại học nên mỗi bài học được chia thành nhiều phần như: Lý thuyết cơ bản gồm từ vựng và cấu trúc ngữ pháp; phần luyện tập theo 4 kỹ năng giao tiếp như: Nghe – Nói – Đọc – Viết, phần luyện phát âm, phần tìm hiểu văn hóa…
Các chủ đề trong sách được sắp xếp một cách có hệ thống và liên quan chặt chẽ với nhau. Giáo trình tiếng Hàn tổng hợp được biên soạn kèm theo một cuốn sách bài tập hỗ trợ giúp người học ôn tập kỹ hơn và có thể luyện tập nâng cao trong những trường hợp cần thiết.')
insert into MotaSP VALUEs('SP076', N'301 Câu Đàm Thoại Tiếng Hoa Bản Chữ Phồn Thể. Giáo Trình Tiếng Trung Quốc Cho Người Nước Ngoài Phổ Biến Nhất Thế Giới.

Xin trân trọng giới thiệu!')
insert into MotaSP VALUEs('SP077', N'Đột Phá Từ Vựng Hán Ngữ Quốc Tế HSK - Trình Độ B
Học từ vựng, có hai điều khó, khó nhớ và khó sử dụng. Khó nhớ, vì lượng từ vựng quá lớn, học trước quên sau, chỉ nhớ lơ mơ, tưởng hiểu là lại hoá không. Khó sử dụng tức là dù đã nhớ từ nhưng khi dùng đến thì lại lóng ngóng. Vì thế, phần lớn người học dù đã bỏ ra rất nhiều thời gian và công sức nhưng vẫn lúng túng hoặc học không hiệu quả trước một khối lượng từ vựng khổng lồ như vậy.

Cuốn sách này đã phân loại, chú giải 8822 đơn vị từ vựng đã được quy định trong quyển "Đại cương phân loại từ vựng và chữ Hán để đánh giá trình độ Hán ngữ", giúp người học nắm rõ quy luật từ vựng trong HSK một cách hệ thống. Trên cơ sở nhớ và hiểu ý nghĩa của từ người học sẽ nắm rõ cách dùng từ, khắc phục những khó khăn trong khi học từ vựng, đạt kết quả cao trong các kỳ thi Hán ngữ Quốc tế HSK.

Cuốn sách này được biên soạn dựa trên ba nguyên tắc sau:
Thứ nhất: làm nổi bật đặc trưng ngữ pháp của từ, trên cơ sở hiểu ngữ pháp, nắm vững cách sử dụng.
Thứ hai: Làm nổi bật những điểm khó và điểm quan trọng để nâng cao hiệu quả học tập.
Thứ ba: Tăng cường phần bài tập để củng cố kiến thức.')
insert into MotaSP VALUEs('SP078', N'Học từ vựng, có hai điều khó, khó nhớ và khó sử dụng. Khó nhớ, vì lượng từ vựng quá lớn, học trước quên sau, chỉ nhớ lơ mơ, tưởng hiểu là lại hoá không. Khó sử dụng tức là dù đã nhớ từ nhưng khi dùng đến thì lại lóng ngóng. Vì thế, phần lớn người học dù đã bỏ ra rất nhiều thời gian và công sức nhưng vẫn lúng túng hoặc học không hiệu quả trước một khối lượng từ vựng khổng lồ như vậy.

Cuốn sách này đã phân loại, chú giải 8822 đơn vị từ vựng đã được quy định trong quyển "Đại cương phân loại từ vựng và chữ Hán để đánh giá trình độ Hán ngữ", giúp người học nắm rõ quy luật từ vựng trong HSK một cách hệ thống. Trên cơ sở nhớ và hiểu ý nghĩa của từ người học sẽ nắm rõ cách dùng từ, khắc phục những khó khăn trong khi học từ vựng, đạt kết quả cao trong các kỳ thi Hán ngữ Quốc tế HSK.

Cuốn sách này được biên soạn dựa trên ba nguyên tắc sau:

- Thứ nhất: làm nổi bật đặc trưng ngữ pháp của từ, trên cơ sở hiểu ngữ pháp, nắm vững cách sử dụng.
- Thứ hai: Làm nổi bật những điểm khó và điểm quan trọng để nâng cao hiệu quả học tập.
- Thứ ba: Tăng cường phần bài tập để củng cố kiến thức.')
insert into MotaSP VALUEs('SP079', N'Học từ vựng,có hai cái khó, khó nhớ và khó sử dụng. Khó nhớ, vì lượng từ vựng quá lớn, học trước quên sau, chỉ nhớ lơ mơ, tưởng hiểu mà lại hoá không. Khó sử dụng tức là dù đã nhớ từ nhưng khi dùng đến thì lại lóng ngóng. Vì thế, phần lớn người học dù đã bỏ ra rất nhiều thời gian và công sức nhưng vẫn lúng túng hoặc học không hiệu quả trước một khối lượng từ vựng khổng lồ như vậy.

Cuốn sách này đã phân loại, chú giải 8822 đơn vị từ vựng đã được quy định trong quyển " Đại cương phân loại từ vựng và chữ Hán để đánh giá trình độ Hán ngữ", giúp người đọc nắm rõ quy luật từ vựng trong HSK một cách hệ thống. Trên cơ sở nhớ và hiểu ý nghĩa của từ người học sẽ nắm rõ cách dùng từ, khắc phục những khó khăn trong khi học từ vựng, đạt kết quả cao trong các kỳ thi Hán ngữ Quốc tế HSK.

Cuốn sách này được biên soạn dựa trên ba nguyên tắc sau:

- Nguyên tác thứ nhất: làm nổi bật đặc trưng ngữ pháp của từ, trên cơ sở hiểu ngữ pháp, nắm vững cách sử dụng. Cuốn sách này dựa vào đặc trưng ngữ pháp để phân loại từ vựng, giúp cho người học hiểu được vị trí của từ trong câu, phương thức và điều kiện tổ hợp giữa các đơn vị từ với nhau.

- Nguyên tắc hứ hai: làm nổi bật những điểm khó và điểm quan trọng để nâng cao hiệu quả học tập. Để tránh học từ mới một cách lan man theo kiểu từ điển, tạo điều kiện cho người học dễ ghi nhớ và nâng cao hiệu quả học tập, tác giả dùng những câu ví dụ ngắn gọn, cô đọng để giải thích những từ ngữ hay nét nghĩa mà HSK thường đề cập đến nhưng khó sử dụng hoặc khó lí giải. Cụ thể gồm 3 loại sau:

+ Loại thứ nhất: Là nhóm từ mang ý nghĩa so sánh hoặc có nghĩa bóng
+ Loại thứ hai: Là những từ đa nghĩa
+ Loại thứ ba: Những từ khó sử dụng, phần lớn là các từ thuộc nhóm giới từ, phó từ, trợ động từ và các từ thuộc nhóm từ li hợp, thành ngữ, quán ngữ...

- Nguyên rắc thứ ba: tăng cường phần bài tập để củng cố kiến thức. Sau mỗi phần lý thuyết đều có bố trí một số bài tập ngắn, được chọn lọc kỹ để người học kịp thời củng cố lại kiến thức vừa học. Nếu người học chăm chỉ làm đầy đủ các bài tập trong cuốn sách này thì sẽ nắm chắc được các điểm ngữ pháp trong HSK.')
insert into MotaSP VALUEs('SP080', N'Ngày nay, rất nhiều quốc gia và khu vực trên thế giới có ngôn ngữ mẹ đẻ không phải tiếng Trung đã đưa ngôn ngữ này vào hệ thống giáo dục quốc dân. Vì vậy, số học sinh bậc tiểu học và trung học ở những nơi đó theo học tiếng Trung có xu hướng ngày càng tăng. Để giúp các em làm tốt bài thi YCT (Youth Chinese Test) – bài kiểm tra chuẩn ở cấp độ quốc tế về trình độ tiếng Trung, chúng tôi đã biên soạn bộ sách Hướng dẫn học và thi YCT.

Với nguyên tắc kết hợp giảng dạy và kiểm tra, chúng tôi đã trình bày cụ thể những kiến thức và kỹ năng học sinh cần nắm vững tương ứng với yêu cầu ở từng cấp độ. Không chỉ cung cấp phương pháp giảng dạy và học tập hiệu quả cho cả giáo viên và học sinh, bộ sách còn chú trọng đến sự phát triển toàn diện của học sinh, vừa giúp các em rèn luyện kỹ năng sử dụng tiếng Trung vừa giúp các em hình thành thói quen, thái độ tích cực và phát triển trí tuệ về nhiều mặt. Chắc chắn với tài liệu này, các em học sinh có thể học tiếng Trung một cách hệ thống để hoàn thành tốt bài thi YCT đồng thời nhanh chóng nâng cao kỹ năng giao tiếp bằng tiếng Trung.')
insert into MotaSP VALUEs('SP081', N'Ngày nay, rất nhiều quốc gia và khu vực trên thế giới có ngôn ngữ mẹ đẻ không phải tiếng Trung đã đưa ngôn ngữ này vào hệ thống giáo dục quốc dân. Vì vậy, số học sinh bậc tiểu học và trung học ở những nơi đó theo học tiếng Trung có xu hướng ngày càng tăng. Để giúp các em làm tốt bài thi YCT (Youth Chinese Test) – bài kiểm tra chuẩn ở cấp độ quốc tế về trình độ tiếng Trung, chúng tôi đã biên soạn bộ sách Hướng dẫn học và thi YCT.

Với nguyên tắc kết hợp giảng dạy và kiểm tra, chúng tôi đã trình bày cụ thể những kiến thức và kỹ năng học sinh cần nắm vững tương ứng với yêu cầu ở từng cấp độ. Không chỉ cung cấp phương pháp giảng dạy và học tập hiệu quả cho cả giáo viên và học sinh, bộ sách còn chú trọng đến sự phát triển toàn diện của học sinh, vừa giúp các em rèn luyện kỹ năng sử dụng tiếng Trung vừa giúp các em hình thành thói quen, thái độ tích cực và phát triển trí tuệ về nhiều mặt. Chắc chắn với tài liệu này, các em học sinh có thể học tiếng Trung một cách hệ thống để hoàn thành tốt bài thi YCT đồng thời nhanh chóng nâng cao kỹ năng giao tiếp bằng tiếng Trung.')
insert into MotaSP VALUEs('SP082', N'Ngày nay, rất nhiều quốc gia và khu vực trên thế giới có ngôn ngữ mẹ đẻ không phải tiếng Trung đã đưa ngôn ngữ này vào hệ thống giáo dục quốc dân. Vì vậy, số học sinh bậc tiểu học và trung học ở những nơi đó theo học tiếng Trung có xu hướng ngày càng tăng. Để giúp các em làm tốt bài thi YCT (Youth Chinese Test) – bài kiểm tra chuẩn ở cấp độ quốc tế về trình độ tiếng Trung, chúng tôi đã biên soạn bộ sách Hướng dẫn học và thi YCT.

Với nguyên tắc kết hợp giảng dạy và kiểm tra, chúng tôi đã trình bày cụ thể những kiến thức và kỹ năng học sinh cần nắm vững tương ứng với yêu cầu ở từng cấp độ. Không chỉ cung cấp phương pháp giảng dạy và học tập hiệu quả cho cả giáo viên và học sinh, bộ sách còn chú trọng đến sự phát triển toàn diện của học sinh, vừa giúp các em rèn luyện kỹ năng sử dụng tiếng Trung vừa giúp các em hình thành thói quen, thái độ tích cực và phát triển trí tuệ về nhiều mặt. Chắc chắn với tài liệu này, các em học sinh có thể học tiếng Trung một cách hệ thống để hoàn thành tốt bài thi YCT đồng thời nhanh chóng nâng cao kỹ năng giao tiếp bằng tiếng Trung.')
insert into MotaSP VALUEs('SP083', N'Ngày nay, rất nhiều quốc gia và khu vực trên thế giới có ngôn ngữ mẹ đẻ không phải tiếng Trung đã đưa ngôn ngữ này vào hệ thống giáo dục quốc dân. Vì vậy, số học sinh bậc tiểu học và trung học ở những nơi đó theo học tiếng Trung có xu hướng ngày càng tăng. Để giúp các em làm tốt bài thi YCT (Youth Chinese Test) – bài kiểm tra chuẩn ở cấp độ quốc tế về trình độ tiếng Trung, chúng tôi đã biên soạn bộ sách Hướng dẫn học và thi YCT.

Với nguyên tắc kết hợp giảng dạy và kiểm tra, chúng tôi đã trình bày cụ thể những kiến thức và kỹ năng học sinh cần nắm vững tương ứng với yêu cầu ở từng cấp độ. Không chỉ cung cấp phương pháp giảng dạy và học tập hiệu quả cho cả giáo viên và học sinh, bộ sách còn chú trọng đến sự phát triển toàn diện của học sinh, vừa giúp các em rèn luyện kỹ năng sử dụng tiếng Trung vừa giúp các em hình thành thói quen, thái độ tích cực và phát triển trí tuệ về nhiều mặt. Chắc chắn với tài liệu này, các em học sinh có thể học tiếng Trung một cách hệ thống để hoàn thành tốt bài thi YCT đồng thời nhanh chóng nâng cao kỹ năng giao tiếp bằng tiếng Trung.')
insert into MotaSP VALUEs('SP084', N'Quyển sách này là "Quyển sơ cấp đầu tiên" - một bộ phận trong hệ thống "Giáo trình Hán ngữ Boya" sơ cấp, một cuốn sách đầy tinh tế và chọn lọc, cung cấp cho người học ở trình độ xuất phát một lượng kiến thức cơ bản về từ ngữ và các hạng mục ngữ pháp sơ cấp. Giáo trình này có thể nhanh chóng nâng cao trình độ của người học, như tăng lượng từ hội, củng cố tri thức, dùng ngữ pháp sâu hơn và nâng cao khả năng giao tiếp.

Trọng tâm của cuốn sách là công năng huấn luyện ngôn ngữ và tuyển chọn ngữ liệu tự nhiên xoay quanh sự hứng thú của người học. Trong đó công năng huấn luyện ngôn ngữ gồm những loại như trần thuật, miêu tả, thuyết minh và luận thuật. Và mỗi công năng liên quan tới nhiều mặt: ví dụ như công năng trần thuật bao gồm : trần thuật sự trải nghiệm học tập của bản thân, trải nghiệm tìm việc trần thuật sự việc theo tuần tự thời gian, trần thuật kết hợp với bình luận...

Cuốn sách "Giáo trình Hán ngữ Boya sơ cấp" gồm 2 quyển (sơ cấp I và II), mỗi phần chia lầm nhiều chủ đề (đơn nguyên), mỗi chủ đề sẽ có các bài học. Trước mỗi chủ đề sẽ có phần ôn tập giúp người đọc nhớ lại kiến thức bài cũ. Sau mỗi chủ đề là bài tập để người đọc luyện tập và thực hành. Nội dung các bài trong mỗi chủ đề có liên quan đến nhau. Điểm ngôn ngữ của các bài bao gồm: Giải thích giản yếu, Câu ví dụ và Bài tập, mỗi điểm ngôn ngữ yêu cầu học sinh căn cứ vào câu ví dụ tổng kết quy luật kết cấu rồi điền vào chỗ trống sau các câu ví dụ.

Bài tập của các chủ đề gồm nhiều tầng kiến thức, từ kết cấu âm tiết chữ Hán, ngữ tố, từ hội cho đến các bài văn, giúp học sinh củng cố, hấp thu và vận dụng kết cấu ngôn ngữ của chủ đề. Phần cuối mỗi chủ đề đều có bài đọc và viết bài tập. Bài đọc tái hiện từ hội và điểm ngôn ngữ trong mỗi chủ đề. Chủ yếu là luyện tập năng lực viết bài cho học sinh, ngoài ra còn luyện cho học sinh kỹ năng ứng dụng kết cấu ngôn ngữ trong mỗi chủ đề.')
insert into MotaSP VALUEs('SP085', N'Quyển sách này là "Quyển sơ cấp thứ hai" - một bộ phận trong hệ thống "Giáo trình Hán ngữ Boya" sơ cấp, một cuốn sách đầy tinh tế và chọn lọc, cung cấp cho người học ở trình độ xuất phát một lượng kiến thức cơ bản về từ ngữ và các hạng mục ngữ pháp sơ cấp. Giáo trình này có thể nhanh chóng nâng cao trình độ của người học, như tăng lượng từ hội, củng cố tri thức, dùng ngữ pháp sâu hơn và nâng cao khả năng giao tiếp.

Trọng tâm của cuốn sách là công năng huấn luyện ngôn ngữ và tuyển chọn ngữ liệu tự nhiên xoay quanh sự hứng thú của người học. Trong đó công năng huấn luyện ngôn ngữ gồm những loại như trần thuật, miêu tả, thuyết minh và luận thuật. Và mỗi công năng liên quan tới nhiều mặt: ví dụ như công năng trần thuật bao gồm : trần thuật sự trải nghiệm học tập của bản thân, trải nghiệm tìm việc trần thuật sự việc theo tuần tự thời gian, trần thuật kết hợp với bình luận...

Cuốn sách "Giáo trình Hán ngữ Boya sơ cấp" gồm 2 quyển (sơ cấp I và II), mỗi phần chia lầm nhiều chủ đề (đơn nguyên), mỗi chủ đề sẽ có các bài học. Trước mỗi chủ đề sẽ có phần ôn tập giúp người đọc nhớ lại kiến thức bài cũ. Sau mỗi chủ đề là bài tập để người đọc luyện tập và thực hành. Nội dung các bài trong mỗi chủ đề có liên quan đến nhau. Điểm ngôn ngữ của các bài bao gồm: Giải thích giản yếu, Câu ví dụ và Bài tập, mỗi điểm ngôn ngữ yêu cầu học sinh căn cứ vào câu ví dụ tổng kết quy luật kết cấu rồi điền vào chỗ trống sau các câu ví dụ.

Bài tập của các chủ đề gồm nhiều tầng kiến thức, từ kết cấu âm tiết chữ Hán, ngữ tố, từ hội cho đến các bài văn, giúp học sinh củng cố, hấp thu và vận dụng kết cấu ngôn ngữ của chủ đề. Phần cuối mỗi chủ đề đều có bài đọc và viết bài tập. Bài đọc tái hiện từ hội và điểm ngôn ngữ trong mỗi chủ đề. Chủ yếu là luyện tập năng lực viết bài cho học sinh, ngoài ra còn luyện cho học sinh kỹ năng ứng dụng kết cấu ngôn ngữ trong mỗi chủ đề.')
insert into MotaSP VALUEs('SP086', N'Quyển sách này là "Quyển sơ cấp đầu tiên" - một bộ phận trong hệ thống "Giáo trình Hán ngữ Boya" sơ cấp, một cuốn sách đầy tinh tế và chọn lọc, cung cấp cho người học ở trình độ xuất phát một lượng kiến thức cơ bản về từ ngữ và các hạng mục ngữ pháp sơ cấp. Giáo trình này có thể nhanh chóng nâng cao trình độ của người học, như tăng lượng từ hội, củng cố tri thức, dùng ngữ pháp sâu hơn và nâng cao khả năng giao tiếp.

Trọng tâm của cuốn sách là công năng huấn luyện ngôn ngữ và tuyển chọn ngữ liệu tự nhiên xoay quanh sự hứng thú của người học. Trong đó công năng huấn luyện ngôn ngữ gồm những loại như trần thuật, miêu tả, thuyết minh và luận thuật. Và mỗi công năng liên quan tới nhiều mặt: ví dụ như công năng trần thuật bao gồm : trần thuật sự trải nghiệm học tập của bản thân, trải nghiệm tìm việc trần thuật sự việc theo tuần tự thời gian, trần thuật kết hợp với bình luận...

Cuốn sách "Giáo trình Hán ngữ Boya sơ cấp" gồm 2 quyển (sơ cấp I và II), mỗi phần chia lầm nhiều chủ đề (đơn nguyên), mỗi chủ đề sẽ có các bài học. Trước mỗi chủ đề sẽ có phần ôn tập giúp người đọc nhớ lại kiến thức bài cũ. Sau mỗi chủ đề là bài tập để người đọc luyện tập và thực hành. Nội dung các bài trong mỗi chủ đề có liên quan đến nhau. Điểm ngôn ngữ của các bài bao gồm: Giải thích giản yếu, Câu ví dụ và Bài tập, mỗi điểm ngôn ngữ yêu cầu học sinh căn cứ vào câu ví dụ tổng kết quy luật kết cấu rồi điền vào chỗ trống sau các câu ví dụ.

Bài tập của các chủ đề gồm nhiều tầng kiến thức, từ kết cấu âm tiết chữ Hán, ngữ tố, từ hội cho đến các bài văn, giúp học sinh củng cố, hấp thu và vận dụng kết cấu ngôn ngữ của chủ đề. Phần cuối mỗi chủ đề đều có bài đọc và viết bài tập. Bài đọc tái hiện từ hội và điểm ngôn ngữ trong mỗi chủ đề. Chủ yếu là luyện tập năng lực viết bài cho học sinh, ngoài ra còn luyện cho học sinh kỹ năng ứng dụng kết cấu ngôn ngữ trong mỗi chủ đề.')
insert into MotaSP VALUEs('SP087', N'Quyển sách này là "Quyển sơ cấp thứ hai" - một bộ phận trong hệ thống "Giáo trình Hán ngữ Boya" sơ cấp, một cuốn sách đầy tinh tế và chọn lọc, cung cấp cho người học ở trình độ xuất phát một lượng kiến thức cơ bản về từ ngữ và các hạng mục ngữ pháp sơ cấp. Giáo trình này có thể nhanh chóng nâng cao trình độ của người học, như tăng lượng từ hội, củng cố tri thức, dùng ngữ pháp sâu hơn và nâng cao khả năng giao tiếp.

Trọng tâm của cuốn sách là công năng huấn luyện ngôn ngữ và tuyển chọn ngữ liệu tự nhiên xoay quanh sự hứng thú của người học. Trong đó công năng huấn luyện ngôn ngữ gồm những loại như trần thuật, miêu tả, thuyết minh và luận thuật. Và mỗi công năng liên quan tới nhiều mặt: ví dụ như công năng trần thuật bao gồm : trần thuật sự trải nghiệm học tập của bản thân, trải nghiệm tìm việc trần thuật sự việc theo tuần tự thời gian, trần thuật kết hợp với bình luận...

Cuốn sách "Giáo trình Hán ngữ Boya sơ cấp" gồm 2 quyển (sơ cấp I và II), mỗi phần chia lầm nhiều chủ đề (đơn nguyên), mỗi chủ đề sẽ có các bài học. Trước mỗi chủ đề sẽ có phần ôn tập giúp người đọc nhớ lại kiến thức bài cũ. Sau mỗi chủ đề là bài tập để người đọc luyện tập và thực hành. Nội dung các bài trong mỗi chủ đề có liên quan đến nhau. Điểm ngôn ngữ của các bài bao gồm: Giải thích giản yếu, Câu ví dụ và Bài tập, mỗi điểm ngôn ngữ yêu cầu học sinh căn cứ vào câu ví dụ tổng kết quy luật kết cấu rồi điền vào chỗ trống sau các câu ví dụ.

Bài tập của các chủ đề gồm nhiều tầng kiến thức, từ kết cấu âm tiết chữ Hán, ngữ tố, từ hội cho đến các bài văn, giúp học sinh củng cố, hấp thu và vận dụng kết cấu ngôn ngữ của chủ đề. Phần cuối mỗi chủ đề đều có bài đọc và viết bài tập. Bài đọc tái hiện từ hội và điểm ngôn ngữ trong mỗi chủ đề. Chủ yếu là luyện tập năng lực viết bài cho học sinh, ngoài ra còn luyện cho học sinh kỹ năng ứng dụng kết cấu ngôn ngữ trong mỗi chủ đề.')
insert into MotaSP VALUEs('SP088', N'Giáo Trình Hán Ngữ Boya Trung Cấp 2 - Tập 1 còn được gọi là “quyển đột phá” - là cuốn giáo trình đọc hiểu nâng cao được biên soạn dành cho đối tượng Hán ngữ giai đoạn trung cấp tăng tốc bứt phá hướng lên giai đoạn cao cấp. Với cuốn sách này sẽ giúp các bạn:

• Cung cấp cho người học tiếng Hán giai đoạn trung cao cấp nguồn tài liệu học tập với nội dung phong phú, đa dạng, sinh động thú vị, hoàn toàn phù hợp với quy luật học tập ngôn ngữ của học sinh ở các giai đoạn này.

• Thông qua việc học và nắm nội dung bài khóa, bài đọc thêm, từ vựng, giúp người học có thể tăng vốn từ vựng của mình lên đến khoảng 5500 - 6000 từ.

• Cùng với việc nắm các kết cấu ngữ pháp tiếng Hán ở giai đoạn trung cao cấp còn giúp người học củng cố và nắm vững hơn những điểm ngữ pháp khó ở giai đoạn sơ trung cấp.

• Giúp người học dần dần nắm được các kỹ năng về biểu đạt thành đoạn khi tường thuật, miêu tả, ủng hộ hay phản bác một vấn đề nào đó bằng tiếng Hán.

• Thông qua việc học ngôn ngữ giúp người học có cơ hội tiếp xúc và tìm hiểu yếu tố văn hóa nội hàm trong lối tư duy của người Trung Quốc.

• Đặt nền tảng vững chắc cho người học chuẩn bị tham gia kỳ thi tiếng Hán cao cấp sau này.

• Thuận tiện cho giáo viên và những người tự học tiếng Hán trong quá trình giảng dạy và tự học. Ví dụ khi giáo viên chuẩn bị giảng bài thì các nội dung cần thiết như giải thích từ đều được liệt kê cụ thể trong giáo trình, ngay cả những giáo viên lần đầu sử dụng giáo trình cũng không mất nhiều thời gian để chuẩn bị bài.')
insert into MotaSP VALUEs('SP089', N'Đề cương và đề thi mẫu của HanBan là tài liệu chuẩn để thí sinh ôn luyện, giáo viên và các trường giảng dạy cho kỳ thi HSK. Nó cũng dùng để định hướng cho các tác giả, nhà xuất bản và các đơn vị biên soạn và xuất bản các loại sách cho kỳ thi này.

Bộ sách này được biên soạn theo sát đề cương mới nhất của HanBan. Sách giới thiệu chi tiết từng nội dung thi với các ưu điểm sau:

- Đặc điểm dạng đề

- Những lỗi thường gặp ở từng dạng đề

- Hệ thống hóa và phân tích chi tiết các trọng điểm thi

- Cách thức, kỹ xảo làm bài

- Ví dụ kèm theo phân tích chi tiết từng trọng điểm thi

Sách kèm theo 2 MP3 CD chứa các bài nghe trong sách và 20 đề thi thật

Sách được hỗ trợ từ trang www.haihasg.com với một kho tri thức HSK cũng như Hán ngữ lớn.')
insert into MotaSP VALUEs('SP090', N'Đề cương và đề thi mẫu của HanBan là tài liệu chuẩn để thí sinh ôn luyện, giáo viên và các trường giảng dạy cho kỳ thi HSK. Nó cũng dùng để định hướng cho các tác giả, nhà xuất bản và các đơn vị biên soạn và xuất bản các loại sách cho kỳ thi này.

Bộ sách này được biên soạn theo sát đề cương mới nhất của HanBan. Sách giới thiệu chi tiết từng nội dung thi với các ưu điểm sau:

- Đặc điểm dạng đề

- Những lỗi thường gặp ở từng dạng đề

- Hệ thống hóa và phân tích chi tiết các trọng điểm thi

- Cách thức, kỹ xảo làm bài

- Ví dụ kèm theo phân tích chi tiết từng trọng điểm thi

Sách kèm theo 2 MP3 CD chứa các bài nghe trong sách và 20 đề thi thật

Sách được hỗ trợ từ trang www.haihasg.com với một kho tri thức HSK cũng như Hán ngữ lớn.')

-------------------------------------------
insert into MotaSP VALUEs('SP091', N'Hộp Bút Gel MR3 BL-MR3-F-HT-L
 
Phong cách mới đến và đi, nhưng phong cách hoài luôn là một chủ đề hot trong thời trang.
Tình yêu sâu sắc của màu pastel và phong cách rực rỡ đã cho ra đời bộ sưu tập Bút Bi MR series 3: Họa tiết Retro ở giữa thân bút.
Bút viết êm mượt, mực ra đều, ngòi bút 0.7mm.
Sản phẩm đi kèm với hộp quà.')
insert into MotaSP VALUEs('SP092', N'Bút Bi Ký Cao Cấp GRANCE (Thân Xanh) BGRC-5SR-BLS-L

Bộ hộp đi kèm bút Grance là bộ MR-Series màu trắng, đen, hồng

Khi mua Bút bi ký cao cấp Grance (Thân Xanh) mực xanh  BGRC-5SR-SUZ-EX sẽ được tặng bộ phụ kiện:

- Hộp
- Thiệp
- Túi')
insert into MotaSP VALUEs('SP093', N'Bộ Chì Tô 36 Màu Nước Cao Cấp RENOIR 3120-48TN (Hộp Thiếc) là dòng sản phẩm mỹ thuật cao cấp sở hữu thiết kế tinh tế, phù hợp để vẽ, phác hoạ, tô màu hoặc đáp ứng các sở thích cá nhân khác.
Sản phẩm đáp ứng tiêu chuẩn chất lượng Châu Âu EN-71, sử dụng các nguyên liệu thân thiện với môi trường và không chứa chất độc hại. Thân bút Marco Renoir được tăng cường độ dày giúp chống gãy ruột bên trong. Do đó giúp tiết kiệm cho người dùng trong quá trình sử dụng.
- Thiết kế:
+ Chất màu có chất lượng tuyệt hảo, cho màu sắc tươi sáng và rực rỡ.
+ Phù hợp cho cả nghệ sĩ chuyên nghiệp, nghiệp dư và sở thích cá nhân.
+ Màu gốc vẫn được giữ nguyên khi tô đè lên màu khác.
+ Trở thành màu nước khi pha với nước.
+ Hộp màu thiết kế rất đẹp với màu đen quyến rũ cùng một bức tranh nghệ thuật mang phong cách Renoir.')
insert into MotaSP VALUEs('SP094', N'Jotter là biểu tượng thiết kế của Parker trong hơn 60 năm.
Với màu sắc thu hút và hình dáng khác biệt, Jotter là sản phẩm phổ biến nhất của Parker, có thể dễ dàng nhận ra ngay lập tức.
Đầu viết được sản xuất với chất lượng cao giúp nét chữ viết ra được sắc sảo, rõ nét.
Thiết kế thân viết thon gọn vừa vặn với tay cầm để không mỏi tay khi sử dụng, phối với gam màu đen huyền bí mang lại cho sản phẩm một vẻ đẹp kiêu sa, thu hút.
Hộp đựng kèm theo viết là một điểm nhấn sang trọng, tinh tế biến hộp viết thành một món quà thích hợp để tặng, biếu cho gia đình, bạn bè.')
insert into MotaSP VALUEs('SP095', N'THƯƠNG HIỆU:
Marco là thương hiệu bút chì màu nổi tiếng của Trung Quốc, sản phẩm đã có mặt trên 80 quốc gia và được đông đảo các họa sĩ bán chuyên yêu thích sử dụng.
 
ƯU ĐIỂM SẢN PHẨM:
- Có thể dùng màu dạng khô hay dạng nước.
- Bút chì màu nước với màu sắc lấp lánh, sáng mịn và bóng khi hoà tan trong nước.
- Bộ màu Cao Cấp Marco Raffine, với các tính năng nổi bật, sẽ làm hài lòng bất kỳ ai, dù đó có là họa sĩ khó tính nhất:
- Sản phẩm được làm từ chất liệu gỗ cao cấp. Vì thế, thân bút có khả năng chịu lực lớn, tạo nên những đường mài sắc nét, không những giúp cho tác phẩm của bạn vô cùng chân thực mà còn làm cho việc sử dụng bút tiết kiệm hơn.
- Tone chì rất chuẩn, độ đậm cao, độ mịn cùng màu sắc tươi sáng, đầy sống động, giúp gia tăng độ phủ đến 100%. Đặc biệt, bút rất dễ chuốt nhưng không gãy.
- Màu gốc vẫn được giữ nguyên khi tô đè lên màu khác, rất lí tưởng để trộn màu và vẽ nhiều lớp. Ngoài ra, có thể phối trộn để tạo bóng, tạo màu mới, highlight.
- Tuân thủ tiêu chuẩn an toàn Châu Âu, không chứa chất độc gây hại cho sức khỏe. Một sản phẩm được đánh giá là rất phù hợp cho nghệ sĩ nghiệp dư cùng các dòng sách Coloring books.
 
HƯỚNG DẪN CÁCH SỬ DỤNG:
Chì màu nước giúp người dùng dễ dàng sử dụng màu nước, đặc biệt hiệu quả để làm lan màu khi cần thể hiện sự chuyển đổi từ sắc màu này sang màu khác.
- Dùng bút chì màu nước vẽ bình thường. Bạn không cần vẽ chi tiết từng đường nét hay tô màu quá dày
- Làm ẩm cọ rồi quét lên phần vẽ chì trước đó để loang màu. Dùng đầu cọ càng lớn, vết loang càng rộng.')
insert into MotaSP VALUEs('SP096', N'Bộ Chì Tô 36 Màu Nước Cao Cấp RENOIR 3120-36TN (Hộp Thiếc) là dòng sản phẩm mỹ thuật cao cấp sở hữu thiết kế tinh tế, phù hợp để vẽ, phác hoạ, tô màu hoặc đáp ứng các sở thích cá nhân khác.
Sản phẩm đáp ứng tiêu chuẩn chất lượng Châu Âu EN-71, sử dụng các nguyên liệu thân thiện với môi trường và không chứa chất độc hại. Thân bút Marco Renoir được tăng cường độ dày giúp chống gãy ruột bên trong. Do đó giúp tiết kiệm cho người dùng trong quá trình sử dụng.
- Thiết kế:
+ Chất màu có chất lượng tuyệt hảo, cho màu sắc tươi sáng và rực rỡ.
+ Phù hợp cho cả nghệ sĩ chuyên nghiệp, nghiệp dư và sở thích cá nhân.
+ Màu gốc vẫn được giữ nguyên khi tô đè lên màu khác.
+ Trở thành màu nước khi pha với nước.
+ Hộp màu thiết kế rất đẹp với màu đen quyến rũ cùng một bức tranh nghệ thuật mang phong cách Renoir.')
insert into MotaSP VALUEs('SP097', N'Bút Lông Hai Đầu Marvy 1122

Dòng bút SIÊU PHẨM của Marvy, được giới hoạ sĩ amine Nhật Bản truyền tai nhau với tên gọi “ tam năng Marvy”. Nói thế bởi chỉ cần một chiếc Marvy 1122 nhỏ nhỏ, các anh chị bạn thích vẽ vời đã có đến ba dụng cụ để tha hồ bay bổng. Một đầu nhỏ để đi nét, một đầu lớn hơn để tô màu, và bên trong là một kho mực khủng lồ có khả năng hoà với nước để làm màu nước. Phong phú màu sắc, cưc kì tiện lợi là mục tiêu của MARVY 1122. Carmine với kiểu dáng đẹp, hình dáng thon gọn vừa tay cầm, thiết kế bút rất trang nhã và lịch thiệp, thích hợp cho học sinh sử dụng, hoặc làm quà tặng. Không chứa Xylene và Toluene, an toàn cho sức khỏe người tiêu dùng.

 

Kiểu dáng nhỏ gọn, đơn giản, vừa tay cầm, tay cầm không trơn, tiện cho việc sử dụng. Nắp bút thể hiện màu mực cho bạn lựa chọn dễ dàng.

Thiết kế kiểu 2 đầu, 1 đầu kim và 1 đầu lông.

Mực đảm bảo độ bền, không phai, không thấm nước, không chất độc hại, an toàn cho người sử dụng. Có nắp và thân được thiết kế theo tiêu chuẩn quốc tế, an toàn cho trẻ em khi sử dụng.

Bút với nhiều màu mực đa dạng khác nhau để bạn linh hoạt sử dụng. Lựa chọn cho mình cây bút có màu sắc phù hợp, tạo hiệu quả trong công việc của bạn.')
insert into MotaSP VALUEs('SP098', N'Bộ Chì Tô 48 Màu Cao Cấp Marco Raffine, với các tính năng nổi bật, sẽ làm hài lòng bất kỳ ai, dù đó có là họa sĩ khó tính nhất:
- Sản phẩm được làm từ chất liệu gỗ cao cấp. Vì thế, thân bút có khả năng chịu lực lớn, tạo nên những đường mài sắc nét, không những giúp cho tác phẩm của bạn vô cùng chân thực mà còn làm cho việc sử dụng bút tiết kiệm hơn.
- Tone chì rất chuẩn, độ đậm cao, độ mịn cùng màu sắc tươi sáng, đầy sống động, giúp gia tăng độ phủ đến 100%. Đặc biệt, bút rất dễ chuốt nhưng không gãy.
- Màu gốc vẫn được giữ nguyên khi tô đè lên màu khác, rất lí tưởng để trộn màu và vẽ nhiều lớp. Ngoài ra, có thể phối trộn để tạo bóng, tạo màu mới, highlight.
- Tuân thủ tiêu chuẩn an toàn Châu Âu, không chứa chất độc gây hại cho sức khỏe.
Một sản phẩm được đánh giá là rất phù hợp cho nghệ sĩ nghiệp dư cùng các dòng sách Coloring books.
Kiểu dáng cao cấp
Nhằm bảo quản tốt nhất, bộ chì màu được đựng trong hộp thiếc mang màu sắc cổ điển, in dấu vẻ độc đáo nhưng không kém phần sang trọng của sản phẩm.
Bộ Chì Tô 48 Màu Cao Cấp Marco Raffine với chất lượng tốt và mẫu mã đẹp, chắc chắn là một món quà ý nghĩa dành tặng cho con người nghệ sĩ trong bạn.
Sản phẩm được làm từ gỗ cứng có khả năng chịu lực lớn, tạo nên những đường mài sắc nét, giúp việc sử dụng bút tiết kiệm hơn.
48 bút chì màu được đựng trong hộp thiếc gọn gàng giúp bạn dễ bảo quản sau khi sử dụng.
Màu mực tươi sáng, độ mịn cao, giúp gia tăng độ phủ lên đến 100%.
Có thể phối trộn để tạo bóng, tạo màu mới, highlight.
Tiêu chuẩn ASTM - D - 4236  không chứa chất độc hại.')
insert into MotaSP VALUEs('SP099', N'Viết Bi Nước Vỏ Đen 186001

Viết bi nước với phần tay cầm bằng cao su công thái học và đầu bằng thép không gỉ chống mài mòn.

Thiết kế hiện đại với những đường cong nổi bật.

Được trang bị kẹp kim loại chắc chắn và hộp mực tiêu chuẩn có thể xóa được màu xanh tiêu chuẩn.

Thích hợp như nhau cho người thuận tay phải và tay trái.')
insert into MotaSP VALUEs('SP100', N'BLRL001 Ruột Mực Xanh Liah, Zeus
 
- Loại ruột bút: Ruột Bút Bi
- Chiều dài: 100 mm
- Đường kính ruột bút: 39 mm
- Ngòi bút: 0.7 mm (Size M)
- Màu mực: Xanh, Đen
- Ruột bút SCHMIDT: Sản xuất tại Đức
- Hàng chính hãng: Nhập khẩu Đức 100%
- Sử dụng cho dòng bút LIAH, ZEUS của BLUSaigon, hoặc các loại bút cùng loại khác')

--------------------------------------------
insert into MotaSP VALUEs('SP101', N'Máy Tính Casio Fx-880BTG - Màu Đen
 
Máy tính Casio fx-880BTG thuộc dòng máy tính khoa học ClassWiz của hãng máy tính CASIO. Máy tính Casio fx-880BTG đã ra đời với nhiều cải tiến về: thiết kế - giao diện, tính năng nổi trội và độ chính xác cao… để đáp ứng thực tiễn dạy và học tại Việt Nam, đồng thời thay đổi tư duy học tập lâu nay của học sinh.
 
Tính năng nổi bật:
 
QR Code hỗ trợ dạy và học
Bảng tính spreadsheet
Hộp toán học Math Box
Bảng tuần hoàn
Kiểm chứng
Gian diện mới với thao tác đơn giản hơn
Kết quả tính toán chính xác lên đến 23 chữ số
 
Tính năng cơ bản:
 
Kiểm tra số nguyên tố có 4 chữ số
Lưu phần thương và phần dư trong phép chia
Tính năng kiểm tra đúng/sai
Thông báo vô nghiệm khi giải phương trình bậc hai
Cực trị của hàm số bậc ba
Giải phương trình 4 ẩn
Giải phương trình bậc 4
Giải bất phương trình bậc 4
 
Được phép mang vào phòng thi từ thời gian tháng 8 năm 2022
 
Chính sách bảo hành 7 năm 1 đổi 1 trong năm đầu lỗi do nhà sản xuất
 
Xuất xứ: Thái Lan')
insert into MotaSP VALUEs('SP102', N'Máy Tính Casio Fx-880BTG - Màu Đen
 
Máy tính Casio fx-880BTG thuộc dòng máy tính khoa học ClassWiz của hãng máy tính CASIO. Máy tính Casio fx-880BTG đã ra đời với nhiều cải tiến về: thiết kế - giao diện, tính năng nổi trội và độ chính xác cao… để đáp ứng thực tiễn dạy và học tại Việt Nam, đồng thời thay đổi tư duy học tập lâu nay của học sinh.
 
Tính năng nổi bật:
 
QR Code hỗ trợ dạy và học
Bảng tính spreadsheet
Hộp toán học Math Box
Bảng tuần hoàn
Kiểm chứng
Gian diện mới với thao tác đơn giản hơn
Kết quả tính toán chính xác lên đến 23 chữ số
 
Tính năng cơ bản:
 
Kiểm tra số nguyên tố có 4 chữ số
Lưu phần thương và phần dư trong phép chia
Tính năng kiểm tra đúng/sai
Thông báo vô nghiệm khi giải phương trình bậc hai
Cực trị của hàm số bậc ba
Giải phương trình 4 ẩn
Giải phương trình bậc 4
Giải bất phương trình bậc 4
 
Được phép mang vào phòng thi từ thời gian tháng 8 năm 2022
 
Chính sách bảo hành 7 năm 1 đổi 1 trong năm đầu lỗi do nhà sản xuất
 
Xuất xứ: Thái Lan')
insert into MotaSP VALUEs('SP103', N'Máy Tính Casio Fx-880BTG - Màu Đen
 
Máy tính Casio fx-880BTG thuộc dòng máy tính khoa học ClassWiz của hãng máy tính CASIO. Máy tính Casio fx-880BTG đã ra đời với nhiều cải tiến về: thiết kế - giao diện, tính năng nổi trội và độ chính xác cao… để đáp ứng thực tiễn dạy và học tại Việt Nam, đồng thời thay đổi tư duy học tập lâu nay của học sinh.
 
Tính năng nổi bật:
 
QR Code hỗ trợ dạy và học
Bảng tính spreadsheet
Hộp toán học Math Box
Bảng tuần hoàn
Kiểm chứng
Gian diện mới với thao tác đơn giản hơn
Kết quả tính toán chính xác lên đến 23 chữ số
 
Tính năng cơ bản:
 
Kiểm tra số nguyên tố có 4 chữ số
Lưu phần thương và phần dư trong phép chia
Tính năng kiểm tra đúng/sai
Thông báo vô nghiệm khi giải phương trình bậc hai
Cực trị của hàm số bậc ba
Giải phương trình 4 ẩn
Giải phương trình bậc 4
Giải bất phương trình bậc 4
 
Được phép mang vào phòng thi từ thời gian tháng 8 năm 2022
 
Chính sách bảo hành 7 năm 1 đổi 1 trong năm đầu lỗi do nhà sản xuất
 
Xuất xứ: Thái Lan')
insert into MotaSP VALUEs('SP104', N'Máy Tính Casio FX580VN X thuộc dòng máy tính khoa học ClassWiz, được hãng máy tính Casio Nhật Bản sản xuất dành riêng cho nền giáo dục Việt. Sản phẩm tích hợp tới 521 tính năng, trong đó có rất nhiều tính năng mà các dòng máy tính khoa học trên thị trường hiện nay không có được.


Casio fx-580VN X được phép đưa vào phòng thi
Với mong muốn có một máy tính cầm tay phù hợp với học sinh, sinh viên Việt Nam, Casio đã cho ra đời fx-580VN X sau một thời gian dài nghiên cứu. Sản phẩm đã lọt vào danh sách những máy tính cầm tay được đưa vào phòng thi theo công văn số 1568/BGDĐT-CNTT ngày 19/4/2018.

Tốc độ xử lý nhanh gấp 4 lần, giảm thời gian tính toán xuống mức tối thiểu
So với các dòng máy tính cầm tay trên thị trường thì Casio fx-580VN X có tốc độ xử lý nhanh nhất, gấp 4 lần nhờ sở hữu bộ xử lý hiệu suất cao. Thời gian thực hiện phép tính giảm xuống thấp nhất, rất tiện dụng khi sử dụng trong lớp học và đặc biệt trong các kỳ thi trắc nghiệm.

521 tính năng, nhiều tính năng mà các máy tính khác không có
Trong danh sách những dòng máy tính được Bộ Giáo dục và Đào tạo cho phép sử dụng trong các kỳ thi đến thời điểm này thì Casio fx-580VN X là chiếc máy tính có nhiều tính năng nhất, lên tới 521 tính năng.


Trong đó, có rất nhiều tính năng mà các dòng máy tính trên thị trường chưa có được như:
- Giải phương trình bậc 4
- Giải bất phương trình bậc 4
- Giải hệ phương trình bậc nhất 4 ẩn
- 4 biến nhớ vectơ
- Liệt kê tối đa 45 dòng giá trị cho bảng tính table
- Tìm cực trị của hàm số bậc 3
- Kiểm tra số nguyên tố có 4 chữ số có Logarit và cơ số bất kỳ
- Báo vô nghiệm trong giải phương trình bậc 2
- Lưu thương và dư trong phép chia
- Kiểm tra đúng/sai…


Ngoài ra, máy tính Casio fx 580VN X nói riêng và dòng máy ClassWiz nói chung có chức năng hiệu suất cao mà các dòng khác không có được đó là 2 tính năng: sử dụng bảng tính và phép tính ma trận 4 x 4. Đây là chức năng mà hãng máy tính Casio mới cải tiến mang lại nhiều lợi ích vượt trội cho người dùng.
Từ khi Casio fx-580VN X ra đời, người dùng không cần phải tìm lại, xác nhận từng giá trị như các máy đời trước. Bởi “siêu phẩm” có thêm chức năng hiển thị danh sách các kết quả tính toán hàm và biến lưu trong bộ nhớ. Tính năng này vô cùng hữu dụng giúp rút gọn thời gian, giảm thao tác bấm nút và người dùng không phải nhớ quá nhiều giá trị trong khi làm toán.


Mua một lần, dùng nhiều cấp học
Máy tính Casio fx-580VN X giải được rất nhiều dạng toán thuộc các cấp học: Trung học cơ sở, trung học phổ thông và đại học.
Hỗ trợ đắc lực giải toán cao cấp ở đại học
Máy tính Casio fx 580VN X còn sở hữu năng lực điện toán cao có thể hỗ trợ nhiều phép toán cao cấp gồm:

Tính bảng tính: Rất hữu ích cho việc học thống kê một cách đơn giản. Chức năng này có thêm khả năng: nhập công thức đệ quy, áp dụng giả thuyết Riemann tính toán cao cấp.
Tính ma trận 4 x 4: một cách đơn giản và cho kết quả chính xác nhất. Còn các máy tính khác chỉ có thể giải được ma trận cấp 3, còn cấp 4 thì phải tính tay.
Tính phương trình với bốn ẩn số
Phương trình bậc hai
Khả năng tính phân phối thống kê nâng cao: không phải máy tính nào cũng có được như: Xác suất nhị thức; phân phối tích lũy nhị thức, mật độ xác suất bình thường, phân phối tích lũy chuẩn, phân phối tích lũy chuẩn nghịch đảo, xác suất Poisson, phân phối tích lũy Poisson…
Ngoài ra, máy tính Casio fx580VN X còn được tích hợp thêm tính năng tính tỷ lệ RATIO. Từ khi có Casio fx580 VNX bạn sẽ không cần phải tính tay các dạng toán, hóa có mức độ khó khá cao như: tính tỉ số, số mol, tam suất...
Dung lượng bộ nhớ lớn gấp 2 lần
Máy tính Casio fx 580VN X có dung lượng bộ nhớ lớn gấp 2 lần so với các dòng máy trước giúp tốc độ tính toán cực nhanh, chỉ trong tích tắc. Dung lượng bộ nhớ của siêu phẩm là một con số vô cùng ấn tượng, không phải chiếc máy tính khoa học cầm tay nào cũng có thể làm được.

Độ phân giải gấp 4 lần, hiển thị đầy đủ phép tính
Chưa dừng lại ở đó, “siêu phẩm kỳ thi” còn sở hữu màn hình LCD có độ phân giải 192 x 63 điểm, cao gấp 4 lần so với các dòng máy trước đó giúp hiển thị rõ ràng các hệ phương trình và nội dung. Người dùng rất dễ dàng xem công thức phép tính, biểu tượng toán học một cách dễ dàng và đầy đủ.
Sản phẩm có thể hiển thị số lượng ký tự gấp 2 lần ở kích thước bình thường và 6 lần ở kích thước nhỏ trên màn hình so với những dòng máy tính khoa học ES Plus trước đó.
Người dùng có thể dễ dàng nhìn thấy các phép toán hiển thị trên màn hình trong mọi điều kiện ánh sáng. Màn hình còn LCD tiêu tốn ít dung lượng pin, tối ưu góc xem thẳng phía trên. Màn hình có thể tạo ra hiệu ứng mờ để giúp người dùng hạn chế tình trạng mỏi mắt khi sử dụng lâu dài.
Chưa dừng lại ở đó, máy tính Casio fx580VN X được trang bị các chức năng bảng tính cơ bản, bạn có thể thao tác được bảng tính lên tới 5 cột, 45 hàng, chứa được tối đa 170 mục dữ liệu. Chức năng bảng tính này rất hiếm dòng máy hiện nay có được. Nhờ vậy bạn sẽ không phải lo lắng khi nhập phép tính quá dài hay khó đọc như các dòng máy đời trước, tăng hiệu quả tính toán nhất là trong các kỳ thi quan trọng.

Có ngôn ngữ tiếng Việt vô cùng tiện dụng
Vì là “siêu phẩm” dành riêng cho thế hệ học sinh, sinh viên Việt Nam nên máy tính Casio fx-580VN X có thêm phiên bản tiếng Việt.
Còn phiên bản tiếng Anh thì ở dạng đầy đủ chứ không viết tắt nên rất dễ hiểu, giúp nâng cao khả năng ngoại ngữ khi sử dụng máy. Màn hình menu được thể hiện bằng các icon dễ hiểu và chọn phép tính nhanh chóng hơn các dòng máy trước.

Chất liệu bề mặt cao cấp, vân nổi 3D
Thân máy Casio fx-580VN X được thiết kế theo phong cách thanh lịch, vỏ trượt chắc chắn. Các họa tiết hình học được phối màu tươi sáng vừa dễ nhìn lại tạo nên vẻ đẹp riêng cho sản phẩm.
Bàn phím được kiết hợp: phím làm bằng plastic cực nhạy và phím kim loại tạo cảm giác sang trọng, lại tăng độ bền.

Giao diện dễ hiểu nhưng kiểu dáng hiện đại, tiên tiến
Tất cả các ký hiểu, biểu tượng trên máy tính Casio fx-580VN X được hiển thị rõ ràng trên màn hình máy tính. Chỉ cần chọn biểu tượng trên menu, người dùng có thể dễ dàng chọn chức năng, chế độ mong muốn rất nhanh chóng hơn các dòng máy khác.
Các công thức toán học, các ký hiệu biểu tượng toán học trên Casio fx-580VN X có định dạng giống hệt với sách giáo khoa nên rất dễ hiểu. Đây là một cải tiến hoàn toàn mới của dòng máy ClassWiz so với dòng MS.


“Trợ thủ” phải đưa vào phòng thi nhất
Chính những tính năng nổi trội nên máy tính Casio fx-580VN X được đánh giá là công cụ nên đưa vào phòng thi nhất cho các môn toán, lý, hóa, sinh. Có Casio fx-580VN X, học sinh, sinh viên sẽ cảm thấy yên tâm, dễ dàng “gặt hái” điểm cao trong các kỳ thi quan trọng, nhất là thi trắc nghiệm.')
insert into MotaSP VALUEs('SP105', N'
Máy tính Casio fx-580VN X thuộc dòng máy tính khoa học ClassWiz của hãng máy tính CASIO. Máy được trang bị màn hình LCD có độ phân giải cao. Casio fx-580VN X là bước tiến đột phá, mang công nghệ đến gần hơn với lớp học. Độ phân giải của màn hình của Casio fx-580VN X được tăng gấp 4 lần, hỗ trợ tăng lượng thông tin hiển thị cũng như cải thiện tính tiện dụng của sản phẩm. Đây là chiếc máy tính khoa học có hiệu suất cao, tốc độ tính toán nhanh; phù hợp với nhiều cấp học từ học sinh, sinh viên. ')
insert into MotaSP VALUEs('SP106', N'Máy tính Casio fx-580VN X thuộc dòng máy tính khoa học ClassWiz, được hãng máy tính Casio Nhật Bản sản xuất dành riêng cho nền giáo dục Việt. Sản phẩm tích hợp tới 521 tính năng, trong đó có rất nhiều tính năng mà các dòng máy tính khoa học trên thị trường hiện nay không có được.')
insert into MotaSP VALUEs('SP107', N'- Tính toán số thập phân vô hạn tuần hoàn

- Phân tích thành thừa số nguyên tố

- Tìm thương và số dư của phép chia

- Tìm ƯCLN, BCNN

- Tìm tọa độ đỉnh Parabol trực tiếp trên máy

- Giải bất phương trình bậc 2, bậc 3

- Tính tích, tổng của dãy số

- Lưu nghiệm khi giải phương trình

- Hiển thị kết quả dưới dạng hỗn số, số thập phân, căn thức

- Tính logarit với cơ số bất kỳ

- Tính toán phân phối DIST

- Tính ma trận, thống kê')
insert into MotaSP VALUEs('SP108', N'Casio fx 570ES PLUS New là dòng máy tính mới nhất dành cho học sinh trung học. Bộ GD đã ra công văn xác nhận máy tính Casio fx 570ES PLUS New được phép mang vào phòng thi. Đây là dòng máy tính Casio được ưa chuộng nhất hiện nay với nhiều tính năng nổi trội, trong đó đáng chú ý nhất là khả năng hiển thị dạng biểu thức và căn bật 2 rất ưu việt.')
insert into MotaSP VALUEs('SP109', N'Máy Tính Casio FX-570MS
 
Máy tính bỏ túi Casio FX-570MS là thiết bị điên tử vô cùng thông minh tính toán nhanh chóng các phép tính cộng trừ nhân chia với các con sỗ phức tạp lên đến hàng ngàn, hàng triệu. Máy tính Casio FX-570MS có thiết kế nhỏ gọn, có thể dễ dàng cầm tay hoặc bỏ túi mang theo bất cứ đâu.
 
Ngoài ra, máy được chế tạo để dễ dàng thao tác, màn hình hiển thị lớn, có khả năng hiển thị tối đa 10 số giúp bạn đọc dữ liệu dễ dàng hơn, đảm bảo độ chính xác cao.
 
Máy tính Casio FX-570MS là loại máy tính chuyên dụng dành cho học sinh sinh viên. Máy tính FX-570MS hỗ trợ giải các phương trinh bậc 2, bậc 3, hay đa phương trình cao cấp cùng với các hàm đạo hàm cấp cao, các hàm lượng giác,...
 
Không chỉ vậy, máy tính Casio FX-570MS sử dụng cao su tốt để thiết kế phím bấm bền bỉ và chữ nổi hiện thị sắc nét, rõ ràng, giúp bạn có thể nhanh chóng tính toán. Bàn phím chắc chắn, hỗ trợ tính nhanh chóng các công thức toán học giúp bạn giải quyết các bài toán một cách dễ dàng.
 
Máy tính bỏ túi Casio FX-570MS thiết kế siêu mỏng, nhỏ gọn vừa với tầm tay cầm giúp thực hiện các phép tính, thao tác nhanh chóng và dễ dàng. Máy với màu đen sang trọng, hiện đại, phù hợp với nhiều đối tượng. Chân đế chống trơn trượt giúp máy có thể đứng vững trên mọi bề mặt vô cùng tiện dụng.')
insert into MotaSP VALUEs('SP110', N'Máy Tính Casio MS-20UC-BK

 Loại để bàn mini

- 12 chữ số

- Tự động tính toán giá cộng thuế, giá trừ thuế, khoản chiết khấu, giá bán, số tiền thuế, số tiền giảm giá và số tiền lãi.

- Phép tính thời gian cho phép dễ dàng nhập dữ liệu và tính các giá trị giờ, phút và giây.

- Nguồn hai chiều (Mặt trời + Pin): Chế độ sử dụng năng lượng mặt trời được bật khi đủ sáng, chế độ pin được bật khi không đủ sáng.

- Các biểu tượng lệnh hàm: Ký hiệu (+, -, ×, ÷) trên màn hình cho biết trạng thái của thao tác bạn hiện đang thực hiện.

- Nhấn đồng thời phím: Các thao tác phím được lưu trữ trong bộ nhớ đệm, nhờ vậy sẽ không bị mất dữ liệu ngay cả khi nhập với tốc độ cao.

- Màn hình cực lớn: Màn hình lớn hơn giúp đọc nhiều dữ liệu dễ dàng hơn.

- Các phím dẻo: Được thiết kế và chế tạo để dễ dàng thao tác.

- Phần trăm tỷ lệ lợi nhuận: Phím " % " cho phép truy cập nhanh vào giá và lợi nhuận đồng thời cung cấp các bổ trợ, chiết khấu, tỷ lệ và các giá trị tăng/giảm.')

---------------------------------------------
insert into MotaSP VALUEs('SP111', N'Milan thương hiệu văn phòng phẩm nổi tiếng và lâu đời ở Tây Ban Nha,  được thành lập từ năm 1918, là thương hiệu tiên phong trong việc kết hợp giữa tính tiện dụng và tính thẩm mỹ trong sản phẩm. Nhà cung cấp liên tục đa dạng hóa mẫu mã, cải tiến tính năng để đáp ứng nhu cầu của khách hàng. Điển hình là dòng sản phẩm gôm và cọ vẽ, Milan đã có hơn 200 mẫu thiết kế khác nhau. Mỗi năm, Milan phân phối hơn 5.000 sản phẩm đến 85 quốc gia trên thế giới, trong đó các khách hàng lớn nhất là Nhật Bản, EU, Việt Nam, Mỹ, Nga và Mexico.Hiện sản phẩm đang được phân phối tại hệ thống nhà sách Phương Nam.')
insert into MotaSP VALUEs('SP112', N'Túi Đeo Vải LM-50753
Mẫu túi thời trang  dành cho sinh viên, người đi làm, dân công sở, đi chơi, tập Gym, đi du lịch, đi mua sắm.
Mẫu túi  thời trang với kích thước chuẩn, thiết kế sang trọng phù hợp cho các bạn trẻ năng động.
Được làm từ chất liệu vải nhập khẩu không bị xù lông. Chất lượng in sắc nét, được may tỉ mỉ từng đường kim mũi chỉ giúp gia tăng tuổi thọ dài lâu khi sử dụng.
Là món phụ kiện thời trang sang trọng không thể thiếu của bạn trong các hoạt động hàng ngày.')
insert into MotaSP VALUEs('SP113', N'Túi Vải Trắng Đen Kariiou BD-4062-DL-2-3-4-5
Thiết kế đơn giản, thanh lịch thích hợp cho mọi lứa tuổi, đường may tỉ mỉ chắc chắn.
Chất liệu túi là chất liệu vải mềm nhẹ chắc chắn, thông thoáng rất tiện sử dụng.
Họa tiết trên sản phẩm thời trang, dễ thương, mầu sắc đa dang.
Phù hợp cho các chuyến đi chơi đi picsnic, du lịch ngắn ngày.')
insert into MotaSP VALUEs('SP114', N'Mẫu ba lô với thiết kế dễ thương với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
 
Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho bé.
 
Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
 
Quai đeo êm ái và chắc chắn luôn mang đến cho bé cảm giác thoải mái khi sử dụng.')
insert into MotaSP VALUEs('SP115', N'Thương hiệu: YO-ME

- Mẫu ba lô với thiết kế đơn giản với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
- Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho người sử dụng.
- Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
- Quai đeo êm ái và chắc chắn luôn mang đến cho bạn cảm giác thoải mái khi sử dụng.')
insert into MotaSP VALUEs('SP116', N'Thương hiệu: YO-ME

- Mẫu ba lô với thiết kế đơn giản với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
- Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho người sử dụng.
- Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
- Quai đeo êm ái và chắc chắn luôn mang đến cho bạn cảm giác thoải mái khi sử dụng.')
insert into MotaSP VALUEs('SP117', N'Thương hiệu: YO-ME

- Mẫu ba lô với thiết kế đơn giản với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
- Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho người sử dụng.
- Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
- Quai đeo êm ái và chắc chắn luôn mang đến cho bạn cảm giác thoải mái khi sử dụng.')
insert into MotaSP VALUEs('SP118', N'Thương hiệu: YO-ME

- Mẫu ba lô với thiết kế đơn giản với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
- Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho người sử dụng.
- Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
- Quai đeo êm ái và chắc chắn luôn mang đến cho bạn cảm giác thoải mái khi sử dụng.')
insert into MotaSP VALUEs('SP119', N'Thương hiệu: YO-ME

- Mẫu ba lô với thiết kế đơn giản với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
- Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho người sử dụng.
- Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
- Quai đeo êm ái và chắc chắn luôn mang đến cho bạn cảm giác thoải mái khi sử dụng.')
insert into MotaSP VALUEs('SP120', N'Thương hiệu: YO-ME

- Mẫu ba lô với thiết kế đơn giản với khóa kéo chắc chắn bảo vệ đồ dùng bên trong.
- Sản phẩm có ngăn được thiết kế rộng rãi thoải mái đựng đồ dùng cần thiết cho người sử dụng.
- Chiếc ba lô xinh xắn với thiết kế dạng hộp đứng nguyên khối với kích thước được nghiên cứu vừa với bề ngang lưng của bạn nên rất gọn gàng và dễ đeo. 
- Quai đeo êm ái và chắc chắn luôn mang đến cho bạn cảm giác thoải mái khi sử dụng.')

--------------------------------------------


