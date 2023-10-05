-- Tạo bảng SinhVien
CREATE TABLE SinhVien (
    MaSinhVien INT PRIMARY KEY,
    TenSinhVien VARCHAR(50),
    Lop VARCHAR(10),
    TaiKhoan VARCHAR(50),
    MatKhau VARCHAR(50)
);

-- Tạo bảng Diem
CREATE TABLE Diem (
    MaSinhVien INT,
    MaHocPhan INT,
    ChuyenCan FLOAT,
    KiemTraCuoiKi FLOAT,
    XepLoai VARCHAR(20),
    PRIMARY KEY (MaSinhVien, MaHocPhan),
    FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien),
    FOREIGN KEY (MaHocPhan) REFERENCES HocPhan(MaHocPhan)
);

-- Tạo bảng GiaoVien
CREATE TABLE GiaoVien (
    MaGiaoVien INT PRIMARY KEY,
    TenGiaoVien VARCHAR(50),
    TaiKhoan VARCHAR(50),
    MatKhau VARCHAR(50)
);

-- Tạo bảng HocPhan
CREATE TABLE HocPhan (
    MaHocPhan INT PRIMARY KEY,
    TenHocPhan VARCHAR(50),
    ThoiKhoaBieu VARCHAR(50),
    SoTinChi INT,
    MaGiaoVien INT,
    FOREIGN KEY (MaGiaoVien) REFERENCES GiaoVien(MaGiaoVien)
);

-- Tạo bảng ChuongTrinhGiangDay
CREATE TABLE ChuongTrinhGiangDay (
    MaHocPhan INT PRIMARY KEY,
    TenHocPhan VARCHAR(50),
    SoTinChi INT
);

INSERT INTO SinhVien (MaSinhVien, TenSinhVien, Lop, TaiKhoan, MatKhau)
VALUES
    (1, 'Nguyen Van A', 'K19A', 'sv1', 'password1'),
    (2, 'Tran Thi B', 'K19B', 'sv2', 'password2'),
    (3, 'Le Van C', 'K19C', 'sv3', 'password3'),
    (4, 'Pham Anh D', 'K19D', 'sv4', 'password4'),
    (5, 'Hoang Minh E', 'K19E', 'sv5', 'password5');

INSERT INTO GiaoVien (MaGiaoVien, TenGiaoVien, TaiKhoan, MatKhau)
VALUES
    (1, 'Nguyen Thi D', 'gv1', 'password6'),
    (2, 'Tran Van E', 'gv2', 'password7'),
    (3, 'Le Thi F', 'gv3', 'password8'),
    (4, 'Hoang Duc G', 'gv4', 'password9'),
    (5, 'Pham Thanh H', 'gv5', 'password10');

INSERT INTO HocPhan (MaHocPhan, TenHocPhan, ThoiKhoaBieu, SoTinChi, MaGiaoVien)
VALUES
    (1, 'Toan cao cap', 'Thu 2, 3, 4 (13:00 - 15:00)', 3, 1),
    (2, 'Tieng Anh 1', 'Thu 3, 5 (8:00 - 10:00)', 2, 2),
    (3, 'Lap trinh co so du lieu', 'Thu 4, 6 (10:00 - 12:00)', 3, 3),
    (4, 'Chu Nhat hoc', 'Chu Nhat (7:00 - 9:00)', 1, 4),
    (5, 'Quan tri du an', 'Thu 2, 5 (15:00 - 17:00)', 2, 5);