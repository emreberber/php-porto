<?php 

ob_start();
session_start();

if(isset($_SESSION['kullanici_ad']))
{
    header('Location:production');
}
else
{
    header('Location:production/login.php');
}

//Kullanıcı giris yaptıgı anda ip adresini al ve kullanının tablosunda bulunan ip kısmına yaz


?>