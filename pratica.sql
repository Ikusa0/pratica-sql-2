----------------------------------------
-- 1

SELECT users.id, users.name, cities.name AS city FROM users
JOIN cities
ON
users."cityId" = cities.id
WHERE cities.name LIKE 'Rio de Janeiro';

----------------------------------------
-- 2

SELECT testimonials.id, u1.name AS writer, u2.name AS recipient, testimonials.message FROM testimonials 
JOIN users u1
ON testimonials."writerId" = u1.id
JOIN users u2
ON testimonials."recipientId" = u2.id;

----------------------------------------
-- 3

SELECT users.id, users.name, courses.name AS course, schools.name AS school, educations."endDate" FROM courses
JOIN educations
ON educations."courseId" = courses.id
JOIN users
ON educations."userId" = users.id
JOIN schools
ON educations."schoolId" = schools.id
WHERE users.id = 30;

----------------------------------------
-- 4

SELECT users.id, users.name, roles.name AS role, companies.name AS company, experiences."startDate" FROM companies
JOIN experiences
ON experiences."companyId" = companies.id
JOIN users
ON experiences."userId" = users.id
JOIN roles
ON experiences."roleId" = roles.id
WHERE users.id = 50 AND experiences."endDate" IS NULL;

----------------------------------------
-- BÔNUS

SELECT schools.id, schools.name, courses.name AS course, companies.name AS company, roles.name AS role FROM schools
JOIN educations
ON schools.id = educations."schoolId"
JOIN courses
ON educations."courseId" = courses.id
JOIN applicants
ON educations."userId" = applicants."userId"
JOIN jobs
ON applicants."jobId" = jobs.id
JOIN companies
ON jobs."companyId" = companies.id
JOIN roles
ON jobs."roleId" = roles.id
WHERE companies.id = 10 AND roles.name = 'Software Engineer';

----------------------------------------

