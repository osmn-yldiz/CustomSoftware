<?php 

include 'config.php';

if(isset($_POST['giris'])) {
    $Email = $_POST['Email'];
    $Password = $_POST['Password'];

    if (empty($Email)) {
        $errEmpty[] = "Mail Adresi";
    }
    if (empty($Password)) {
        $errEmpty[] = "Şifre";
    }
    if (!filter_var($Email, FILTER_VALIDATE_EMAIL)) {
        $errOther[] = "Düzgün mail adresi griniz";
    }
    if (strlen($Password) < 5) {
        $errOther[] = "Şifrenizi 5 karakterden küçük yapmayınız.";
    }


    if (count($errEmpty) == 0 && count($errOther) == 0) {
        $PasswordMd5 = md5($Password);

        $sorgu = $db->prepare("SELECT Email, Password FROM users WHERE Email=?");
        $sorgu->execute(array($Email));

        if($sorgu->rowCount() > 0) {
            $line = $sorgu->fetch(PDO::FETCH_ASSOC);

            if($Email == $line['Email'] && $PasswordMd5 == $line['Password']) {
                if($line['lockedCount'] >= 3) {
                    $errOther[] = "Hesabınız kitlendi.";
                }
            }

            if($PasswordMd5 != $line['Password']) {
                $sorgu = $db->prepare("UPDATE users SET lockedCount=lockedCount+1 WHERE Email=?");
                $sorgu->execute([$Email]);
            }
        }

        if (count($errEmpty) == 0 && count($errOther) == 0) {
            $sorgu = $db->prepare("SELECT ID, Email, Password FROM users WHERE Email=? AND Password=?");
            $sorgu->execute(array($Email, $PasswordMd5));
            if ($sorgu->rowCount() > 0) {

                $line = $sorgu->fetch(PDO::FETCH_ASSOC);
                if ($line['Email'] == $Email && $line['Password'] == $PasswordMd5) {
                    
                    $sorgu = $db->prepare("UPDATE users Set lockedCount=0 WHERE Email=?");
                    $sorgu->execute(array($Email));

                    session_regenerate_id();
                     $_SESSION['userID'] = $line['ID'];
                     $_SESSION['Email'] = $line['Email'];

                    header("location: index.php");
                    exit;
                    
                }
                
            }else{
                // locked +++ ;
                $errOther[]= "Kulanıcı Bulunamadı.";
            }
        }
    }
}



?>

<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
    <title>Giriş Yap | Yönetim Paneli</title>
    <!-- Favicon-->
    <link rel="icon" href="images/favicon.png" type="image/x-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.googleapis.com/css?family=Roboto:400,700&subset=latin,cyrillic-ext" rel="stylesheet"
        type="text/css">
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet" type="text/css">

    <!-- Bootstrap Core Css -->
    <link href="plugins/bootstrap/css/bootstrap.css" rel="stylesheet">

    <!-- Waves Effect Css -->
    <link href="plugins/node-waves/waves.css" rel="stylesheet" />

    <!-- Animation Css -->
    <link href="plugins/animate-css/animate.css" rel="stylesheet" />

    <!-- Custom Css -->
    <link href="css/style.css" rel="stylesheet">
</head>

<body class="login-page">
    <div class="login-box">
        <div class="logo">
            <a href="javascript:void(0);">Yönetim <b>Paneli</b></a>
            <small>Yönetim Panel Sayfasına <b>HOŞGELDİNİZ</b></small>
        </div>
        <div class="card">
            <div class="body">
                <form id="sign_in" action="login.php" method="post">
                    <div class="msg">Giriş yapmak için mail adresinizi ve şifrenizi giriniz.</div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">person</i>
                        </span>
                        <div class="form-line">
                            <input type="email" class="form-control" name="Email" placeholder="Email Adresini Giriniz"
                                required autofocus autocomplete="off" />
                        </div>
                    </div>
                    <div class="input-group">
                        <span class="input-group-addon">
                            <i class="material-icons">lock</i>
                        </span>
                        <div class="form-line">
                            <input type="password" class="form-control" name="Password" placeholder="Şifrenizi Giriniz"
                                required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-xs-6">
                            <button class="btn btn-block bg-pink waves-effect" type="submit" name="giris">GİRİŞ
                                YAP</button>
                        </div>
                    </div>
                </form>
                <?php 
        if(count($errEmpty) > 0) {
            foreach($errEmpty as $value) {
            ?>
                <div class="alert alert-danger" role="alert">Boş bırakılmayacak alanlar: <?php echo $value; ?></div>
                <?php } } ?>
                <?php 
        if(count($errOther) > 0) {
            foreach($errOther as $value) {
            ?>
                <div class="alert alert-danger" role="alert"><?php echo $value; ?></div>
                <?php } } ?>
            </div>
        </div>
    </div>

    <!-- Jquery Core Js -->
    <script src="plugins/jquery/jquery.min.js"></script>

    <!-- Bootstrap Core Js -->
    <script src="plugins/bootstrap/js/bootstrap.js"></script>

    <!-- Waves Effect Plugin Js -->
    <script src="plugins/node-waves/waves.js"></script>

    <!-- Validation Plugin Js -->
    <script src="plugins/jquery-validation/jquery.validate.js"></script>

    <!-- Custom Js -->
    <script src="js/admin.js"></script>
    <script src="js/pages/examples/sign-in.js"></script>
</body>

</html>