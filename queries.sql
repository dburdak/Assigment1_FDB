
-- Основний запит з CTE
WITH InterviewAmount AS
(SELECT CandidateID, COUNT(InterviewDate) AS NumberOfInterview FROM Interviews GROUP BY CandidateID)
SELECT c.Name , cm.Name, j.Title, a.ApplyDate, i.InterviewDate, ia.NumberOfInterview
FROM Candidates c
LEFT JOIN Interviews i ON c.CandidateID = i.CandidateID
LEFT JOIN Jobs j ON	i.JobID = j.JobID
LEFT JOIN Companies cm ON cm.CompanyID = j.CompanyID
LEFT JOIN Applications a ON a.CandidateID = c.CandidateID
LEFT JOIN  InterviewAmount ia ON c.CandidateID = ia.CandidateID
WHERE i.Result_ = 'Passed'
HAVING ia.NumberOfInterview<=1
ORDER BY DATEDIFF( i.InterviewDate, a.ApplyDate) ASC
LIMIT 1;

-- Основний запит без CTE
SELECT c.Name , cm.Name, j.Title, a.ApplyDate, i.InterviewDate, ia.NumberOfInterview
FROM Candidates c
LEFT JOIN Interviews i ON c.CandidateID = i.CandidateID
LEFT JOIN Jobs j ON	i.JobID = j.JobID
LEFT JOIN Companies cm ON cm.CompanyID = j.CompanyID
LEFT JOIN Applications a ON a.CandidateID = c.CandidateID
LEFT JOIN  (SELECT CandidateID, COUNT(InterviewDate) AS NumberOfInterview FROM Interviews GROUP BY CandidateID) AS ia 
ON ia.CandidateID = c.CandidateID
WHERE i.Result_ = 'Passed'
HAVING ia.NumberOfInterview<=1
ORDER BY DATEDIFF( i.InterviewDate, a.ApplyDate) ASC
LIMIT 1;


-- Використання UNION ALL

SELECT InterviewDate FROM Interviews
UNION ALL
SELECT ApplyDate FROM Applications;


-- Використання CTE для маркування наявних зарплат
WITH SalaryMarking AS(
SELECT JobID,
CASE
	WHEN Salary>=75000 THEN 'HIGH'
	ELSE 'LOW'
END AS SalaryType
FROM Jobs)
SELECT SalaryType, COUNT(JobID) AS Amount
FROM SalaryMarking
GROUP BY SalaryType ;
