

6. Programar un script en PHP que permita mostrar si hubo o no algún alumno con una nota de
10 en GBD de 1º ASIR. Obligatoriamente debes trabajar con una variable de tipo boolean
(que tome los valores true o false). Debes hacerlo de dos formas: con el bucle for y con
bucle foreach.


<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $es_10 = false;
        for ($i=0; $i<$size; $i++):
            if ($notas[$i]==10):
                $es_10 = true;
            endif;
        endfor;
        echo "¿Ha habido algún 10 en ASIR?: " . ($es_10 ? "Sí" : "No");
    ?>
</body>

</html>