<?php
    session_start();
    echo "Anda berhasil Login sebagai ".$_SESSION['username']." Dan anda terdaftar sebagai ".$_SESSION['status'];
    ?>
    <br>

    Silahkan Logout dengan klik link <a href='logout.php'> Disini </a>