<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="content-type" content="text/html; charset=utf-8"/>
</head>
<body>
    <?php 

    function sumar10($num1) {
        $resul = $num1 + 10;
        return $resul;    
    }

    function restar10($num1) {
        $resul = $num1 - 10;
        return $resul;    
    }

    if (empty($_POST['numero'])) {

        echo 'ERROR: Obligatorio introducir un número';

    } else {

        $numero = $_POST['numero'];
        if ($numero >= 1 AND $numero <= 25) {

            if (empty($_POST['opcion'])) {

                echo "ERROR: Obligatorio introducir una opción";

            } else {

                $opcion = $_POST['opcion'];

                if ($opcion == 'suma10') {

                    $resultado = sumar10($numero);
                    echo $numero . ' + 10 = ' . $resultado;

                } else {

                    $resultado = restar10($numero);
                    echo $numero . ' - 10 = ' . $resultado;
                }
            }

        } else {

            echo "ERROR: El número debe estar entre 1 y 25";

        }
    }   
    ?>

    </br></br></br></br></br>
    <a href="practica4_UT6.html">Volver al formulario</a>

</body>
</html>
