
                                                    /*==================================================================================*/
                                                    /*==================================================================================*/
                                                    /*=================================  PRACTICA 1 TEMA 11  ===========================*/
                                                    /*==================================================================================*/
                                                    /*==================================================================================*/


/*   Ejercicio 1  
accede a el servidor MySQL en el panel de wamp. A continuación desde una consola de MSDOS conéctate 
como usuario “root” y comprueba que has entrado como usuario “root”.
*/

mysql -u root -p 
select user();









/*   Ejercicio 2  
Crea una BBDD llamada “mi_club”. Dentro de la BBDD “mi_club”, crea dos tablas:
“cuotas” y “socios”. La estructura y los datos de cada una de las tablas son:
 */

/*Resuelto en el script de carmen con nombre:
    Script_Carmen_solucion_practica1_tema_11.sql
*/








/*   Ejercicio 3  
Crea un script llamado “ejercicio2_practica1_tema11_mysql.sql”. Dicho script lo debes
almacenar en C:\tema11.
*/

/*El fichero está almacenado en C:\ pero se llama  Script_Carmen_solucion_practica1_tema_11.sql */





/*   Ejercicio 4  
Desconéctate del servidor. Conéctate localmente con el usuario "root" y a la vez lanza el
script "C:\tema11\ejercicio2_practica1_tema11_mysql .sql" desde el cliente en modo
consola mysql, sin que se para la ejecución del script, aunque hubiese algún error . ¿Es
posible? Si has contestado que no explica por qué.
*/

exit
/* Abrimos CMD desde la ubicación de mysql.exe y nos conectamos al servidor ejecutando el 
script con "<" ignorando fallos con --force o -f*/
mysql -u root -p --force < C:/Script_Carmen_solucion_practica1_tema_11.sql








/*   Ejercicio 5  
Conéctate como usuario “root” y comprueba que has entrado como usuario “root”. A
continuación lanza el script "C:\tema11\ejercicio2_practica1_tema11_mysql.sql" desde el
servidor. ¿Es posible? Si has contestado que no explica por qué. 
*/

mysql -u root -p
select user()
source ruta_del_script.sql

O

\. ruta_del_script.sql

/* Para lanzar el script desde el servidor mysql utilizamos el comando "source" o su forma
abreviada "\."   */









/*   Ejercicio 6
¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden?
Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior
*/

/*Para conseguir esta información debemos consultar como fueron creadas las tablas con los
siguientes comandos*/

/*en caso de tener la base de datos mi_club en uso*/
show create table cuotas \G
show create table socios \G

/*en caso de NO tener la base de datos mi_club en uso*/
show create table mi_club.cuotas \G
show create table mi_club.socios \G

/*El resultado de la ejecución del comando para la tabla cuotas es el siguiente: */
mysql> show create table cuotas \G
*************************** 1. row ***************************
       Table: cuotas
