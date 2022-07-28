-- Questão 1)

SELECT COUNT("endDate") as "currentExperiences" 
FROM experiences;

-- Questão 2) 

SELECT u.id, COUNT(e.id) as educations
FROM users u
JOIN educations e
ON u.id=e."userId"
GROUP BY u.id;

-- Questão 3)

SELECT u.name as writer, COUNT(t) as testimonailCount
FROM users u 
JOIN testimonials t
ON t."writerId" = u.id
WHERE u.id=435
GROUP BY u.id ;

-- Questão 4)

SELECT MAX(salary) as maximumSalary , r.name as role
FROM jobs j
JOIN roles r
ON r.id = j."roleId"
WHERE j.active = true
GROUP BY r.name
ORDER BY maximumSalary ASC;


