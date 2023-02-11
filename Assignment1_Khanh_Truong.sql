DROP DATABASE IF EXISTS fresher_training_management;

CREATE DATABASE IF NOT EXISTS fresher_training_management;

USE fresher_training_management;

/* CREATE TABLE */
CREATE TABLE trainee(
    TraineeID INT PRIMARY KEY auto_increment NOT NULL,
    Full_Name VARCHAR(50) NOT NULL,
    Birth_Date Date NOT NULL,
    Gender ENUM('male', 'female', 'unknown'),
    ET_IQ tinyint check(ET_IQ >= 0 AND ET_IQ <=20),
    ET_Gmath tinyint check(ET_Gmath >= 0 AND ET_Gmath <=20),
    ET_English tinyint check(ET_English >= 0 AND ET_English <=50),
    Training_Class VARCHAR(100) NOT NULL,
    Evaluation_Notes VARCHAR(250)
);

-- ADD FIELD 
ALTER TABLE Trainee
ADD VTI_Account VARCHAR(50) NOT NULL UNIQUE;
