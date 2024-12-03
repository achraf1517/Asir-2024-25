

11. Programar un script en PHP que permita calcular y mostrar el precio del producto más caro.
Y el nombre de todos los productos con dicho precio.


<html>

<head>

</head>

<body>
<?php
        $precios = array("azúcar"=>2.7, "aceite"=>7, "arroz"=>1.5, "sal"=>0.8, "pollo"=>7, "tomates"=>1.3, "pan"=>0.6);
        $total = $precios['azúcar'];
        foreach ($precios as $producto => $valor) {
            if ($valor > $total) {
                $total = $valor;
            }
        }
        echo "El producto más caro tiene un precio de $total €.<br>";

        foreach ($precios as $producto => $valor) {
            if ($total == $valor) {
                echo "Los productos con el precio más caros son: $producto.<br>";
            }
        } 
    ?>
</body>

</html>