/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

USE SensorDatabase;
GO

EXEC Create_Sensor '11','MotionSensor', 'MotionSense', 'Ricefield', 'Active';

/*EXEC Create_Sensor '7','Water1', 'Flow', 'Irrigation Zone C', 'Inactive';
EXEC Create_Sensor '2','TempSensor2', 'Temperature', 'Field B', 'Active';
EXEC Create_Sensor '3','HumiditySensor2', 'Humidity', 'Greenhouse C', 'Inactive';
EXEC Create_Sensor '4','SoilSensor1', 'Soil Moisture', 'Garden D', 'Active';
EXEC Create_Sensor '5','LightSensor2', 'Light Intensity', 'Nursery E', 'Active';
Go*/

--EXEC Delete_Sensor 1;

--INCERT INTO

--EXEC Update_Sensor '6','lizza','Noble','Midsayap','Taken'

EXEC Get_Sensor