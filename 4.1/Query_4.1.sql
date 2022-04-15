/*4.1 Obtener la lista de usuarios (name, handle, email) que están activas (enabled) y no tienen imagen de perfil, ordenados alfabéticamente por nombre.*/

SELECT NAME, HANDLE, EMAIL
FROM USERS 
WHERE ENABLED = TRUE AND IMAGE IS NULL
ORDER BY NAME ASC;