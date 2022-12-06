<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_GET['ID'])){
	$ID  = $_GET['ID'];
	$result = productsimagesDelete($ID);
	if($result){
		header('location: products-images.php?productsID='.$_GET['productsID']);
		exit;
	}
}

?>