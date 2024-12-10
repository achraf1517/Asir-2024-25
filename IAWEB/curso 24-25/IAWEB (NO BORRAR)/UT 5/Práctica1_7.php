<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $total = 0;
        for($i=0; $i<$size; $i++){
            if ($notas[$i] < 3):
                $total++;
            endif;
        }
        $porcentaje=($total/$size)*100;
        echo "El porcentaje de alumnos que han sacado menos de un 3 es: $porcentaje %";
    ?>
</body>

</html>