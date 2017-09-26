<?php


// VERİTABANI BAGLANTISI

try
{
	$db=new PDO("mysql:host=localhost;dbname=pdofirma;charset=utf8",'root','');
//	echo "baglanti basarili";
}
catch(PDOException $e)
{
	echo $e->getMessage();
}


?>