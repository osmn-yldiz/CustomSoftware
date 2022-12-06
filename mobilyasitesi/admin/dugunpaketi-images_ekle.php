<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_POST['ekle'])){
	$result = dugunpaketimagesAdd();

	print_r($result);
}

?>