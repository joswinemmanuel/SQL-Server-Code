CREATE DATABASE countrydb;

USE countrydb;

-- Create the table
CREATE TABLE Countries (
    CountryId INT PRIMARY KEY,
    CountryName NVARCHAR(100),
    Population BIGINT,
    Area DECIMAL(18, 2)
);

-- Insert records
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (1, 'China', 1444216107, 9596961.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (2, 'India', 1393409038, 3287263.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (3, 'United States', 331893745, 9833517.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (4, 'Indonesia', 276361783, 1904569.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (5, 'Pakistan', 225199937, 881912.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (6, 'Brazil', 213993437, 8515770.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (7, 'Nigeria', 211400708, 923768.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (8, 'Bangladesh', 166303498, 147570.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (9, 'Russia', 145912025, 17098242.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (10, 'Mexico', 130262216, 1964375.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (11, 'Japan', 125836021, 377975.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (12, 'Ethiopia', 120283026, 1104300.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (13, 'Philippines', 113178300, 300000.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (14, 'Egypt', 104258327, 1002450.00);
INSERT INTO Countries (CountryId, CountryName, Population, Area) VALUES (15, 'Vietnam', 99343100, 331212.00);


CREATE PROCEDURE GetAllCountry
AS
BEGIN
    SELECT * FROM Countries;
END;
GO

EXEC GetAllCountry;
