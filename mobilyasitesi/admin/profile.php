<?php 

include 'config.php';
include 'functions.php';
loginControl();

include 'header.php'; 

if(isset($_GET['ID'])){
    $ID = intval($_GET['ID']);
    $lineProfileFind = ProfileFind($ID);
}

$lineProfileList = ProfileList();

?>

<section class="content">
    <div class="container-fluid">
        <ol class="breadcrumb breadcrumb-col-red">
            <li><a href="index.php"><i class="material-icons">home</i> Anasayfa</a></li>
            <li class="active"><i class="material-icons">library_books</i> Profil Bilgileri</li>
        </ol>
        <div class="block-header">
            <h2>PROFİL BİLGİLERİ</h2>
        </div>
        <!-- Vertical Layout -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            PROFİL BİLGİLERİ FORMU
                        </h2>
                    </div>
                    <div class="body">
                        <form enctype="multipart/form-data" action="<?php echo 'profile_duzenle.php?ID='.$ID; ?>"
                            method="post" role="form">
                            <label for="">Resmi</label>
                            <div class="form-group form-group-lg">
                                <img height="150" src="uploads/users/<?php echo $lineProfileFind['Images']; ?>">
                                <input type="file" class="form-control" name="Images">
                            </div>
                            <label for="">İsmi</label>
                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input type="text" class="form-control" name="Name"
                                        placeholder="Profil İsmi Giriniz"
                                        value="<?php echo $lineProfileFind['Name']; ?>">
                                </div>
                            </div>
                            <label for="">Email</label>
                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input type="email" class="form-control" name="Email" placeholder="Email Giriniz"
                                        value="<?php echo $lineProfileFind['Email']; ?>" autofocus autocomplete=" off">
                                </div>
                            </div>
                            <label for="">Şifre</label>
                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input type="password" id="myInput" class="form-control" name="Password"
                                        placeholder="Şifre Giriniz" value="<?php echo $lineProfileFind['Password']; ?>">
                                </div><br>
                                <input type="checkbox" id="md_checkbox_1" onclick="myFunction()" class="chk-col-red" />
                                <label for="md_checkbox_1">Şifreyi Göster</label>
                            </div>

                            <br>
                            <button type="submit" class="btn bg-red btn-lg waves-effect"
                                name="guncelle">GÜNCELLE</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Vertical Layout -->
        <!-- Hover Rows -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            PROFİL BİLGİLERİ TABLOSU
                        </h2>
                    </div>
                    <div class="body table-responsive">
                        <table class="table table-hover table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>RESMİ</th>
                                    <th>İSMİ</th>
                                    <th>EMAİL</th>
                                    <th>ŞİFRE</th>
                                    <th>İŞLEMLER</th>
                                </tr>
                            </thead>
                            <tbody>

                                <?php 
                                $i=1;
                                foreach ($lineProfileList as $row) { 
                                    ?>
                                <tr>
                                    <th scope="row"><?php echo $i; ?></th>
                                    <td>
                                        <?php if ($row['Images'] != '') { ?>
                                        <img height="150" src="uploads/users/<?php echo $row['Images']; ?>">
                                        <?php } else {
                                                echo 'Resim Yok';
                                            } ?>
                                    </td>
                                    <td><?php echo $row['Name']; ?></td>
                                    <td><?php echo $row['Email']; ?></td>
                                    <td><?php echo $row['Password']; ?></td>
                                    <td class="center">
                                        <a class="btn btn-success" href="profile.php?ID=<?php echo $row['ID']; ?>">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            Düzenle
                                        </a>
                                    </td>
                                </tr>
                                <?php 
                                    $i++;
                                } 
                                ?>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Hover Rows -->
    </div>
</section>

<script>
function myFunction() {
    var x = document.getElementById("myInput");
    if (x.type === "password") {
        x.type = "text";
    } else {
        x.type = "password";
    }
}
</script>

<?php include 'footer.php'; ?>