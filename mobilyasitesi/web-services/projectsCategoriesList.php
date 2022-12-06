<?php 
include 'includes/config.php';
include 'includes/functions.php';

header("content-type:application/json");

$rawData = file_get_contents("php://input",TRUE);
$data = json_decode($rawData); // json dosyası array çeviriyor. (json parse ediyor)

if(empty($data->hash)){
	$errEmpty[] = "Hash gönderilmedi.";
}

if(!empty($data->hash)){
	$hash = $data->hash;
	$hash = base64_decode($hash);

	if($hash != "jkjkjkjkjkmgmfmhmtmsmsmgllakdtkdkasdadfjkjkjkjkjkmgmfmhmtmsmsmgllakdtkdkasdadf"){
		$errOther[] = "Hatalı Hash.";
	}
}


if(count($errOther) == 0 && count($errEmpty) == 0){
	//fonkisyon yazcaz.
	$responseArray = projectsCategoriesList();
	print json_encode($responseArray);
}else{
	$dataError = array("errOther" => $errOther, "errEmpty" => $errEmpty);
	print json_encode($dataError);
}

?>