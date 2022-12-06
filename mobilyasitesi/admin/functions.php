<?php  

function loginControl(){
	if(intval($_SESSION['userID']) < 1){
		header("location: login.php");
		exit;
	}
}

//*************************************************************************************************************************************

function generateRandomString($length = 10) {
	$characters = 'abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ';
	$charactersLength = strlen($characters);
	$randomString = '';
	for ($i = 0; $i < $length; $i++) {
		$randomString .= $characters[rand(0, $charactersLength - 1)];
	}
	return $randomString;	
}

//*************************************************************************************************************************************

function categoriesmainFind($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("SELECT * FROM categoriesmain WHERE ID = ?");
	$result->execute(array($ID));
	$line = $result->fetch(PDO::FETCH_ASSOC);

	return $line;
}

function categoriesmainList() {
	global $db;

	$result = $db->prepare("SELECT *  FROM categoriesmain WHERE ISDELETED=0");
	$result->execute();
	$line = $result->fetchAll(PDO::FETCH_ASSOC);
	return $line;
}

function categoriesmainAdd() {
	global $db;

	if (isset($_POST['ekle'])) {
		$Name = $_POST['Name'];

		$sorgu = $db->prepare("INSERT INTO categoriesmain(Name) VALUES(?)");

		$ekle = $sorgu->execute([$Name]);
		if ($ekle) {
			header('location: categoriesmain.php');
		} else {
			$hata = $sorgu->errorInfo();
			echo 'mysql Hatası'.$hata[2];
		}           
	}
}

function categoriesmainDelete($ID) {
	global $db;

	$ID = intval($ID);

	//$result = $db->prepare("DELETE FROM categoriesmain WHERE ID=?");
	$result = $db->prepare("UPDATE categoriesmain SET ISDELETED=1 WHERE ID=?");
	if($result->execute(array($ID))) {
		return true;
	}else{
		return false;
	}
}

function categoriesmainEdit($ID) {
	global $db;

	if (isset($_POST['guncelle'])) {

		$Name = $_POST['Name'];

		$sorgu = $db->prepare("UPDATE categoriesmain SET Name=? WHERE ID = ?");

		$ekle = $sorgu->execute([$Name, $ID]);
		if ($ekle) {
			header('location: categoriesmain.php');
		} else {
			$hata = $sorgu->errorInfo();
			echo 'mysql Hatası'.$hata[2];
		}
	}
}

//*************************************************************************************************************************************

function categoriesFind($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("SELECT * FROM categories WHERE ID = ?");
	$result->execute(array($ID));
	$line = $result->fetch(PDO::FETCH_ASSOC);

	return $line;
}

function categoriesList($categoriesMainID) {
	global $db;

	$result = $db->prepare("SELECT *  FROM categories WHERE categoriesMainID=?");
	$result->execute(array($categoriesMainID));
	$line = $result->fetchAll(PDO::FETCH_ASSOC);
	return $line;
}

function categoriesAdd() {
	global $db;
	include 'class/class.upload.php';
	$errEmpty = array();
	$errOther = array();

	if (isset($_POST['ekle'])) {
		$Name = $_POST['Name'];
		$categoriesMainID = $_POST['categoriesMainID'];

		if (empty($Name)) {
			$errEmpty[] = "Alt kategori alanını boş bırakmayınız.";
		}

		if ($_FILES['Images']['name'] != '') {
			$handle = new Upload($_FILES['Images']);
			if ($handle->uploaded) {
				$handle->image_resize   = true;
	//$handle->image_resize          = true;
	//$handle->image_ratio_y         = true;
				$handle->image_x               = 200;
				$handle->image_y               = 113;
				$handle->auto_create_dir    = true;
				$handle->file_auto_rename   = true;
				$handle->file_safe_name   = true;
	//$handle->file_max_size    = $sql['img_upload_limit'];
				$handle->allowed      = array('image/jpeg','image/jpg','image/png');
				$handle->file_new_name_body = time()."-".generateRandomString(3);
				$targetPath = "../uploads/categories";
				$handle->process($targetPath);
				if ($handle->processed) {
					$Images = $handle->file_dst_name;
	   //$Images = $handle->file_new_name_body;
					$return = $targetPath. $handle->file_dst_name;
				}

			} else {
				$errOther[] = "Resim Yüklenemedi";
			}
		}

		if(count($errEmpty) == 0 && count($errOther) == 0)
		{
			$sorgu = $db->prepare("INSERT INTO categories(categoriesMainID, Name, Images) VALUES(?,?,?)");

			$ekle = $sorgu->execute([$categoriesMainID, $Name, $Images]);
			if ($ekle) {
				header('location: categories.php?categoriesMainID='.$categoriesMainID);
			} else {
				$hata = $sorgu->errorInfo();
				echo 'mysql Hatası'.$hata[2];
			}           
		}

		return array("errOther"=>$errOther, "errEmpty"=>$errEmpty);
	}
}

