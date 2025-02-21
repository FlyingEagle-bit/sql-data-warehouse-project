SCRIPT PURPOSE:
  
  The script creates a new databse named DataWarehouse after checking it exists. If it exists it it deleted and recreated. 
  The script will also create the schemas: bronze, silver & gold in the database.

USE MASTER;
GO

IF EXISTS (SELECT 1 FROM sys.databases WHERE name = 'DataWarehouse'
  BEGIN
    ALTER DATABASE DataWarehouse SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE DataWarehouse;
  END;
GO

CREATE DATABASE DataWarehouse;
GO

USE DataWarehouse;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
