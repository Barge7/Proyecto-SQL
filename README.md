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
    Se realiza la conexión con la columna 'film' y 'actor' incorporando columnas  
    con los id correspondientes  
    Se unifica el nombre de los actores en una sola columna  
7. Rental.  
    Se unifica el formato de la fecha en las columnas de 'rental_date' y 'return_date'  
    Se crea una nueva columna restando las dos fechas para su posterior comprobación  

## CONEXIÓN SQL

Se procede a realizar las conexiones con la interfaz para añadir las primary keys  
y sus posteriores relaciones entre tablas.  
![schema](https://github.com/Barge7/Proyecto-SQL/blob/main/img/schema.jpg)


## QUERYS EN SQL WORKBENCH

Se realizan consultas sobre la base de datos creada.  

### Se crea una tabla de verificación al devolver la película
![verificacion](https://github.com/Barge7/Proyecto-SQL/blob/main/img/verificacion.jpg)

### Creo una tabla con el cálculo de multa al davolver la película fuera de plazo. 1.5 por cada día de retraso
![retraso](https://github.com/Barge7/Proyecto-SQL/blob/main/img/retraso.jpg)

### Las 5 películas que más se alquilan
![cinco](https://github.com/Barge7/Proyecto-SQL/blob/main/img/cinco.jpg)

### El día que más películas se alquilaron
![dia](https://github.com/Barge7/Proyecto-SQL/blob/main/img/dia.jpg)

### Recaudación por categorías
![recaudacion](https://github.com/Barge7/Proyecto-SQL/blob/main/img/recaudacion.jpg)

### Películas en las que han participado cada actor, los 5 primeros
![actores](https://github.com/Barge7/Proyecto-SQL/blob/main/img/actores.jpg)

### Número de películas por categoría
![categoria](https://github.com/Barge7/Proyecto-SQL/blob/main/img/categoria.jpg)

### Las 3 películas menos alquiladas
![menos](https://github.com/Barge7/Proyecto-SQL/blob/main/img/menos.jpg)

### Recaudación de las películas más alquiladas, top 5
![recaudacion5](https://github.com/Barge7/Proyecto-SQL/blob/main/img/recaudacion%205.jpg)

### Películas más alquiladas de la categoría horror, top 3
![horror](https://github.com/Barge7/Proyecto-SQL/blob/main/img/horror.jpg)