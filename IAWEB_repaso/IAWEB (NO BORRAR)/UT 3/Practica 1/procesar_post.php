<?php
//Datos de entrada
$lado = $_POST['lado'];
//Procesar los datos de entrada para obtener los resultados
$area = pow($lado,2);
//Diseñar la pantalla de salida
echo 'Lado = '.$lado;
echo '<br/>&nbsp;&nbsp;&nbsp; Area = '.$area;

echo '<br/><br/><br/>';
echo "Lado = $lado";
echo "<br/>&nbsp;&nbsp;&nbsp; Area = $area";
?>