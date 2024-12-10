1. Conectarte localmente con el usuario "root" de forma corta y después comprobar el usuario 
con el que has entrado al servidor.

shell> mysql -uroot
mysql> SELECT user();


2. Crear una cuenta de usuario llamada "usuario3" y contraseña "user3" para acceder en modo 
local con todos los privilegios o permisos sobre todas las tablas de la BBDD “curso”.

create user 'usuario3'@'localhost' IDENTIFIED by 'user3';

mysql>  GRANT ALL PRIVILEGES
        ON *.*
        TO usuario3@localhost;




3. Crear una cuenta de usuario llamada "usuario4" sin contraseña para acceder en modo local 
con el permiso SELECT,INSERT sobre todas las tablas de la BBDD “curso”.

create user 'usuario4'@'localhost' IDENTIFIED by 'usuario4';

mysql>  GRANT SELECT, INSERT
        ON *.*
        TO usuario4@localhost;


4. Mostrar los campos user, host y password de la tabla user de la BBDD mysql.

mysql> select user,host, authentication_string 
        from mysql.user;

5. Mostrar los campos host, db y user de la tabla db de la BBDD mysql.

mysql> select host, db, user
        from mysql.db;


6. Como sabes el “usuario4” se ha creado sin contraseña. Deseamos asignarle la contraseña 
"usuario4".  ¿Cuál/es de las siguientes formas es válida?. Para la/las formas válidas debes 
indicar todos los pasos.

a) Conectado desde el usuario3. 
b) Conectado desde el usuario4.
c) Conectado desde el usuario1.


7. Como sabes el “usuario3” se ha creado con contraseña. Deseamos asignarle una nueva 
contraseña "usuario3".  ¿Cuál/es de las siguientes formas es válida?. Para la/las formas 
válidas debes indicar todos los pasos. 

a) Conectado desde el usuario3. 
b) Conectado desde el usuario4.


8. Desconectarte como usuario root. Volver a conectarte localmente con el usuario "usuario3" 
de forma corta y comprobar el usuario con el que has entrado al servidor. 


9. Muestra   únicamente   los   privilegios   o   permisos   que   tiene   asignado   el   usuario 
"usuario3@localhost".


10. Desde "usuario3@localhost" crea una nueva BBDD llamada "instituto". Si no es posible 
explica por qué.


11. Desconectarte como "usuario3@localhost". Volver a conectarte localmente con el usuario 
"usuario1@localhost" de forma corta y comprobar el usuario con el que has entrado al 
servidor.


12. Muestra   únicamente   los   privilegios   o   permisos   que   tiene   asignado   el   usuario 
usuario1@localhost.


13. Desde "usuario1@localhost" crea una nueva BBDD llamada "instituto". Si no es posible 
explica por qué. 


14. Desconectarte como "usuario1@localhost". Volver a conectarte localmente con el usuario 
"usuario3@localhost" de forma corta y comprobar el usuario con el que has entrado al 
servidor.


15. Desde "usuario3@localhost" crea una tabla llamada "alumasir2" en la BBDD "curso". Si no 
es posible explica por qué.

CAMPO TIPO NULO VALOR POR 
DEFECTO
nlista entero de longitud 2, 
autoincremental
 no, clave primaria           
nombre cadena longitud 40 no   
notaiaweb entero de longitud 2 no        
notaasgbd entero de longitud 2 no      


16. Inserta los siguientes datos en la tabla "alumasir2". Si no es posible explica por qué.
nlista nombre notaiaweb notaasgbd
1 Carlos Casas Cuerda 4 5
2 Jorge Iglesias Vela 6 8


17. Desconectarte como usuario "usuario3".Volver a conectarte localmente con el usuario 
"usuario4" de forma corta y comprobar el usuario con el que has entrado al servidor.


18. Muestra   únicamente   los   privilegios   o   permisos   que   tiene   asignado   el   usuario 
"usuario4@localhost". Si no es posible explica por qué.




19. Muestra todos los datos de la tabla "alumasir2". Si no es posible explica por qué.



20. Inserta los siguientes datos. Si no es posible explica por qué.

nlista nombre notaiaweb notaasgbd
3 Irene Rosas Madrid 6 8
21. Modifica la nota del módulo de IAWEB a todos los alumnos, subiéndoles 1 punto. Si no es 
posible explica por qué.
22. Borra a los alumnos cuya nota es un 5 en el módulo de ASGBD. Si no es posible explica por 
qué.