function categoriesDelete($ID) {
	global $db;


	if(!is_numeric($ID)){
		exit("Numeric değer değil");
	}

	$ID = intval($ID);

	$result = $db->prepare("DELETE FROM categories WHERE ID=?");
	if($result->execute(array($ID))) {
		unlink("../uploads/categories/".$_GET['Images']);
	//header('location: categories.php?categoriesMainID='.$_GET['categoriesMainID']);
		return true;
	}else{
		return false;
	}
}
function categoriesResimEdit($ID){
	global $db;
	include 'class/class.upload.php';
	if (!empty($_FILES['Images']['name'])) {
		$handle = new Upload($_FILES['Images']);
		if ($handle->uploaded) {
			$handle->image_resize   = true;
		  //$handle->image_resize          = true;
		  //$handle->image_ratio_y         = true;
			$handle->image_x               = 200;
			$handle->image_y               = 113;
			$handle->auto_create_dir    = true;
			$handle->file_auto_rename   = true;
			$handle->file_safe_name   = true;
		  //$handle->file_max_size    = $sql['img_upload_limit'];
			$handle->allowed      = array('image/jpeg','image/jpg','image/png');
			$handle->file_new_name_body = time()."-".generateRandomString(3);
			$targetPath = "../uploads/categories";
			$handle->process($targetPath);
			if ($handle->processed) {
				$Images = $handle->file_dst_name;
				$sorgu = $db->prepare("UPDATE categories SET Images=? WHERE ID = ?");
				$ekle = $sorgu->execute([$Images, $ID]);
		  //$Images = $handle->file_new_name_body;
				$return = $targetPath. $handle->file_dst_name;
			}

		} else {
			$errOther[] = "Resim Yüklenemedi";
		}
	}
}
function categoriesEdit($ID) {
	global $db;

	if (isset($_POST['guncelle'])) {
		categoriesResimEdit($ID);

		$Name = $_POST['Name'];
		$categoriesMainID = intval($_POST['categoriesMainID']);

		if($Name == ""){
			$errOther[] = "Alt kategori alanını boş bırakmayınız.";
		}

		if(count($errOther) == 0){
			$sorgu = $db->prepare("UPDATE categories SET Name=? WHERE ID = ?");

			$ekle = $sorgu->execute([$Name, $ID]);
			if ($ekle) {
				header('location: categories.php?categoriesMainID='.$categoriesMainID);
			} else {
				$hata = $sorgu->errorInfo();
				$errOther[] = 'mysql Hatası:'.$hata[2];
				$errOther[] = "Mysql sorgusu hatalı";
			}
		}
		return $errOther;
	}
}

//*************************************************************************************************************************************

function productsFind($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("SELECT * FROM products WHERE ID = ?");
	$result->execute(array($ID));
	$line = $result->fetch(PDO::FETCH_ASSOC);

	return $line;
}

function productsList($categoriesID) {
	global $db;

	$result = $db->prepare("SELECT *  FROM products WHERE categoriesID=?");
	$result->execute(array($categoriesID));
	$line = $result->fetchAll(PDO::FETCH_ASSOC);
	return $line;
}

function productsAdd() {
	global $db;

	if (isset($_POST['ekle'])) {
		$Name = $_POST['Name'];
		$Price = $_POST['Price'];
		$Measure = $_POST['Measure'];
		$Property = $_POST['Property'];
		$categoriesID = $_POST['categoriesID'];

		$sorgu = $db->prepare("INSERT INTO products(categoriesID, Name, Price, Measure, Property) VALUES(?,?,?,?,?)");

		$ekle = $sorgu->execute([$categoriesID, $Name, $Price, $Measure, $Property]);
		if ($ekle) {
			header('location: products.php?categoriesID='.$categoriesID);
		} else {
			$hata = $sorgu->errorInfo();
			echo 'mysql Hatası'.$hata[2];
		}           
	}
}

function productsDelete($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("DELETE FROM products WHERE ID=?");
	if($result->execute(array($ID))) {
		return true;
	}else{
		return false;
	}
}

