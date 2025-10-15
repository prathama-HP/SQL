-- 1️⃣ Create database if it doesn't exist
IF DB_ID('DotNetCourseDatabase') IS NULL
BEGIN
    CREATE DATABASE DotNetCourseDatabase;
END
GO

-- 2️⃣ Switch to the database
USE DotNetCourseDatabase;
GO

-- 3️⃣ Create schema if it doesn't exist
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'TutorialAppSchema')
BEGIN
    EXEC('CREATE SCHEMA TutorialAppSchema');
END
GO

-- 4️⃣ Create Computer table
IF OBJECT_ID('TutorialAppSchema.Computer', 'U') IS NULL
BEGIN
    CREATE TABLE TutorialAppSchema.Computer (
        ComputerId INT IDENTITY(1,1) PRIMARY KEY,
        Motherboard NVARCHAR(50) NOT NULL,
        HasWifi BIT NOT NULL,
        HasLTE BIT NOT NULL,
        ReleaseDate DATETIME NOT NULL,
        Price DECIMAL(10,2) NOT NULL,
        VideoCard NVARCHAR(50) NOT NULL
    );
END
GO

-- 5️⃣ Optional: Verify table creation
SELECT * FROM TutorialAppSchema.Computer;
