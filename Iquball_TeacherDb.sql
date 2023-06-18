CREATE TABLE Teachers
(
	TeacherId INT IDENTITY PRIMARY KEY,
	TeacherName NVARCHAR(40) NOT NULL,
	phone NVARCHAR(30) NOT NULL,
	[email] NVARCHAR(50) NOT NULL
)
GO
CREATE TABLE Groups
(
	GroupId INT IDENTITY PRIMARY KEY,
	GroupName NVARCHAR(40) NOT NULL,
)
Go
CREATE TABLE Subjects
(
	SubjectId INT IDENTITY PRIMARY KEY,
	SubjectName NVARCHAR(40) NOT NULL,
	TeacherId int references Teachers(TeacherId )
)
GO

CREATE TABLE Students
(
	StudentId INT IDENTITY PRIMARY KEY,
	StudentName NVARCHAR(40) NOT NULL,
	[Address] NVARCHAR(70) NOT NULL,
	[email] NVARCHAR(50) NOT NULL,
	DOB date NOT NULL,
	Picture NVARCHAR(50) NOT NULL,
	GroupId int references Groups(GroupId )
)
GO
CREATE TABLE Marks
(
	SubjectId INT NOT NULL references Subjects(SubjectId ),
	StudentId INT NOT NULL references Students(StudentId ),
	Mark INT  not null ,
	ResultDate Date NOT NULL,
	PRIMARY KEY(SubjectId,StudentId)

	
)
Go