function productsEdit($ID) {
	global $db;

	if (isset($_POST['guncelle'])) {

		$Name = $_POST['Name'];
		$Price = $_POST['Price'];
		$Measure = $_POST['Measure'];
		$Property = $_POST['Property'];
		$categoriesID = $_POST['categoriesID'];

		$sorgu = $db->prepare("UPDATE products SET Name=?, Price=?, Measure=?, Property=? WHERE ID = ?");

		$ekle = $sorgu->execute([$Name, $Price, $Measure, $Property, $ID]);
		if ($ekle) {
			header('location: products.php?categoriesID='.$categoriesID);
		} else {
			$hata = $sorgu->errorInfo();
			echo 'mysql Hatası'.$hata[2];
		}
	}
}

//*************************************************************************************************************************************

function usersList() {
	
	global $db;

	$result = $db->prepare("SELECT *  FROM users");
	$result->execute();
	if($result->rowCount() > 0) {
		$line = $result->fetch(PDO::FETCH_ASSOC);
		return $line;
	}
}

//*************************************************************************************************************************************

function ProfileFind($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("SELECT * FROM users WHERE ID = ?");
	$result->execute(array($ID));
	$line = $result->fetch(PDO::FETCH_ASSOC);

	return $line;
}

function ProfileList() {
	global $db;

	$result = $db->prepare("SELECT *  FROM users");
	$result->execute();
	$line = $result->fetchAll(PDO::FETCH_ASSOC);
	return $line;
}

function ProfileResimEdit($ID){
	global $db;
	include 'class/class.upload.php';
	if (!empty($_FILES['Images']['name'])) {
		$handle = new Upload($_FILES['Images']);
		if ($handle->uploaded) {
			$handle->image_resize   = true;
			 //$handle->image_resize          = true;
			 //$handle->image_ratio_y         = true;
			$handle->image_x               = 48;
			$handle->image_y               = 48;
			$handle->auto_create_dir    = true;
			$handle->file_auto_rename   = true;
			$handle->file_safe_name   = true;
			 //$handle->file_max_size    = $sql['img_upload_limit'];
			$handle->allowed      = array('image/jpeg','image/jpg','image/png');
			$handle->file_new_name_body = time()."-".generateRandomString(3);
			$targetPath = "../uploads/users";
			$handle->process($targetPath);
			if ($handle->processed) {
				$Images = $handle->file_dst_name;
				$sorgu = $db->prepare("UPDATE users SET Images=? WHERE ID = ?");
				$ekle = $sorgu->execute([$Images, $ID]);
			 //$Images = $handle->file_new_name_body;
				$return = $targetPath. $handle->file_dst_name;
			}

		} else {
			$errOther[] = "Resim Yüklenemedi";
		}
	}
}

function ProfileEdit($ID) {
	global $db;

	if (isset($_POST['guncelle'])) {
		ProfileResimEdit($ID);
		$Name = $_POST['Name'];
		$Email = $_POST['Email'];
		$Password = $_POST['Password'];

		$sorgu = $db->prepare("UPDATE users SET Name=?, Email=?, Password=? WHERE ID = ?");

		$ekle = $sorgu->execute([$Name, $Email, $Password, $ID]);
		if ($ekle) {
			header('location: profile.php');
		} else {
			$hata = $sorgu->errorInfo();
			echo 'mysql Hatası'.$hata[2];
		}
	}
}

//*************************************************************************************************************************************

function productsimagesFind($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("SELECT * FROM productsimages WHERE ID = ?");
	$result->execute(array($ID));
	$line = $result->fetch(PDO::FETCH_ASSOC);

	return $line;
}

function productsimagesList($productsID) {
	global $db;

	$result = $db->prepare("SELECT *  FROM productsimages WHERE productsID=?");
	$result->execute(array($productsID));
	$line = $result->fetchAll(PDO::FETCH_ASSOC);
	return $line;
}

function productsimagesAdd() {
	global $db;
	include 'class/class.upload.php';
	$errEmpty = array();
	$errOther = array();

	if (isset($_POST['ekle'])) {
		$Name = $_POST['Name'];
		$productsID = $_POST['productsID'];

		if (empty($Name)) {
			$errEmpty[] = "Ürün resim ad alanını boş bırakmayınız.";
		}

		if ($_FILES['Images']['name'] != '') {
			$handle = new Upload($_FILES['Images']);
			if ($handle->uploaded) {
				$handle->image_resize   = true;
	//$handle->image_resize          = true;
	//$handle->image_ratio_y         = true;
				$handle->image_x               = 895;
				$handle->image_y               = 501;
				$handle->auto_create_dir    = true;
				$handle->file_auto_rename   = true;
				$handle->file_safe_name   = true;
	//$handle->file_max_size    = $sql['img_upload_limit'];
				$handle->allowed      = array('image/jpeg','image/jpg','image/png');
				$handle->file_new_name_body = time()."-".generateRandomString(3);
				$targetPath = "../uploads/products/buyuk/";
				$handle->process($targetPath);
				if ($handle->processed) {
					$Images = $handle->file_dst_name;
	   //$Images = $handle->file_new_name_body;
					$return = $targetPath. $handle->file_dst_name;
				}

			} else {
				$errOther[] = "Resim Yüklenemedi";
			}
		}

		if(count($errEmpty) == 0 && count($errOther) == 0)
		{
			$sorgu = $db->prepare("INSERT INTO productsimages(productsID, Name, Images) VALUES(?,?,?)");

			$ekle = $sorgu->execute([$productsID, $Name, $Images]);
			if ($ekle) {
				header('location: products-images.php?productsID='.$productsID);
			} else {
				$hata = $sorgu->errorInfo();
				echo 'mysql Hatası'.$hata[2];
			}           
		}

		return array("errOther"=>$errOther, "errEmpty"=>$errEmpty);
	}
}

