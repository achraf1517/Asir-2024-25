<!DOCTYPE html>
<html lang="es">
 <head>
 
 <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
 </head>
 <body>
    <?php 
    //datos de entrada
    $lado = $_POST ['lado']
    //procesar los datos de entrada 
    //para ibtener resultados

    $area = pow($lado,2);

    //diseñar la pantalla de salida 
    //echo ''
    echo 'lado = ' .$lado;
    echo '<br/> Área = ' .$area;
    
    //echo ""
    echo "<br/><br/><br/>";
    echo "lado = $lado";
    echo "<br/> Área = $area";

    ?>

 </body>
</html>