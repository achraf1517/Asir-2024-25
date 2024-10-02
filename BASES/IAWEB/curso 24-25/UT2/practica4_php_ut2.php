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

    //manera para ^x al largo
    $Área=PI*$radio*$radio;

    //manera de ^x (con el pow) de buena manera
    $area=PI * pow($radio,2);

    //otra manera de ^x con (**)
    $areita=PI * $radio**2;

    //manera para ^x al largo
    $volumen=4/3*PI*$radio*$radio*$radio;

    //manera de ^x (con el pow) de buena manera
    $volumencito= 4/3*PI*$radio**3;

    //otra manera de ^x con (**)
    $volumenazo= 4/3*PI* pow ($radio,3);



    //echo con dobles comillas 
   
    echo "Radio = $radio <br>"; 
    echo "Longitud = $longitud <br>"; 
    echo "Área = $Área <br>"; 
    echo "area = $area <br>"; 
    echo "areita = $areita <br>";
    echo "Volumen = $volumen <br>"; 
    echo "Volumencito = $volumencito <br>";
    echo "Volumenazo = $volumenazo <br>";

    echo '<br>';
   
    //echo con simples comillas 

    echo 'Radio = '.$radio.'<br>'; 
    echo 'Longitud = '.$longitud. '<br>'; 
    echo 'Área = '.$Área. '<br>'; 
    echo 'area = '.$area. '<br>'; 
    echo 'areita = '.$areita. '<br>';
    echo 'Volumen = '.$volumen. '<br>'; 
    echo 'Volumencito = '.$volumencito. '<br>';
    echo 'Volumenazo = '.$volumenazo. '<br>';
    
    ?>

 </body>
</html>