<?php  

include 'config.php';
include 'functions.php';

loginControl();

if(isset($_GET['ID'])){
	$ID  = $_GET['ID'];
	$result = categoriesmainDelete($ID);
	if($result){
		header('location: categoriesmain.php');
		exit;
	}
}

?>