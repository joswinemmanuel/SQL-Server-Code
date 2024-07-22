CREATE DATABASE patientdb;

USE patientdb;

CREATE TABLE Patients
(
    PatientID INT PRIMARY KEY IDENTITY(1,1),    -- Unique identifier for each patient
    FirstName NVARCHAR(50) NOT NULL,            -- Patient's first name
    LastName NVARCHAR(50) NOT NULL,             -- Patient's last name
    DateOfBirth DATE NOT NULL,                  -- Patient's date of birth
    Gender CHAR(1) CHECK (Gender IN ('M', 'F')),-- Gender: 'M' for Male, 'F' for Female
    Address NVARCHAR(255),                      -- Patient's address
    City NVARCHAR(50),                          -- City of residence
    State NVARCHAR(50),                         -- State of residence
    PostalCode NVARCHAR(10),                    -- Postal code
    PhoneNumber NVARCHAR(15),                   -- Contact phone number
    Email NVARCHAR(100),                        -- Contact email address
    EmergencyContactName NVARCHAR(100),         -- Emergency contact person's name
    EmergencyContactPhone NVARCHAR(15),         -- Emergency contact phone number
    PrimaryPhysician NVARCHAR(100),             -- Primary physician's name
    MedicalHistory NVARCHAR(MAX),               -- Medical history details
    Allergies NVARCHAR(MAX),                    -- Allergies information
    InsuranceProvider NVARCHAR(100),            -- Insurance provider's name
    InsurancePolicyNumber NVARCHAR(50),         -- Insurance policy number
    DateAdded DATETIME DEFAULT GETDATE(),       -- Date when the record was added
    LastUpdated DATETIME DEFAULT GETDATE()      -- Date when the record was last updated
);

INSERT INTO Patients (FirstName, LastName, DateOfBirth, Gender, Address, City, State, PostalCode, PhoneNumber, Email, EmergencyContactName, EmergencyContactPhone, PrimaryPhysician, MedicalHistory, Allergies, InsuranceProvider, InsurancePolicyNumber)
VALUES
('John', 'Doe', '1980-05-15', 'M', '123 Main St', 'Springfield', 'IL', '62704', '555-1234', 'john.doe@example.com', 'Jane Doe', '555-5678', 'Dr. Smith', 'Hypertension, Diabetes', 'Penicillin', 'HealthCare Inc.', 'HC12345'),

('Mary', 'Johnson', '1975-09-23', 'F', '456 Elm St', 'Shelbyville', 'IL', '62565', '555-2345', 'mary.johnson@example.com', 'John Johnson', '555-6789', 'Dr. Adams', 'Asthma', 'None', 'LifeHealth', 'LH98765'),

('James', 'Williams', '1990-11-12', 'M', '789 Oak St', 'Capital City', 'IL', '62701', '555-3456', 'james.williams@example.com', 'Laura Williams', '555-7890', 'Dr. Clark', 'None', 'None', 'MedSecure', 'MS54321'),

('Patricia', 'Brown', '1985-02-27', 'F', '101 Pine St', 'Ogdenville', 'IL', '62001', '555-4567', 'patricia.brown@example.com', 'Michael Brown', '555-8901', 'Dr. Davis', 'Thyroid Disorder', 'Aspirin', 'SafeHealth', 'SH67890'),

('Robert', 'Jones', '1965-07-19', 'M', '202 Maple St', 'North Haverbrook', 'IL', '62903', '555-5678', 'robert.jones@example.com', 'Sarah Jones', '555-9012', 'Dr. Lewis', 'Heart Disease', 'None', 'WellnessCare', 'WC11223');

GO
CREATE PROCEDURE GetImportantPatientDetails
AS
BEGIN
    SELECT 
        PatientID,
        FirstName,
        LastName,
        DateOfBirth,
        Gender,
        PhoneNumber,
        Email,
        EmergencyContactName,
        EmergencyContactPhone,
        PrimaryPhysician,
        InsuranceProvider,
        InsurancePolicyNumber
    FROM Patients;
END;


SELECT * FROM Patients;

EXEC GetImportantPatientDetails;
