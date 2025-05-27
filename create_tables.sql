use `homework`;

create table Companies(
CompanyID INT AUTO_INCREMENT PRIMARY KEY,
Name	VARCHAR(50),
Industry VARCHAR(50),	
Location varchar(100)
)

CREATE TABLE Jobs(
JobID INT AUTO_INCREMENT PRIMARY KEY,	
CompanyID INT,
Title VARCHAR(50),
PostDate DATE,	
Salary DECIMAL
)


CREATE TABLE Applications(
ApplicationID INT AUTO_INCREMENT PRIMARY KEY,
JobID INT,	
CandidateID	INT,
ApplyDate DATE	,
Status VARCHAR(20)
)

CREATE TABLE Candidates(
CandidateID INT AUTO_INCREMENT PRIMARY KEY,
Name VARCHAR(50)	,
Email VARCHAR(50)	,
ExperienceYears INT
)

CREATE TABLE Interviews(
InterviewID	INT AUTO_INCREMENT PRIMARY KEY,
CandidateID INT,
JobID INT,
InterviewDate DATE	,
Result_ VARCHAR(20)
)