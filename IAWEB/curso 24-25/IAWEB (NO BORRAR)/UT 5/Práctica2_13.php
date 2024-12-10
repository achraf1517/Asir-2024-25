<html>

<head>

</head>

<body>
<?php
        $precios = array("azúcar"=>2.7, "aceite"=>7, "arroz"=>1.5, "sal"=>0.6, "pollo"=>7, "tomates"=>1.3, "pan"=>0.6);
        $sal = false;
        $dineros = 0;
        foreach ($precios as $producto => $valor) {
            if ($producto == "sal"){
                $sal = true;
                $dineros = $valor;
            }
        }

        if ($sal == true) {
            echo "Hay sal y cuesta $dineros";
        }
        else {
            echo "No hay sal";
        }
    ?>
</body>

</html>