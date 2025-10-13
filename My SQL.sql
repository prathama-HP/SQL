-- Drop and recreate database if it exists
IF DB_ID('DotNetCourseDatabase') IS NOT NULL
    DROP DATABASE DotNetCourseDatabase;
GO

CREATE DATABASE DotNetCourseDatabase;
GO

USE DotNetCourseDatabase;
GO

-- Create schema
CREATE SCHEMA TutorialAppSchema;
GO

-- Drop table if it already exists (safe rerun)
DROP TABLE IF EXISTS TutorialAppSchema.Computer;
GO

-- Create table
CREATE TABLE TutorialAppSchema.Computer
(
    ComputerID INT IDENTITY(1,1) PRIMARY KEY,
    Motherboard NVARCHAR(255),
    CPUCores INT,
    HasWifi BIT,
    HasLTE BIT,
    Price DECIMAL(18,4),
    VideoCard NVARCHAR(50)
);
GO

-- Insert sample data
INSERT INTO TutorialAppSchema.Computer (Motherboard, CPUCores, HasWifi, HasLTE, Price, VideoCard)
VALUES
('ASUS B550', 8, 1, 0, 75000.00, 'NVIDIA RTX 4060'),
('Gigabyte X570', 12, 1, 1, 120000.00, 'AMD Radeon RX 7900'),
('MSI B450', 6, 1, 0, 55000.00, 'NVIDIA GTX 1660');
GO

-- View data
SELECT * FROM TutorialAppSchema.Computer;

INSERT INTO TutorialAppSchema.Computer 
(Motherboard, CPUCores, HasWifi, HasLTE, Price, VideoCard)
VALUES
('ASRock Z790', 16, 1, 1, 150000.00, 'NVIDIA RTX 4090');

SELECT * FROM TutorialAppSchema.Computer;
