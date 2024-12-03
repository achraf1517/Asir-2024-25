
//Ejercicio 1://

 $numero=5;
 if ($numero<10 ){
$numero=$numero/2;
 }
 echo " \$numero = $numero";

Ejercicio 2:

 $a=3;
 $b=5;
if ($a*$b==25){
$a=$a*4;
$b=$b*2;
}
 echo "\$a= $a  \$b= $b"  
Ejercicio 3:
 $numero = 5;
 if ($numero<10)
{$numero=$numero/2;}
 else
{$numero=$numero*2;}
 echo " \$numero = $numero";  
2º ASIR: Implantación de Aplicaciones Web                                                                                                         Pág:1 
IMPLANTACIÓN  DE  APLICACIONES  WEB
PHP   UT4: ESTRUCTURAS DE CONTROL
Ejercicio 4:
 $edad=15;
 if ($edad<1)
{$etapa="Bebé";}
 elseif ($edad<13)
{$etapa="Niñez";}
 elseif ($edad<17)
{$etapa="Adolescencia";}
 elseif ($edad<22)
{$etapa="Juventud";}
 elseif ($edad<71)
{$etapa="Madurez";}
 else
{$etapa="Vejez";}
 echo "Edad = $edad  &nbsp;&nbsp;&nbsp; Etapa = $etapa";  
 
Ejercicio 5:
 $ciudad="Soria"; 
 switch ($ciudad){
 case "Lugo":
$comunidad="Galicia";
break;
 case "Huesca":
$comunidad="Aragón";
break;
 case "Soria":
$comunidad="Castilla León";
break;
 case "Almería":
$comunidad="Andalucía";
break;
 default:
$comunidad="Otra";  }
 echo "Ciudad = $ciudad  &nbsp;&nbsp;&nbsp; Comunidad = $comunidad";   
Ejercicio 6:
  
 $numero=23;
 if ($numero<10){
$numero=$numero/2;  }
echo " \$numero = $numero";    
 
2º ASIR: Implantación de Aplicaciones Web                                                                                                         Pág:2 
IMPLANTACIÓN  DE  APLICACIONES  WEB
PHP   UT4: ESTRUCTURAS DE CONTROL
 
Ejercicio 7:
 $a=3;
 $b=5;
 if ($a*$b<25){
$a=$a*4;
$b=$b*2;
}
 echo "\$a= $a  \$b= $b"   
Ejercicio 8:
 $ciudad="Soria";
 switch ($ciudad){
 case "Lugo":
$comunidad="Galicia";
break;
 case "Huesca":
$comunidad="Aragón";
break;
 case "Soria":
$comunidad="Castilla León";
 case "Almería":
$comunidad="Andalucía";
break;
 default:
$comunidad="Otra";
 }
 echo "Ciudad = $ciudad  &nbsp;&nbsp;&nbsp; Comunidad = $comunidad";    
 
 
Ejercicio 9:
 
Escribir los script de PHP de los ejercicios 1, 3, 4 y 5 con la sintaxis de los dos puntos.
 
 
 
Ejercicio 10:
 
Escribir el script de PHP del ejercicio 3 con el operador ternario ?: