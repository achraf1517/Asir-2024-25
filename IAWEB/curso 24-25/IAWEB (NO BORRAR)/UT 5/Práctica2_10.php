

10. Programar un script en PHP que permita mostrar si hubo o no algún producto con 
precios inferiores a 1.5 euros. Si hay algún producto muestra el nombre y el precio de cada uno de
ellos en forma de listado y sino hay ninguno muestra el siguiente mensaje "No hay ningún
producto con precios inferiores a 3 euros". Obligatoriamente debes utilizar una variable de
tipo boolean.


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