function productsimagesDelete($ID) {
	global $db;


	if(!is_numeric($ID)){
		exit("Numeric değer değil");
	}

	$ID = intval($ID);

	$result = $db->prepare("DELETE FROM productsimages WHERE ID=?");
	if($result->execute(array($ID))) {
		unlink("../uploads/products/buyuk/".$_GET['Images']);
	//header('location: categories.php?categoriesMainID='.$_GET['categoriesMainID']);
		return true;
	}else{
		return false;
	}
}
function productsimagesResimEdit($ID){
	global $db;
	include 'class/class.upload.php';
	if (!empty($_FILES['Images']['name'])) {
		$handle = new Upload($_FILES['Images']);
		if ($handle->uploaded) {
			$handle->image_resize   = true;
		  //$handle->image_resize          = true;
		  //$handle->image_ratio_y         = true;
			$handle->image_x               = 895;
			$handle->image_y               = 501;
			$handle->auto_create_dir    = true;
			$handle->file_auto_rename   = true;
			$handle->file_safe_name   = true;
		  //$handle->file_max_size    = $sql['img_upload_limit'];
			$handle->allowed      = array('image/jpeg','image/jpg','image/png');
			$handle->file_new_name_body = time()."-".generateRandomString(3);
			$targetPath = "../uploads/products/buyuk/";
			$handle->process($targetPath);
			if ($handle->processed) {
				$Images = $handle->file_dst_name;
				$sorgu = $db->prepare("UPDATE productsimages SET Images=? WHERE ID = ?");
				$ekle = $sorgu->execute([$Images, $ID]);
		  //$Images = $handle->file_new_name_body;
				$return = $targetPath. $handle->file_dst_name;
			}

		} else {
			$errOther[] = "Resim Yüklenemedi";
		}
	}
}
function productsimagesEdit($ID) {
	global $db;

	if (isset($_POST['guncelle'])) {
		productsimagesResimEdit($ID);

		$Name = $_POST['Name'];
		$productsID = intval($_POST['productsID']);

		if($Name == ""){
			$errOther[] = "Ürün resim ad alanını boş bırakmayınız.";
		}

		if(count($errOther) == 0){
			$sorgu = $db->prepare("UPDATE productsimages SET Name=? WHERE ID = ?");

			$ekle = $sorgu->execute([$Name, $ID]);
			if ($ekle) {
				header('location: products-images.php?productsID='.$productsID);
			} else {
				$hata = $sorgu->errorInfo();
				$errOther[] = 'mysql Hatası:'.$hata[2];
				$errOther[] = "Mysql sorgusu hatalı";
			}
		}
		return $errOther;
	}
}

function products_images_var_mi($Resim_Yolu) {
	global $DOCUMENT_ROOT;
	if(file_exists($DOCUMENT_ROOT."/uploads/products/buyuk/".$Resim_Yolu)){
		return "../uploads/products/buyuk/".$Resim_Yolu;
	}
	else {
		return "../uploads/products/buyuk/default.png";
	}

}

//*************************************************************************************************************************************

function dugunpaketimagesFind($ID) {
	global $db;

	$ID = intval($ID);

	$result = $db->prepare("SELECT * FROM productsimages WHERE ID = ?");
	$result->execute(array($ID));
	$line = $result->fetch(PDO::FETCH_ASSOC);

	return $line;
}

function dugunpaketimagesList($productsID) {
	global $db;

	$result = $db->prepare("SELECT *  FROM productsimages WHERE productsID=?");
	$result->execute(array($productsID));
	$line = $result->fetchAll(PDO::FETCH_ASSOC);
	return $line;
}

