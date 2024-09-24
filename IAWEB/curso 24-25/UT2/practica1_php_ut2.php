<!DOCTYPE html>
<html lang="es">
 <head>
 
 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
 </head>
 <body>
    <?php 
    $numero1=9; 
    $numero2=4;
    $suma=$numero1+$numero2;
    $multiplicación=$numero1*$numero2;
    $división=$numero1/$numero2;
    
    //dobles
    echo "cuando se suma el $numero1 con el $numero2 da como resultado $suma<br>"; 
    echo "cuando se multiplica el $numero1 con el $numero2 da como resultado $multiplicación<br>";
    echo "cuando se divide el $numero1 con el $numero2 da como resultado $división<br>";


      echo '<br>';
   echo  'comillas simples abajo <br>';
      echo '<br>';

   //simples
    echo 'cuando se suma el '.$numero1. ' con el '.$numero2. ' da como resultado '.$suma.'<br>'; 
    echo 'cuando se multiplica el '.$numero1. ' con el '.$numero2. ' da como resultado '  .$multiplicación. '<br>';
    echo 'cuando se divide el '.$numero1. ' con el '.$numero2. ' da como resultado '  .$división. '<br>';

    ?>

 </body>
</html>