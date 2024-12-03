

2. Programar un script en PHP que permita calcular y mostrar el porcentaje de productos entre
0.6 y 2.1 euros.

<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $total = 0;
        foreach ($precios as $producto => $valor) {
            if ($valor <= 2.1 and $valor >= 0.6) {
                $total ++;
            }
        }
        $porcentaje = ($total/count($precios))*100;
        echo "Hay un porcentaje del $porcentaje % de productos con un precio comprendido entre los 0.6€ y los 2.1€.";
    ?>
</body>

</html>