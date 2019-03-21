SELECT s.FirstName,
       c.[Name]
  FROM Student s
       LEFT JOIN Cohort c on s.CohortId = c.id;

SELECT s.FirstName,
       c.[Name],
       e.[Name]
FROM StudentExercise j
	RIGHT JOIN Student s on j.StudentId = s.id 
	RIGHT JOIN Exercise e on j.ExerciseId = e.id
	LEFT JOIN Cohort c on s.CohortId = c.id;

SELECT s.FirstName,
       e.[Name],
	   c.[Name]
FROM Student s
	LEFT JOIN StudentExercise j on s.Id = j.StudentId
	LEFT JOIN Exercise e on j.ExerciseId = e.Id
	LEFT JOIN Cohort c on s.CohortId = c.id;

SELECT s.FirstName,
       e.[Name],
	   c.[Name]
FROM Student s
	LEFT JOIN StudentExercise j on s.Id = j.StudentId
	LEFT JOIN Exercise e on j.ExerciseId = e.Id
	LEFT JOIN Cohort c on s.CohortId = c.id
WHERE e.[Name] IS NOT NULL;

SELECT FirstName,
		LastName
FROM Student 
WHERE FirstName LIKE '%n%';