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