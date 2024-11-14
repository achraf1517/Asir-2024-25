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