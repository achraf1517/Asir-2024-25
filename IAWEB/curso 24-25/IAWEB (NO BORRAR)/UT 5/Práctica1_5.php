<html>

<head>

</head>

<body>
    <?php
        $notas=array(6,7,4,9,2,1,5,1);
        $size=count($notas);
        $min = $notas[0];
        for ($i=0; $i<$size; $i++):
            if ($notas[$i]<$min):
                $min = $notas[$i];
            endif;
        endfor;
        echo "La nota más baja de ASIR es: $min";
    ?>
</body>

</html>