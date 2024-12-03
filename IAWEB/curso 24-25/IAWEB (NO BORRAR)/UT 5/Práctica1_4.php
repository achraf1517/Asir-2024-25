
4. Programar un script en PHP que permita obtener y mostrar la nota más alta obtenida por los
alumnos de 1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con bucle
foreach.

<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $max = $notas[0];
        for ($i=0; $i<$size; $i++):
            if ($notas[$i]>$max):
                $max = $notas[$i];
            endif;
        endfor;
        echo "La nota más alta de ASIR es: $max";
    ?>
</body>

</html>