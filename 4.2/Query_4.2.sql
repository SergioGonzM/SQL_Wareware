/*4.2 Obtener la lista de usuarios (name, handle) que están activos, saben elixir al menos en un nivel competent y además saben aws en 
cualquier nivel. (Los niveles de competencia son, en orden: novice, advanced_beginner, competent, proficient, expert)*/

SELECT DISTINCT USERS.NAME, USERS.HANDLE
FROM USERS
INNER JOIN USER_SKILLS
ON USER_SKILLS.USER_ID=USERS.ID
WHERE USERS.ENABLED = TRUE AND USER_SKILLS.SKILL_ID = 1 AND USER_SKILLS.LEVEL IN ('competent', 'proficient', 'expert') OR USER_SKILLS.SKILL_ID =  13
GROUP BY USERS.NAME, USERS.HANDLE
HAVING COUNT(USERS.NAME) = 2
ORDER BY USERS.NAME ASC; 

