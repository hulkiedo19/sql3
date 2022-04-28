CREATE TABLE SubjectTypes (
	SubjectTypeId INT PRIMARY KEY IDENTITY,
	[Name] NVARCHAR(MAX) NOT NULL,
	[Description] NVARCHAR(MAX) NOT NULL
);

CREATE TABLE Subjects (
	Id INT PRIMARY KEY IDENTITY,
	SubjectType INT FOREIGN KEY REFERENCES SubjectTypes(SubjectTypeId),
	InventoryNumber NVARCHAR(30) NOT NULL,
	AmountSubjects INT NOT NULL
);

CREATE TABLE Processes (
	Id INT PRIMARY KEY IDENTITY,
	[Description] NVARCHAR(MAX) NOT NULL,
	UsedSubject INT FOREIGN KEY REFERENCES Subjects(Id),
	StartDate DATE NOT NULL,
	EndDate DATE NOT NULL,
	UsedEmployeeNumber INT NOT NULL,
	Department NVARCHAR(MAX) NOT NULL,
	IsCompleted NVARCHAR(20) NOT NULL
);
