<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_GET['ID'])){
	$ID  = $_GET['ID'];
	$result = categoriesDelete($ID);
	if($result){
		header('location: categories.php?categoriesMainID='.$_GET['categoriesMainID']);
		exit;
	}
}

?>