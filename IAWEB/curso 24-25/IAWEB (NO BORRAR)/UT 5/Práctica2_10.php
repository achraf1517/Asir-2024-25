<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $menor_que = false;
        foreach ($precios as $producto => $valor) {
            if ($valor < 1.5) {
                $menor_que = true;
                break;
            }
        }
        echo "Ha habido algún producto con un precio menor a 1.5€: ".($menor_que ? "Sí" : "No");
        foreach ($precios as $producto => $valor) {
            if ($valor < 1.5) {
                echo "<br>$producto -------> $valor";
            }
        } 
    ?>
</body>

</html>