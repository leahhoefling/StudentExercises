DROP TABLE IF EXISTS StudentExercise;
DROP TABLE IF EXISTS Student;
DROP TABLE IF EXISTS Instructor;
DROP TABLE IF EXISTS Exercise;
DROP TABLE IF EXISTS Cohort;


CREATE TABLE Cohort (
	Id INTEGER Not Null PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) Not Null
);
CREATE TABLE Exercise (
	Id INTEGER Not Null PRIMARY KEY IDENTITY,
	[Name] VARCHAR(50) Not Null, 
	[Language] VARCHAR(50) Not Null
);
CREATE TABLE Student (
	Id INTEGER Not Null PRIMARY KEY IDENTITY, 
	FirstName VARCHAR(50) Not Null, 
	LastName VARCHAR(50) Not Null, 
	SlackHandle VARCHAR(50) Not Null,
	CohortId INTEGER Not Null,
	CONSTRAINT FK_StudentCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);
CREATE TABLE Instructor (
	Id Integer Not Null PRIMARY KEY IDENTITY,
	FirstName VARCHAR(50) Not Null, 
	LastName VARCHAR(50) Not Null, 
	SlackHandle VARCHAR(50) Not Null, 
	CohortId INTEGER Not Null,
	CONSTRAINT FK_InstructorCohort FOREIGN KEY(CohortId) REFERENCES Cohort(Id)
);

CREATE TABLE StudentExercise (
	Id INTEGER Not Null PRIMARY KEY IDENTITY,
	StudentId INTEGER Not Null,
	ExerciseId INTEGER Not Null, 
	CONSTRAINT FK_Student FOREIGN KEY(StudentId) REFERENCES Student(Id),
	CONSTRAINT FK_Exercise FOREIGN KEY(ExerciseId) REFERENCES Exercise(Id)
);

INSERT INTO Cohort ([Name])
VALUES ('Cohort 28');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 29');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 30');
INSERT INTO Cohort ([Name])
VALUES ('Cohort 31');


INSERT INTO Exercise([Name], [Language])
VALUES ('Kennel', 'React' );
INSERT INTO Exercise([Name], [Language])
VALUES ('ChickenMonkey', 'JavaScript' );
INSERT INTO Exercise([Name], [Language])
VALUES ('StudentExercises', 'Python' );
INSERT INTO Exercise([Name], [Language])
VALUES ('Dictionaries', 'C#' );
INSERT INTO Exercise([Name], [Language])
VALUES ('Random Numbers', 'C#' );


INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Joe', 'Smith', '@joe', 1);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Hunter', 'Metts', '@hunter', 1);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Nick', 'Hansen', '@nick', 2);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Daniel', 'Brewer', '@dan', 2);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('JD', 'Wheeler', '@jd', 2);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Joel', 'Mondesir', '@joel', 4);
INSERT INTO Student (FirstName,LastName,SlackHandle, CohortId)
VALUES ('Jameka', 'Echols', '@jameka', 4);
INSERT INTO Student (FirstName,LastName, SlackHandle, CohortId)
VALUES ('Mo', 'Silvera', '@mo', 3);
INSERT INTO Student (FirstName,LastName, SlackHandle, CohortId)
VALUES ('Brian', 'Neal', '@brian', 3);
INSERT INTO Student (FirstName,LastName, SlackHandle, CohortId)
VALUES ('Allison', 'Collins', '@allison', 3);
INSERT INTO Student (FirstName,LastName, SlackHandle, CohortId)
VALUES ('Asia', 'Carter', '@asia', 2);

INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Jisie', 'David', '@jisie', 4);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Andy', 'Collins', '@andy', 2);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Joe', 'Shepherd', '@joe', 1);
INSERT INTO Instructor (FirstName, LastName, SlackHandle, CohortId)
VALUES ('Steve', 'Brownlee', '@steve', 3);



INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (1, 1);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (1, 2);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (2, 1);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (2, 2);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (3, 2);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (3, 3);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (4, 2);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (4, 3);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (5, 3);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (5, 4);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (6, 3);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (6, 4);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (7, 4);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (7, 5);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (8, 4);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (8, 5);

INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (9, 5);
INSERT INTO StudentExercise(StudentId, ExerciseId)
VALUES (9, 1);