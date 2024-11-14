<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $total = 0;
        for($i=0; $i<$size; $i++){
            if ($notas[$i] >= 5):
                $total++;
            endif;
        }
        echo "El total de alumnos que han aprobado es: $total";
    ?>
</body>

</html>