function dugunpaketimagesAdd() {
	global $db;
	include 'class/class.upload.php';
	$errEmpty = array();
	$errOther = array();

	if (isset($_POST['ekle'])) {
		$Name = $_POST['Name'];
		$productsID = $_POST['productsID'];

		if (empty($Name)) {
			$errEmpty[] = "Ürün resim ad alanını boş bırakmayınız.";
		}

		if ($_FILES['Images']['name'] != '') {
			$handle = new Upload($_FILES['Images']);
			if ($handle->uploaded) {
				$handle->image_resize   = true;
	//$handle->image_resize          = true;
	//$handle->image_ratio_y         = true;
				$handle->image_x               = 895;
				$handle->image_y               = 895;
				$handle->auto_create_dir    = true;
				$handle->file_auto_rename   = true;
				$handle->file_safe_name   = true;
	//$handle->file_max_size    = $sql['img_upload_limit'];
				$handle->allowed      = array('image/jpeg','image/jpg','image/png');
				$handle->file_new_name_body = time()."-".generateRandomString(3);
				$targetPath = "../uploads/products/buyuk/";
				$handle->process($targetPath);
				if ($handle->processed) {
					$Images = $handle->file_dst_name;
	   //$Images = $handle->file_new_name_body;
					$return = $targetPath. $handle->file_dst_name;
				}

			} else {
				$errOther[] = "Resim Yüklenemedi";
			}
		}

		if(count($errEmpty) == 0 && count($errOther) == 0)
		{
			$sorgu = $db->prepare("INSERT INTO productsimages(productsID, Name, Images) VALUES(?,?,?)");

			$ekle = $sorgu->execute([$productsID, $Name, $Images]);
			if ($ekle) {
				header('location: dugunpaketi-images.php?productsID='.$productsID);
			} else {
				$hata = $sorgu->errorInfo();
				echo 'mysql Hatası'.$hata[2];
			}           
		}

		return array("errOther"=>$errOther, "errEmpty"=>$errEmpty);
	}
}

function dugunpaketimagesDelete($ID) {
	global $db;


	if(!is_numeric($ID)){
		exit("Numeric değer değil");
	}

	$ID = intval($ID);

	$result = $db->prepare("DELETE FROM productsimages WHERE ID=?");
	if($result->execute(array($ID))) {
		unlink("../uploads/products/buyuk/".$_GET['Images']);
	//header('location: categories.php?categoriesMainID='.$_GET['categoriesMainID']);
		return true;
	}else{
		return false;
	}
}
function dugunpaketimagesResimEdit($ID){
	global $db;
	include 'class/class.upload.php';
	if (!empty($_FILES['Images']['name'])) {
		$handle = new Upload($_FILES['Images']);
		if ($handle->uploaded) {
			$handle->image_resize   = true;
		  //$handle->image_resize          = true;
		  //$handle->image_ratio_y         = true;
			$handle->image_x               = 895;
			$handle->image_y               = 895;
			$handle->auto_create_dir    = true;
			$handle->file_auto_rename   = true;
			$handle->file_safe_name   = true;
		  //$handle->file_max_size    = $sql['img_upload_limit'];
			$handle->allowed      = array('image/jpeg','image/jpg','image/png');
			$handle->file_new_name_body = time()."-".generateRandomString(3);
			$targetPath = "../uploads/products/buyuk/";
			$handle->process($targetPath);
			if ($handle->processed) {
				$Images = $handle->file_dst_name;
				$sorgu = $db->prepare("UPDATE productsimages SET Images=? WHERE ID = ?");
				$ekle = $sorgu->execute([$Images, $ID]);
		  //$Images = $handle->file_new_name_body;
				$return = $targetPath. $handle->file_dst_name;
			}

		} else {
			$errOther[] = "Resim Yüklenemedi";
		}
	}
}
function dugunpaketimagesEdit($ID) {
	global $db;

	if (isset($_POST['guncelle'])) {
		dugunpaketimagesResimEdit($ID);

		$Name = $_POST['Name'];
		$productsID = intval($_POST['productsID']);

		if($Name == ""){
			$errOther[] = "Ürün resim ad alanını boş bırakmayınız.";
		}

		if(count($errOther) == 0){
			$sorgu = $db->prepare("UPDATE productsimages SET Name=? WHERE ID = ?");

			$ekle = $sorgu->execute([$Name, $ID]);
			if ($ekle) {
				header('location: dugunpaketi-images.php?productsID='.$productsID);
			} else {
				$hata = $sorgu->errorInfo();
				$errOther[] = 'mysql Hatası:'.$hata[2];
				$errOther[] = "Mysql sorgusu hatalı";
			}
		}
		return $errOther;
	}
}

?>