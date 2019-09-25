<html>
    
    <head>
        <title>Tugas 2</title>
    </head>

    <body>

        <h1>Nilai</h1>
        <form method='POST' action='tugas_2.php'>
        <p>Masukan Angka :   <input type='text' name='nilai' size='3'></p>
        <p><input type='submit' value='Proses' name='submit'></p>
        <form>

        <?php
        error_reporting (E_ALL ^ E_NOTICE);
        $nilai = $_POST['nilai'];
        $submit = $_POST['submit'];
            if($nilai%2==0){
                echo "$nilai = Bilangan Genap";
            }else{
                echo "$nilai = Bilangan Ganjil";
            }
        ?>

    </body>

</html>