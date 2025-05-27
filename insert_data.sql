use `homework`;


INSERT INTO Companies(Name, Industry, Location) VALUES 
('TechNova',	'Technology',	'San Francisco, CA'),
('HealthCore',	'Healthcare',	'Boston, MA'),
('EduWise',	'Education',	'Chicago, IL'),
('GreenLeaf Energy',	'Energy',	'Austin, TX'),
('FinSphere',	'Finance',		'NewYork, NY'),
('BuildRight',	'Construction',	'Denver, CO'),
('AgriGenix',	'Agriculture',	'Des Moines, IA')


INSERT INTO Jobs(CompanyID, Title, PostDate, Salary) VALUES 
(1,	'Backend Developer',	'2023-12-01',	90000),
(2,	'Nurse Practitioner',	'2024-01-15',	85000),
(1,	'Curriculum Developer',	'2024-03-22',	60000),
(4,	'Solar Technician',	'2024-02-10',	70000),
(1,	'Financial Analyst',	'2023-11-05',	75000),
(6,	'Site Manager',	'2024-01-20',	72000),
(7,	'Agricultural Scientist',	'2024-04-12',	68000)

INSERT INTO Applications(JobID,	CandidateID, ApplyDate, Status) VALUES
(1,	3,	'2024-01-05',	'Pending'),
(2,	1,	'2024-01-17',	'Rejected'),
(3,	2,	'2024-03-25',	'Interviewing'),
(4,	6,	'2024-02-14',	'Hired'),
(5,	5,	'2023-11-10',	'Rejected'),
(6,	4,	'2024-02-01',	'Hired'),
(7,	7,	'2024-04-15',	'Pending')


INSERT INTO Candidates(Name, Email, ExperienceYears) VALUES 
('Ivan Koval',	'ivan.k@example.com',	1),
('Maria Shevchenko',	'maria.shev@example.com',	3),
('Oleg Bondarenko',	'oleg.bond@example.com',	2),
('Natalia Petrenko',	'nat.petr@example.com',	5),
('Dmytro Ivanenko',	'd.ivanenko@example.com',	4),
('Olena Tkachenko',	'olena.tk@example.com',	0),
('Serhii Kravchenko',	'serhii.krav@example.com',	6)


INSERT INTO Interviews(CandidateID,JobID, InterviewDate, Result_) values
(1,	3,	'2024-11-10',	'Passed'),
(3,	3,	'2024-11-12',	'Failed'),
(3,	4,	'2024-11-15',	'Pending'),
(4,	7,	'2024-11-18',	'Passed'),
(5,	1,	'2024-11-20',	'Failed'),
(7,	1,	'2024-11-22',	'Pending'),
(7,	5,	'2024-11-25',	'Passed')