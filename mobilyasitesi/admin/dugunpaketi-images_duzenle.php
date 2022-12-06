<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_GET['ID'])){
	$ID  = $_GET['ID'];
	$result = dugunpaketimagesEdit($ID);

	print_r($result);
}

?>