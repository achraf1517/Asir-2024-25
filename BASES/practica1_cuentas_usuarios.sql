1. Conectarse localmente con el usuario "root" de forma corta y después comprobar el usuario 
con el que has entrado al servidor.

shell> mysql -uroot
mysql> select user();

2. Contesta: 

a) ¿Cómo se llama la tabla qué almacena las cuentas de usuario? 

user

b) ¿A qué base de datos pertenece esa tabla?

mysql

3. Mostrar usuario, host y password de todas las cuentas de ususario.

mysql> select user,host, authentication_string 
        from mysql.user;

select user,host, authentication_string from mysql.user;
+------------------+-----------+------------------------------------------------------------------------+
| user             | host      | authentication_string                                                  |
+------------------+-----------+------------------------------------------------------------------------+
| mysql.infoschema | localhost | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED |
| mysql.session    | localhost | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED |
| mysql.sys        | localhost | $A$005$THISISACOMBINATIONOFINVALIDSALTANDPASSWORDTHATMUSTNEVERBRBEUSED |
| root             | localhost |                                                                        |
+------------------+-----------+------------------------------------------------------------------------+


4. Crear una cuenta de usuario llamada "usuario1" y contraseña "usuario1" para acceder en 
modo local con todos los privilegios o permisos sobre todas las tablas de todas las BBDD.

mysql>  GRANT ALL PRIVILEGES 
        ON *.*
        TO usuario1@localhost;  /*damos todos los permisos*/

5. Crear una cuenta de usuario llamada "usuario2" sin contraseña para acceder en modo local 
con el permiso SELECT sobre todas las tablas de todas las BBDD.

mysql>  GRANT SELECT 
        ON *.*
        TO usuario2@localhost; 
        /*no es posible; apartir de la version 5.7.40 
        con la instruccion GRANT no pueden crear usuarios sin contraseña*/ 

mysql>  GRANT SELECT 
        ON *.*
        TO usuario2@localhost; /*damos permisos de select*/



6. Cuando se hace una conexión al servidor MySQL la identifica por el hostname. ¿Qué partes 
tiene el hostname?

    - el host desde el cual se hace la conexión;
    es decir, el nombre de maquina cliente (o IP)
  
7. Mostrar usuario, host y password de todas las cuentas de ususario.

mysql>  select user,host, authentication_string 
        from mysql.user;

8. Investigar algún campo más de la tabla user de la BBDD mysql. Explica que información 
muestran los siguientes campos: select_priv, insert_priv y c. delete_priv.

mysql>  select user,host, 
        select_priv, insert_priv, delete_priv 
        from mysql.user;

+------------------+-----------+-------------+-------------+-------------+
| user             | host      | select_priv | insert_priv | delete_priv |
+------------------+-----------+-------------+-------------+-------------+
| mysql.infoschema | localhost | Y           | N           | N           |
| mysql.session    | localhost | N           | N           | N           |
| mysql.sys        | localhost | N           | N           | N           |
| root             | localhost | Y           | Y           | Y           |
| usuario1         | localhost | N           | N           | N           |
| usuario2         | localhost | N           | N           | N           |
+------------------+-----------+-------------+-------------+-------------+

mysql> select * from mysql.user \G


9. Investigar los campos de la tabla db de la BBDD mysql. Explica que información muestran 
los siguietes campos: select_priv, insert_priv y c. delete_priv.

a.  select_priv: permite (Y) o no (N) 
    consultar información de todas las tablas de todas las BBDD.

b.  insert_priv: permite (Y) o no (N) 
    insertar nuevos registros en todas las tablas de todas las BBDD.

c.  delete_priv:  permite (Y) o no (N) borrar registros existentes
    en todas las tablas de todas las BBDD.


mysql>  select user,host, 
        select_priv, insert_priv, delete_priv 
        from mysql.db;

+---------------+-----------+-------------+-------------+-------------+
| user          | host      | select_priv | insert_priv | delete_priv |
+---------------+-----------+-------------+-------------+-------------+
| mysql.session | localhost | Y           | N           | N           |
| mysql.sys     | localhost | N           | N           | N           |
+---------------+-----------+-------------+-------------+-------------+

mysql> select * from mysql.db \G



10. Muestra   únicamente   los   privilegios   o   permisos   que   tiene   asignado   el   usuario 
"usuario2@localhost"

/*muestrame la creacion del usuarios*/

mysql> SHOW GRANTS FOR usuario2@localhost; 

+-----------------------------------------------+
| Grants for usuario2@localhost                 |
+-----------------------------------------------+
| GRANT SELECT ON *.* TO `usuario2`@`localhost` |
+-----------------------------------------------+

mysql> SHOW GRANTS FOR usuario1@localhost;


/* creacion de usuarios*/

create user 'usuario1'@'localhost' IDENTIFIED by 'usuario1';

create user 'usuario2'@'localhost' IDENTIFIED by 'usuario2';