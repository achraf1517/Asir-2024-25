<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $total = $precios['azúcar'];
        foreach ($precios as $producto => $valor) {
            if ($valor < $total) {
                $total = $valor;
            }
        }
        echo "El producto más barato tiene un precio de $total €.";
    ?>
</body>

</html>