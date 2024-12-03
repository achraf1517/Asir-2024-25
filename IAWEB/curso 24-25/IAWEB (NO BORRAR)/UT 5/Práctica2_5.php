
5. Programar un script en PHP que permita calcular y mostrar el porcentaje de productos con
precios superiores o iguales al precio medio.

<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $total = 0;
        foreach ($precios as $producto => $valor) {
            if ($valor >= 1.9) {
                $total += 1;
            }
        }
        $porcentaje = ($total/count($precios))*100;
        echo "Hay un porcentaje del $porcentaje % de productos con un precio mayor a la media de 1.9€";
    ?>
</body>

</html>