



3.Programar un script en PHP que permita calcular y mostrar la nota media de los alumnos de
1º ASIR en GBD. Debes hacerlo de dos formas: con el bucle for y con bucle foreach.

<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $total = 0;
        for($i=0; $i<$size; $i++):
            $total+=$notas[$i];
        endfor;
        $media=($total/$size);
        echo "La media de las notas de ASIR es de: $media";
    ?>
</body>

</html>