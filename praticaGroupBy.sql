-- Questão 1)

SELECT COUNT("endDate") AS "currentExperiences" 
FROM experiences;

-- Questão 2) 

SELECT u.id, COUNT(e.id) AS educations
FROM users u
JOIN educations e
ON u.id=e."userId"
GROUP BY u.id;

-- Questão 3)

SELECT u.name AS writer, COUNT(t) AS "testimonailCount"
FROM users u 
JOIN testimonials t
ON t."writerId" = u.id
WHERE u.id=435
GROUP BY u.id ;

-- Questão 4)

SELECT MAX(salary) AS "maximumSalary" , r.name AS role
FROM jobs j
JOIN roles r
ON r.id = j."roleId"
WHERE j.active = true
GROUP BY r.name
ORDER BY "maximumSalary" ASC;

-- Questão Bônus 

SELECT s.name AS school, c.name AS course, COUNT(e) AS "studantsCount" 
FROM educations e
JOIN schools s 
ON s.id = e."schoolId"  
JOIN courses c 
ON c.id = e."courseId"
GROUP BY s.id, c.id
ORDER BY "studantsCount" DESC
LIMIT 3;
