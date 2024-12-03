

4. Programar un script en PHP que permita calcular y mostrar el precio medio de los productos.


<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $total = 0;
        foreach ($precios as $producto => $valor) {
            $total += $valor;
        }
        $media = $total/count($precios);
        echo "El precio medio de los productos es de $media €";
    ?>
</body>

</html>