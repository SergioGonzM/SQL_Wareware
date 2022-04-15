# 4.1 
Obtener la lista de usuarios (name, handle, email) que están activas (enabled) y no tienen imagen de perfil, ordenados alfabéticamente por nombre.

# Query
```SQL
SELECT NAME, HANDLE, EMAIL
FROM USERS 
WHERE ENABLED = TRUE AND IMAGE IS NULL
ORDER BY NAME ASC;
```

# Resultados

![image](https://user-images.githubusercontent.com/99292588/163512423-f4c97851-2cbd-43cb-a58e-25ead2c754db.png)
