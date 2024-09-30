<!DOCTYPE html>
<html lang="es">
 <head>
 
 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
 </head>
 <body>
    <?php 

    define('PI', 3.1416);
    $radio=3; 
    $longitud=2*PI*$radio;
    $Área=PI*$radio*$radio;
    $volumen=4/3*PI*$radio*$radio*$radio;
    

    echo "Radio = $radio <br>"; 
    echo "Longitud = $longitud <br>"; 
    echo "Área = $Área <br>"; 
    echo "Volumen = $volumen <br>"; 
    
    ?>

 </body>
</html>