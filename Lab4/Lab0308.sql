USE master;
GO
ALTER DATABASE An 
SET SINGLE_USER 
WITH ROLLBACK IMMEDIATE;
GO
DROP DATABASE An;
CREATE DATABASE An
GO

USE An
GO
-- Tao bang SV
CREATE TABLE SinhVien
(
	MaSinhVien int PRIMARY KEY,
	Ten nvarchar(50),
	NgaySinh date
)
GO

-- Tao bang CLASS
CREATE TABLE Class (
	MaLop int PRIMARY KEY,
	TenLop nvarchar(50) NOT NULL,
	StartDate date,
	EndDate date,
	ClassStatus varchar(50)
)
GO

CREATE TABLE StudentClass (
	TenSinhVien nvarchar(50) NOT NULL,
	LopDangHoc nvarchar(50) NOT NULL
)
GO

INSERT INTO dbo.SinhVien
(
    MaSinhVien,
    Ten,
    NgaySinh
)
VALUES
(
    2000, -- MaSinhVien - int
    'An', -- Ten - nvarchar
    '07-11-1999' -- NgaySinh - datetime
)
INSERT INTO dbo.SinhVien
(
    MaSinhVien,
    Ten,
    NgaySinh
)
VALUES
(
    2001, -- MaSinhVien - int
    'Thinh', -- Ten - nvarchar
    '1999-11-09' -- NgaySinh - datetime
)
INSERT INTO dbo.SinhVien
(
    MaSinhVien,
    Ten,
    NgaySinh
)
VALUES
(
    2002, -- MaSinhVien - int
    'Tien', -- Ten - nvarchar
    '1999-11-09' -- NgaySinh - datetime
)

INSERT INTO dbo.Class
(
    MaLop,
    TenLop,
    StartDate,
    EndDate,
    ClassStatus
)
VALUES
(
    10, -- MaLop - int
    N'Toan', -- TenLop - nvarchar
    '4-5-2020', -- StartDate - date
    '6-6-2020', -- EndDate - date
    'Available' -- ClassStatus - varchar
)
INSERT INTO dbo.Class
(
    MaLop,
    TenLop,
    StartDate,
    EndDate,
    ClassStatus
)
VALUES
(
    11, -- MaLop - int
    N'Ly', -- TenLop - nvarchar
    '4-10-2020', -- StartDate - date
    '6-20-2020', -- EndDate - date
    'Available' -- ClassStatus - varchar
)
INSERT INTO dbo.Class
(
    MaLop,
    TenLop,
    StartDate,
    EndDate,
    ClassStatus
)
VALUES
(
    12, -- MaLop - int
    N'Hoa', -- TenLop - nvarchar
    '4-12-2020', -- StartDate - date
    '6-25-2020', -- EndDate - date
    'Available' -- ClassStatus - varchar
)

INSERT INTO dbo.StudentClass
(
    TenSinhVien,
    LopDangHoc
)
VALUES
(
    N'An', -- TenSinhVien - nvarchar
    N'Hoa' -- LopDangHoc - nvarchar
)

INSERT INTO dbo.StudentClass
(
    TenSinhVien,
    LopDangHoc
)
VALUES
(
    N'Thinh', -- TenSinhVien - nvarchar
    N'Hoa' -- LopDangHoc - nvarchar
)
INSERT INTO dbo.StudentClass
(
    TenSinhVien,
    LopDangHoc
)
VALUES
(
    N'Tien', -- TenSinhVien - nvarchar
    N'Toan' -- LopDangHoc - nvarchar
)
--SELECT * INTO SinhVienTemp FROM SinhVien
--ALTER TABLE SinhVienTemp DROP COLUMN NgaySinh

SELECT dbo.SinhVien.MaSinhVien, dbo.SinhVien.Ten, FORMAT(NgaySinh, 'd', 'en-bo') AS NgaySinh FROM SinhVien

UPDATE dbo.SinhVien
SET
    dbo.SinhVien.MaSinhVien = 2010, -- int
    dbo.SinhVien.Ten = N'Gay', -- nvarchar
    dbo.SinhVien.NgaySinh = '9-1-2000' -- date
WHERE dbo.SinhVien.MaSinhVien = '2001'

SELECT dbo.SinhVien.MaSinhVien, dbo.SinhVien.Ten, FORMAT(NgaySinh, 'd', 'en-bo') AS NgaySinh FROM SinhVien

DELETE FROM dbo.SinhVien 
WHERE dbo.SinhVien.Ten = 'Gay'

SELECT dbo.SinhVien.MaSinhVien, dbo.SinhVien.Ten, FORMAT(NgaySinh, 'd', 'en-bo') AS NgaySinh FROM SinhVien

SELECT * FROM dbo.Class c
SELECT * FROM dbo.StudentClass sc