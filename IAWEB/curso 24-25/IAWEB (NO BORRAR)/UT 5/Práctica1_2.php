
2.Programar un script en PHP que permita contar y mostrar el número de alumnos con notas
superiores a 5 e inferiores a 9 de los alumnos repetidores de 1º ASIR en GBD. Debes
hacerlo de dos formas: con el bucle for y con bucle foreach.



<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $aprobados = 0;
        $suspensos = 0;
        for($i=0; $i<$size; $i++):
            if ($notas[$i] >= 5):
                $aprobados++;
            elseif ($notas[$i] < 5):
                $suspensos++;
            endif;
        endfor;
        echo 'El total de alumnos que han aprobado es: '.$aprobados.' y el total de suspensos es: '.$suspensos.'';
    ?>
</body>

</html>