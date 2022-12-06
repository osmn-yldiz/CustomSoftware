<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_POST['ekle'])){
	$result = categoriesAdd();

	print_r($result);
}

?>