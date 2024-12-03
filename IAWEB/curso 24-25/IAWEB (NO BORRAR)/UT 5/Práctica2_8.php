

8. Programar un script en PHP que permita mostrar si hubo o no algún producto con precios
superiores a 3 euros. Si hay algún producto muestra el siguiente mensaje: 
"Hay algún producto con precios superiores a 3 euros" y sino hay ninguno muestra el siguiente mensaje
"No hay ningún producto con precios superiores a 3 euros". Obligatoriamente debes utilizar
una variable de tipo boolean.


<html>

<head>

</head>

<body>
    <?php
        $precios = array("azúcar"=>2.7, "aceite"=>4, "arroz"=>1.5, "sal"=>0.8, "pollo"=>2.4, "tomates"=>1.3, "pan"=>0.6);
        $mayor_que_3 = false;
        foreach ($precios as $producto => $valor) {
            if ($valor > 3) {
                $mayor_que_3 = true;
                break;
            }
        }
        echo "Ha habido algún producto con un precio mayor a 3€: ".($mayor_que_3 ? "Sí" : "No");
    ?>
</body>

</html>