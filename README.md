# PROYECTO SQL
![videoclub](https://github.com/Barge7/Proyecto-SQL/blob/main/img/videoclub.jpg)

## Introducción

Obtenemos una parte de la base de datos de un videoclub, la cual limpiaremos para un posterior análisis mediante consultas de SQL.


## Limpieza

Se procede a la limpieza de 7 tablas:
1. Actor.  
    Se unifica el nombre de los actores en una sola columna
    Se descubre los id de un actor repetido, se elimina uno de ellos
2. Category.
    Limpieza rápida
3. Film.
    Se borra la columna de 'original_language_id' porque sólo tiene nulos
    Se unifica la escritura de todas las columnas
    Se aclara la descripción de la columna 'rating'
4. Inventory.
    Limpieza rápida
5. Language.
    Limpieza rápida
6. Old_HDD.
    Se realiza la conexión con la columna 'film' y 'actor' incorporando columnas con los id       correspondientes