Create Table: CREATE TABLE `cuotas` (
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `actividad` varchar(20) NOT NULL,
  `precio` float(7,2) NOT NULL,
  PRIMARY KEY (`codigo_actividad`,`pago`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
1 row in set (0.00 sec)


/*El resultado de la ejecución del comando para la tabla socios es el siguiente: */
mysql> show create table socios \G
*************************** 1. row ***************************
       Table: socios
Create Table: CREATE TABLE `socios` (
  `num_socio` int(4) NOT NULL AUTO_INCREMENT,
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`num_socio`,`codigo_actividad`),
  KEY `FK_SOCIOS_CUOTAS` (`codigo_actividad`)
) ENGINE=MyISAM AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1
1 row in set (0.00 sec)


/*
Como podemos observar, el comando show create table nombre_tabla nos muestra información 
detallada sobre la estructura de la tabla seleccionada como:
    - El tipo de dato para sus campos,
    - El tipo de tabla (referido con la palabra ENGINE)
    - El tipo de caracteres que entiende (referido con la palabra CHARSET)
En este caso figura ENGINE=MyISAM y CHARSET=latin1 por lo que concluímos que las tablas de la
base de datos "mi_club" son de tipo "MyISAM" y los caracteres que entiende son "latin1"

OJO: POR DEFECTO el tipo de tablas en esta versión de mysql es MyISAM y los datos que estas
pueden reconocer son "latin1"
*/







                                                                                            /*==================================================================================*/
                                                                                            /*==================================================================================*/
                                                                                            /*=================================  PRACTICA 1 TEMA 12  ===========================*/
                                                                                            /*==================================================================================*/
                                                                                            /*==================================================================================*/
                                                                                                        /*Apuntes bloque III desde la página 32 a la página 39.*/





/*
1. Arranca el servidor MySQL en el panel de wamp. A continuación desde una consola de MSDOS
conéctate como usuario “root” y comprueba que has entrado como usuario “root”.
*/

/*Nos situamos en el directorio deonde tenemos el .exe de mysql*/
shell> mysql -u root -p
mysql> SELECT USER();

/*El resultado de la ejecución de la sentencia select user() es el siguiente: */
+----------------+
| user()         |
+----------------+
| root@localhost |
+----------------+
1 row in set (0.00 sec)
/* Nos informa de cual es el usuario con el cual estamos conectados al servidor mysql */










/*
2. Ejecuta o lanza el script "C:\tema11\ejercicio2_practica1_tema11_mysql.sql" desde el
servidor. ¿Es posible? Si has contestado que no explica por qué.
*/

/*El fichero está almacenado en C:\ pero se llama  Script_Carmen_solucion_practica1_tema_11.sql */
source C:\Script_Carmen_solucion_practica1_tema_11.sql
/*Recordemos que [\.] puede sustituír a [source] */













/*
3. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden?
Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior.
*/


/*Igual que el ejercicio 6 del tema anterior... Carmen es mas pesada que un collar de melones...*/

/*Para conseguir la información soliditada en el enunciado sobre las tablas de la base de datos 
my_club debemos consultar como fueron creadas las tablas con los siguientes comandos*/

/*en caso de tener la base de datos mi_club en uso*/
show create table cuotas \G
show create table socios \G
/*en caso de NO tener la base de datos mi_club en uso*/
show create table mi_club.cuotas \G
show create table mi_club.socios \G

/*El resultado de la ejecución del comando para la tabla cuotas es el siguiente: */
mysql> show create table cuotas \G
*************************** 1. row ***************************
       Table: cuotas
Create Table: CREATE TABLE `cuotas` (
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `actividad` varchar(20) NOT NULL,
  `precio` float(7,2) NOT NULL,
  PRIMARY KEY (`codigo_actividad`,`pago`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1
1 row in set (0.00 sec)


/*El resultado de la ejecución del comando para la tabla socios es el siguiente: */
mysql> show create table socios \G
*************************** 1. row ***************************
       Table: socios
Create Table: CREATE TABLE `socios` (
  `num_socio` int(4) NOT NULL AUTO_INCREMENT,
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`num_socio`,`codigo_actividad`),
  KEY `FK_SOCIOS_CUOTAS` (`codigo_actividad`)
) ENGINE=MyISAM AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1
1 row in set (0.00 sec)

/*
Como podemos observar, el comando show create table nombre_tabla nos muestra información 
detallada sobre la estructura de la tabla seleccionada como:
    - El tipo de dato para sus campos,
    - El tipo de tabla (referido con la palabra ENGINE)
    - El tipo de caracteres que entiende (referido con la palabra CHARSET)
En este caso figura ENGINE=MyISAM y CHARSET=latin1 por lo que concluímos que las tablas de la
base de datos "mi_club" son de tipo "MyISAM" y los caracteres que entiende son "latin1"

OJO: POR DEFECTO el tipo de tablas en esta versión de mysql es MyISAM y los datos que estas
pueden reconocer son "latin1"
*/











/*
4. Crea un nuevo script "C:\tema12\InnoDB_latin1_practica1_tema12_mysql.sql" y lanzalo
desde el servidor. Obligatoriamente este nuevo script debe incluir para cada una de las
tablas:el tipo de tabla (InnoDB) y el tipo de caracteres que entiende (latin1) a través de la
línea ENGINE = InnoDB CHARACTER SET 'latin1'.
*/


/*Cogemos como base el script de caremen y lo modificamos de la siguiente forma:
    - Añadimos la linea ENGINE = InnoDB CHARACTER SET 'latin1' como la última linea
        de la creacion de la tabla y cerramos con ;
    - Cambiamos el nombre al script de carmen modificado por el que nos dice el enunciado.

La linea añadida al final de la sentencia de creación de la tabla quedaría tal que así:
*/
CREATE TABLE cuotas
( codigo_actividad 	CHAR(4) NOT NULL,
  pago 		ENUM('mensual','anual') NOT NULL DEFAULT 'mensual',
  actividad VARCHAR(20) NOT NULL,
  precio	FLOAT(7,2) NOT NULL,
CONSTRAINT PK_CUOTAS PRIMARY KEY (codigo_actividad,pago))
  ENGINE = InnoDB CHARACTER SET 'latin1'; 

/* Ahora ejecutamos el script */
mysql> source C:\tema12\InnoDB_latin1_practica1_tema12_mysql.sql /*Forma normal*/
                         ó
mysql> C:\tema12\InnoDB_latin1_practica1_tema12_mysql.sql  /*Forma abreviada*/













/*
5. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden?
Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior.
*/


/*En este caso ejecutamos de nuevo las sentencias para consultar los datos de la tabla*/

/*en caso de tener la base de datos mi_club en uso*/
show create table cuotas \G
show create table socios \G

/*en caso de NO tener la base de datos mi_club en uso*/
show create table mi_club.cuotas \G
show create table mi_club.socios \G

/*El resultado de la ejecución del comando para la tabla cuotas es el siguiente: */
mysql> show create table cuotas \G
*************************** 1. row ***************************
       Table: cuotas
Create Table: CREATE TABLE `cuotas` (
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `actividad` varchar(20) NOT NULL,
  `precio` float(7,2) NOT NULL,
  PRIMARY KEY (`codigo_actividad`,`pago`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1
1 row in set (0.00 sec)


/*El resultado de la ejecución del comando para la tabla socios es el siguiente: */
mysql> show create table socios \G
*************************** 1. row ***************************
       Table: socios
Create Table: CREATE TABLE `socios` (
  `num_socio` int(4) NOT NULL AUTO_INCREMENT,
  `codigo_actividad` char(4) NOT NULL,
  `pago` enum('mensual','anual') NOT NULL DEFAULT 'mensual',
  `nombre` varchar(15) NOT NULL,
  PRIMARY KEY (`num_socio`,`codigo_actividad`),
  KEY `FK_SOCIOS_CUOTAS` (`codigo_actividad`)
) ENGINE=InnoDB AUTO_INCREMENT=1003 DEFAULT CHARSET=latin1
1 row in set (0.00 sec)

/*
Como podemos observar, el comando show create table nombre_tabla ahora nos muestra
InnoDB después de la palabra clave "ENGINE" por lo que ahora las tablas cuotas y socios
son de tipo InnoDB*/












/*
6. Crea un nuevo script "C:\tema12\InnoDB_utf8_practica1_tema12_mysql.sql" y lanzalo
desde el servidor. Obligatoriamente este nuevo script debe incluir para cada una de las
tablas:el tipo de tabla (InnoDB) y el tipo de caracteres que entiende (utf8).
*/

/*Lo mismo que en el ejercicio 4 pero modificando también el CHARSET en la linea que
añadimos al final de la sentencia de creación de la tabla para establecer que los tipos 
de caracteres que entiende la tabla sean utf8 es decir, debemos añadir la linea:
    ENGINE = InnoDB CHARACTER SET 'utf8'*/

CREATE TABLE cuotas
( codigo_actividad 	CHAR(4) NOT NULL,
  pago 		ENUM('mensual','anual') NOT NULL DEFAULT 'mensual',
  actividad VARCHAR(20) NOT NULL,
  precio	FLOAT(7,2) NOT NULL,
CONSTRAINT PK_CUOTAS PRIMARY KEY (codigo_actividad,pago))
    ENGINE = InnoDB CHARACTER SET 'utf8'; 












/*
7. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden?
Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior.
*/

/* Lo mismo que el ejercicio 5 para comprobar que ahora ha cambiado también el CHARSET....
......... Es mas pesada que un sordo con un tambor*/











/*
8. Indica la ruta completa del directorio de datos.
*/

/*La carpeta que almacena los datos de las tablas se llama data y esta en la siguiente ruta:*/
C:\wamp\bin\mysql\mysql5.7.26\data










/*
9. Escribe en forma de árbol las carpetas y ficheros que se crean en el directorio de datos al
crear una nueva base de datos con tablas de tipo InnoDB.
*/

C:\wamp\bin\mysql\mysql15.7.26\data
                                mi_club
                                    cuotas.frm
                                    db.opt
                                    socios.frm
                                ib_logfile()
                                ib_logfile1
                                ibdata1











/*
10. Explica detalladamente qué almacenan cada uno de los ficheros que se crean en el directorio
de datos al crear una nueva base de datos con tablas de tipo InnoDB.
*/

/*IMPORTANTE: LEER PAGINAS DE LA 32 A LA 39*/
/*Resumen para contestar al enunciado:
    La carpeta correspondiente al nombre de la base de datos crea un único fichero por
    cada tabla con extensión .frm donde se describe la estructura de la tabla. Los datos
    e índices de todas las tablas. Por otro lado, todas las bases de datos se almacenan en 
    un mismo tablespace que consiste en un número reducido de ficheros del sistema operativo
    formado por: un fichero de datos llamado ibdata1 de 10MB autoextensible y dos ficheros de
    5MB cad uno llamados ib_logfile0 e ib_logfile1 
    */












/*
11. Crea un nuevo script "C:\tema12\MyISAM_utf8_practica1_tema12_mysql.sql" y lanzalo
desde el servidor. Obligatoriamente este nuevo script debe incluir para cada una de las
tablas:el tipo de tabla (MyISAM) y el tipo de caracteres que entiende (utf8).
*/

/* No puede ser... Es mas pesada que depilar a Chewaka */











/*
12. ¿De qué tipo son las tablas de la BBDD “mi_club”? ¿Qué caracteres entienden?
Obligatoriamente debes incluir los comandos que permiten mostrar la información anterior.
*/

/* No puede ser... No puedo más... Es mas inutil que un submarino descapotable  */












/*
13. Indica la ruta completa del directorio de datos.
*/

C:\wamp\bin\mysql\mysql15.7.26\data
/* Otra vez... Y dale la cabra al monte... Mas inutil que los codos de un playmobil */











/*
14. Escribe en forma de árbol las carpetas y ficheros que se crean en el directorio de datos al
crear una nueva base de datos con tablas de tipo MyISAM.
*/

C:\wamp\bin\mysql\mysql15.7.26\data
                                mi_club
                                    cuotas.frm 
                                    cuotas.MYD 
                                    cuotas.MYI 
                                    db.opt
                                    socios.frm
                                    socios.MYD
                                    socios.MYI
/*IMPORTANTE: LEER PAGINAS DE LA 32 A LA 39*/











/*
15. Explica detalladamente qué almacenan cada uno de los ficheros que se crean en el directorio
de datos al crear una nueva base de datos con tablas de tipo MyISAM.
*/

/*
Archivos con extensión [.frm]
Se trata de los archivos de formulario o descripción y contienen la estructura de la tabla, es decir
las columnas, el tipo de dato de cada columna, etc...

Archivos con extensión [.MYD]
Se trata de los archivos de datos y contienen las filas de la tabla, es decir, los datos.

Archivos con extensión [.MYI]
Se trata de los archivos que contienen los índices que se han creado sobre el archivo de datos.
*/










/*
16. Completa las siguientes frases:
    a) La tablas tipo MERGE no contienen datos por si mismas sino que ...
    b) Una condición indispensable para crear tablas MERGE es que …
    c) Borrar una tabla MERGE mediante drop no supone borrar las tablas …
    d) Al crear una tabla MERGE se generan dos ficheros uno de ellos con extensión …
*/

                                /*  NO ENTRA EN EL EXAMEN  */






/*
17. Completa las siguientes frases:
    a) Las tablas MEMORY se caracterizan por:
        • Almacenar...... TODOS LOS DATOS DE LA TABLA EN MEMORIA
        • Ser...... EXTREMADAMENTE RÁPIDAS PUESTO QUE NO NECESITAN NINGUN ACCESO A DISCO.
    b) Las tablas MEMORY son muy útiles para crear ....... TABLAS TEMPORALES
    c) Las tablas HEAP únicamente guardan en disco un fichero ........ CON EXTENSIÓN .FRM CON LA ESTRUCTURA
        DE LA TABLA.
*/








/*
18. Enumera los 6 tipos de tablas de MySQL o la 6 formas que tiene MySQL para el
almacenamiento interno de los datos:
*/

/*     
1. MyISAM ------------------> Importante
2. MERGE
3. MEMORY (HEAP)
4. BDB
5. ISAM
6. InnoDB ------------------> Importante

*/







