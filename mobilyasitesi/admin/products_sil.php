<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_GET['ID'])){
	$ID  = $_GET['ID'];
	$result = productsDelete($ID);
	if($result){
		header('location: products.php?categoriesID='.$_GET['categoriesID']);
		exit;
	}
}

?>