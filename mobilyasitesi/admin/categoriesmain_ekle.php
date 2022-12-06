<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_POST['ekle'])){
	$result = categoriesmainAdd();

	print_r($result);
}

?>