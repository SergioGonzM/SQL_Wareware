/*4.3 Obtener la lista de los 10 usuarios activos (name, handle) que son los que tienen menos skills registrados, ordenados de menor a mayor. Ejemplo:
name, handle, email, count_skills
Agustín Ramos, @MachinesAreUs, agustin@bunsan.io, 1
Amir Orbe, @AmirOrbe, amir.orbe@bunsan.io, 2
Juan Galicia, @ga_c, juan.galicia@bunsan.io, 4
...*/

SELECT USERS.NAME, USERS.HANDLE, USERS.EMAIL, COUNT(USER_SKILLS.USER_ID) AS COUNT_SKILLS
FROM USERS
INNER JOIN USER_SKILLS
ON USER_SKILLS.USER_ID=USERS.ID
GROUP BY USERS.NAME, USERS.HANDLE, USERS.EMAIL
ORDER BY COUNT_SKILLS ASC
LIMIT 10;
