<?php
	function categoriesList() {

	global $db;

	$result = $db->prepare("SELECT * FROM categories");
	$result->execute();
	$line = $result->fetchAll(PDO::FETCH_OBJ);
	return $line;

}
?>