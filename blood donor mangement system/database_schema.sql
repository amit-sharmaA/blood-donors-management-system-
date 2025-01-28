-- Create Users table
CREATE TABLE Users (
    UserID INT IDENTITY(1,1) PRIMARY KEY,
    Username NVARCHAR(50) NOT NULL UNIQUE,
    Password NVARCHAR(100) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    FullName NVARCHAR(100) NOT NULL,
    Mobile NVARCHAR(15),
    IsAdmin BIT DEFAULT 0,
    CreatedDate DATETIME DEFAULT GETDATE()
);

-- Create Donors table
CREATE TABLE Donors (
    DonorID INT IDENTITY(1,1) PRIMARY KEY,
    UserID INT REFERENCES Users(UserID),
    Name NVARCHAR(100) NOT NULL,
    BloodGroup NVARCHAR(5) NOT NULL,
    Age INT NOT NULL,
    Gender NVARCHAR(10) NOT NULL,
    Mobile NVARCHAR(15) NOT NULL,
    Email NVARCHAR(100),
    Address NVARCHAR(200),
    City NVARCHAR(50) NOT NULL,
    State NVARCHAR(50),
    LastDonationDate DATE,
    IsAvailable BIT DEFAULT 1,
    CreatedDate DATETIME DEFAULT GETDATE()
);

-- Create BloodRequests table
CREATE TABLE BloodRequests (
    RequestID INT IDENTITY(1,1) PRIMARY KEY,
    DonorID INT REFERENCES Donors(DonorID),
    RequesterName NVARCHAR(100) NOT NULL,
    RequesterMobile NVARCHAR(15) NOT NULL,
    BloodGroup NVARCHAR(5) NOT NULL,
    RequiredDate DATE NOT NULL,
    Message NVARCHAR(500),
    RequestDate DATETIME DEFAULT GETDATE(),
    Status NVARCHAR(20) DEFAULT 'Pending', -- Pending, Approved, Rejected, Completed
    UpdatedDate DATETIME
);

-- Insert admin user
INSERT INTO Users (Username, Password, Email, FullName, IsAdmin)
VALUES ('admin', 'admin123', 'admin@blooddonor.com', 'System Administrator', 1);

-- Create stored procedure for user login
CREATE PROCEDURE sp_UserLogin
    @Username NVARCHAR(50),
    @Password NVARCHAR(100)
AS
BEGIN
    SELECT UserID, Username, Email, FullName, IsAdmin
    FROM Users
    WHERE Username = @Username AND Password = @Password
END
