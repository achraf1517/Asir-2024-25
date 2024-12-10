<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $total = 0;
        foreach ($precios as $producto => $valor) {
            if ($valor > 2.5) {
                $total += 1;
            }
        }
        echo "Hay un total de $total productos con un precio mayor de 2.5€.";
    ?>
</body>

</html>