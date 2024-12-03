
13. Programar un script en PHP que permita mostrar si hay o no “sal”. Si hay “sal” muestra el
siguiente mensaje: "Hay sal y su precio es xxx.dd euros" y sino hay muestra el siguiente
mensaje "No hay sal". Obligatoriamente debes utilizar una variable de tipo boolean.

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