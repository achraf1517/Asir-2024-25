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