<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_GET['ID'])){
	$ID  = $_GET['ID'];
	$result = dugunpaketimagesDelete($ID);
	if($result){
		header('location: dugunpaketi-images.php?productsID='.$_GET['productsID']);
		exit;
	}
}

?>