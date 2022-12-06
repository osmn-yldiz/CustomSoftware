<?php
error_reporting(0);
ini_set("display_errors", 1);
ob_start();
session_start();

if(gethostname() == "DESKTOP-3MDJGFT"){
	try {
		$db = new PDO("mysql:host=localhost; dbname=mobilya_sitesi_2; charest=utf8", 'osman', 'Oy621207.');
		$db->query("SET NAMES 'UTF8'");
	//echo 'Veritabanı Bağlantısı Başarılı';
	} catch (Exception $e) {
		echo $e->getMessage(); 
	}

	$URL = "http://localhost:8080/osman/mobilya_sitesi/";
	$DOCUMENT_ROOT = "C:/xampp/htdocs/osman/mobilya_sitesi/";
}
else{
	try {
		$db = new PDO("mysql:host=localhost; dbname=u0422818_mobilya_sitesi; charest=utf8", 'u0422818_mobilya_sitesi', 'Oy621207.');
		$db->query("SET NAMES 'UTF8'");
	//echo 'Veritabanı Bağlantısı Başarılı';
	} catch (Exception $e) {
		echo $e->getMessage(); 
	}

	$URL = "http://mobilyayildiz.com/";
	$DOCUMENT_ROOT = "/home/u0422818/mobilyayildiz.com/";
}

?>