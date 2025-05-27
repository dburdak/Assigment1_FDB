# Assigment1_FDB
Tables:
  1)Companies - describes companies that we have at our recruting service;
    <img width="596" alt="Знімок екрана 2025-05-27 о 15 50 12" src="https://github.com/user-attachments/assets/a59c7d58-f868-4876-9f0d-1fbac362415f" />
  
  2)Jobs - describes job announcements that were posted on the service;
    <img width="694" alt="Знімок екрана 2025-05-27 о 15 49 47" src="https://github.com/user-attachments/assets/04e583b5-95f8-4375-b696-9ccf362dddd9" />
  
  3)Applications - describes applications that were sent by candidates;
    <img width="699" alt="Знімок екрана 2025-05-27 о 15 48 51" src="https://github.com/user-attachments/assets/cc4be0a6-48a2-4622-9c92-a8ae2efc7f67" />
  
  4)Candidates - describes every candidate on the service;
    <img width="668" alt="Знімок екрана 2025-05-27 о 15 50 43" src="https://github.com/user-attachments/assets/6404a46b-5673-4020-8ef6-890ee0763eca" />
  
  5)Interviews - describes interviews that were held due tu our service.
    <img width="690" alt="Знімок екрана 2025-05-27 о 15 51 17" src="https://github.com/user-attachments/assets/eba04eb0-b466-475a-bafd-d13fbe6d2f9b" />

QUERIES:
  1. Select(there 2 variants with CTE and without) to join 5 tables and etc:
     Sense: to show the candidate that get the job by the smallest amount of time.
     Result:
     <img width="869" alt="Знімок екрана 2025-05-27 о 15 46 14" src="https://github.com/user-attachments/assets/855735c7-6250-4cea-a728-237817d9eda2" />
  
  3. Union select:
     There is no sense, but it join all the records from InterviewDate and ApplyDate in one column.
     Result:
     <img width="256" alt="Знімок екрана 2025-05-27 о 15 47 23" src="https://github.com/user-attachments/assets/6a054c8a-ed52-4185-9cf1-00ea03937b16" />
     
  3.Select with CTE:
    Sense: to count how much we have posted jobs on the service that higher than 75000 and lower.
    Result:
    <img width="314" alt="Знімок екрана 2025-05-27 о 15 48 03" src="https://github.com/user-attachments/assets/64cd7ef4-fb99-4796-9605-874369872c3f" />
