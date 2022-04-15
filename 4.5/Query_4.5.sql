/*4.5 En base a las asignaciones vigentes en marzo y considerando que cada día laborable (lun-vie) es de 8 hrs, calcular el total de horas trabajadas 
durante marzo por todos los usuarios.*/

SELECT COUNT(USERS.ID)*23*8 AS TOTAL_HOURS_WORKED
FROM ASSIGNMENTS
INNER JOIN USERS
ON USERS.ID=ASSIGNMENTS.USER_ID
WHERE END_DATE >= '2022-03-01' AND END_DATE <= '2022-03-31' AND USERS.ENABLED = TRUE;
