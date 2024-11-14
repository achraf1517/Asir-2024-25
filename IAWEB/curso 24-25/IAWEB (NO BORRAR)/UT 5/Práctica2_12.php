<html>

<head>

</head>

<body>
<?php
        $precios = array("azúcar"=>2.7, "aceite"=>7, "arroz"=>1.5, "sal"=>0.6, "pollo"=>7, "tomates"=>1.3, "pan"=>0.6);
        $total = $precios['azúcar'];
        foreach ($precios as $producto => $valor) {
            if ($valor < $total) {
                $total = $valor;
            }
        }
        echo "El producto más barato tiene un precio de $total €.<br>";

        foreach ($precios as $producto => $valor) {
            if ($total == $valor) {
                echo "Los productos con el precio más barato son: $producto.<br>";
            }
        } 
    ?>
</body>

</html>