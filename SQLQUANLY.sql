CREATE TABLE SinhVien (
    MaSinhVien INT PRIMARY KEY,
    TenSinhVien VARCHAR(255),
    Lop VARCHAR(50),
    TaiKhoan VARCHAR(50),
    MatKhau VARCHAR(50)
);

CREATE TABLE Diem (
    MaSinhVien INT,
    MaHocPhan INT,
    ChuyenCan FLOAT,
    KiemTraCuoiKi FLOAT,
    XepLoai VARCHAR(50),
    FOREIGN KEY (MaSinhVien) REFERENCES SinhVien(MaSinhVien),
    FOREIGN KEY (MaHocPhan) REFERENCES HocPhan(MaHocPhan)
);

CREATE TABLE GiaoVien (
    MaGiaoVien INT PRIMARY KEY,
    TenGiaoVien VARCHAR(255),
    TaiKhoan VARCHAR(50),
    MatKhau VARCHAR(50)
);

CREATE TABLE HocPhan (
    MaHocPhan INT PRIMARY KEY,
    TenHocPhan VARCHAR(255),
    ThoiKhoaBieu VARCHAR(255),
    SoTinChi INT,
    MaGiaoVien INT,
    FOREIGN KEY (MaGiaoVien) REFERENCES GiaoVien(MaGiaoVien)
);

CREATE TABLE TaiKhoan (
    MaTaiKhoan INT PRIMARY KEY,
    TaiKhoan VARCHAR(50),
    MatKhau VARCHAR(50)
);

CREATE TABLE ChuongTrinhGiangDay (
    MaHocPhan INT PRIMARY KEY,
    TenHocPhan VARCHAR(255),
    SoTinChi INT
);

INSERT INTO SinhVien (MaSinhVien, TenSinhVien, Lop)
VALUES
    (1, 'Nguyen Van A', 'K19A'),
    (2, 'Tran Thi B', 'K19B'),
    (3, 'Le Van C', 'K19C'),
    (4, 'Pham Anh D', 'K19D'),
    (5, 'Hoang Minh E', 'K19E');

INSERT INTO TaiKhoan (MaTaiKhoan, TaiKhoan, MatKhau)
VALUES
    (1, 'sv1', 'password1'),
    (2, 'sv2', 'password2'),
    (3, 'sv3', 'password3'),
    (4, 'sv4', 'password4'),
    (5, 'sv5', 'password5');

INSERT INTO GiaoVien (MaGiaoVien, TenGiaoVien)
VALUES
    (1, 'Nguyen Thi D'),
    (2, 'Tran Van E'),
    (3, 'Le Thi F'),
    (4, 'Hoang Duc G'),
    (5, 'Pham Thanh H');

INSERT INTO HocPhan (MaHocPhan, TenHocPhan, ThoiKhoaBieu, SoTinChi, MaGiaoVien)
VALUES
    (1, 'Toan cao cap', 'Thu 2, 3, 4 (13:00 - 15:00)', 3, 1),
    (2, 'Tieng Anh 1', 'Thu 3, 5 (8:00 - 10:00)', 2, 2),
    (3, 'Lap trinh co so du lieu', 'Thu 4, 6 (10:00 - 12:00)', 3, 3),
    (4, 'Chu Nhat hoc', 'Chu Nhat (7:00 - 9:00)', 1, 4),
    (5, 'Quan tri du an', 'Thu 2, 5 (15:00 - 17:00)', 2, 5);