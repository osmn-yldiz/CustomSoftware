<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_POST['ekle'])){
	$result = productsimagesAdd();

	print_r($result);
}

?>