CREATE DATABASE carestackdb;

USE carestackdb;

CREATE TABLE Patients (
    PatientID INT PRIMARY KEY IDENTITY(1,1),
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Age INT CHECK (Age >= 0), -- Age must be a non-negative integer
    Country NVARCHAR(50),
    Gender NVARCHAR(10) CHECK (Gender IN ('Male', 'Female', 'Other')),
    Address NVARCHAR(255),
    PhoneNumber NVARCHAR(15),
    Email NVARCHAR(100),
    DateOfBirth DATE,
    MedicalHistory NVARCHAR(MAX)
);


INSERT INTO Patients (FirstName, LastName, Age, Country, Gender, Address, PhoneNumber, Email, DateOfBirth, MedicalHistory)
VALUES
('John', 'Doe', 30, 'USA', 'Male', '123 Elm Street, Springfield, IL', '555-1234', 'john.doe@example.com', '1994-01-01', 'No significant medical history'),
('Jane', 'Smith', 25, 'Canada', 'Female', '456 Maple Avenue, Toronto, ON', '555-5678', 'jane.smith@example.com', '1998-02-15', 'Asthma'),
('Emily', 'Johnson', 40, 'UK', 'Female', '789 Oak Lane, London', '555-9012', 'emily.johnson@example.com', '1984-07-23', 'Diabetes'),
('Michael', 'Brown', 35, 'India', 'Male', '101 Pine Road, Sydney', '555-3456', 'michael.brown@example.com', '1989-11-11', 'High blood pressure'),
('Sarah', 'Davis', 28, 'India', 'Female', '202 Birch Street, Mumbai', '555-7890', 'sarah.davis@example.com', '1996-03-03', 'Allergies'),
('Robert', 'Miller', 50, 'Germany', 'Male', '303 Cedar Court, Berlin', '555-2345', 'robert.miller@example.com', '1974-05-20', 'Heart disease');

INSERT INTO Patients (FirstName, LastName, Age, Country, Gender, Address, PhoneNumber, Email, DateOfBirth, MedicalHistory)
VALUES
('Alex', 'Williams', 45, 'USA', 'Male', '404 Chestnut Blvd, Paris', '555-4567', 'alex.williams@example.com', '1979-09-18', 'No significant medical history'),
('Emma', 'Taylor', 33, 'Canada', 'Female', '505 Walnut Street, Rome', '555-6789', 'emma.taylor@example.com', '1991-04-25', 'Thyroid issues'),
('Oliver', 'Martinez', 38, 'USA', 'Male', '606 Sycamore Avenue, Madrid', '555-8901', 'oliver.martinez@example.com', '1986-12-14', 'No significant medical history'),
('Sophia', 'Garcia', 27, 'Canada', 'Female', '707 Spruce Drive, Mexico City', '555-1235', 'sophia.garcia@example.com', '1997-08-30', 'Allergies'),
('Liam', 'Harris', 52, 'Canada', 'Male', '808 Palm Lane, Rio de Janeiro', '555-3457', 'liam.harris@example.com', '1972-03-10', 'Arthritis'),
('Ava', 'Lopez', 29, 'USA', 'Female', '909 Poplar Street, Buenos Aires', '555-5670', 'ava.lopez@example.com', '1995-06-05', 'No significant medical history'),
('Noah', 'Gonzalez', 41, 'Canada', 'Male', '1010 Fir Court, Bogota', '555-7891', 'noah.gonzalez@example.com', '1983-01-22', 'High cholesterol'),
('Isabella', 'Perez', 36, 'UK', 'Female', '1111 Hemlock Road, Santiago', '555-2346', 'isabella.perez@example.com', '1988-02-07', 'No significant medical history'),
('Lucas', 'Moore', 31, 'UK', 'Male', '1212 Cedar Boulevard, Lima', '555-4568', 'lucas.moore@example.com', '1993-11-09', 'Asthma'),
('Mia', 'Hall', 26, 'Canada', 'Female', '1313 Aspen Way, Caracas', '555-6780', 'mia.hall@example.com', '1998-05-16', 'No significant medical history'),
('Ethan', 'Clark', 55, 'USA', 'Male', '1414 Redwood Drive, Moscow', '555-8902', 'ethan.clark@example.com', '1969-07-28', 'Heart disease'),
('Abigail', 'Rodriguez', 24, 'UK', 'Female', '1515 Willow Street, Tokyo', '555-1236', 'abigail.rodriguez@example.com', '2000-08-19', 'No significant medical history'),
('James', 'Lewis', 48, 'USA', 'Male', '1616 Beech Avenue, Seoul', '555-3459', 'james.lewis@example.com', '1976-10-02', 'Diabetes'),
('Grace', 'Lee', 39, 'India', 'Female', '1717 Spruce Lane, Beijing', '555-5671', 'grace.lee@example.com', '1985-01-13', 'No significant medical history'),
('Benjamin', 'Walker', 37, 'UK', 'Male', '1818 Magnolia Street, Cape Town', '555-7892', 'benjamin.walker@example.com', '1987-09-05', 'Thyroid issues'),
('Charlotte', 'Young', 32, 'India', 'Female', '1919 Sycamore Blvd, Cairo', '555-2347', 'charlotte.young@example.com', '1992-04-17', 'No significant medical history'),
('Henry', 'King', 53, 'India', 'Male', '2020 Oak Road, Lagos', '555-4569', 'henry.king@example.com', '1971-06-12', 'Arthritis'),
('Ella', 'Scott', 30, 'USA', 'Female', '2121 Birch Street, Nairobi', '555-6782', 'ella.scott@example.com', '1994-11-23', 'No significant medical history'),
('Daniel', 'Green', 43, 'Germany', 'Male', '2222 Maple Lane, Accra', '555-8903', 'daniel.green@example.com', '1981-03-19', 'High cholesterol'),
('Amelia', 'Adams', 28, 'USA', 'Female', '2323 Cedar Court, Addis Ababa', '555-1237', 'amelia.adams@example.com', '1996-05-09', 'No significant medical history');


SELECT * FROM Patients;

CREATE PROCEDURE GetAllPatients
AS
BEGIN
    SELECT * FROM Patients;
END;
GO

EXEC GetAllPatients;
