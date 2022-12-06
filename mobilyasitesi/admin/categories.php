<?php 

include 'config.php';
include 'functions.php';
loginControl();

include 'header.php'; 

if(isset($_GET['ID'])){
    $ID = intval($_GET['ID']);
    $categoriesInfo = categoriesFind($ID);
}

if ($_GET['categoriesMainID'] > 0) {
    $lineCategoriesList = categoriesList($_GET['categoriesMainID']);
}
else {
    header('location: categoriesmain.php');
}

$CategoriesMainInfo = categoriesmainFind($_GET['categoriesMainID']);

?>

<section class="content">
    <div class="container-fluid">
        <ol class="breadcrumb breadcrumb-col-red">
            <li><a href="categoriesmain.php"><i class="material-icons">home</i> Ana Kategoriler</a></li>
            <li class="active"><i class="material-icons">library_books</i> Alt Kategoriler (<?php echo $CategoriesMainInfo['Name']; ?>)</li>
        </ol>
        <div class="block-header">
            <h2>ALT KATEGORİ BİLGİLERİ</h2>
        </div>
        <!-- Vertical Layout -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ALT KATEGORİ BİLGİLERİ FORMU
                        </h2>
                    </div>
                    <div class="body">
                        <form
                        action="<?php if($ID > 0) echo 'categories_duzenle.php?ID='.$ID; else echo 'categories_ekle.php' ?>"
                        method="post" role="form" enctype="multipart/form-data">
                        <label for="">Alt Kategori Resmi</label>
                        <div class="form-group form-group-lg">
                            <?php if($ID > 0) { ?>
                                <img height="150" src="../uploads/categories/<?php echo $categoriesInfo['Images']; ?>">
                            <?php } ?>
                            <input type="file" class="form-control" name="Images">
                        </div>

                        <label for="">Alt Kategori İsmi</label>
                        <div class="form-group form-group-lg">
                            <div class="form-line">
                                <input type="text" class="form-control" name="Name"
                                placeholder="Alt Kategori İsmi Giriniz"
                                value="<?php echo $categoriesInfo['Name']; ?>">
                            </div>
                        </div>

                        <br>
                        <input type="hidden" name="categoriesMainID" value="<?php echo $_GET['categoriesMainID']; ?>">
                        <button type="submit" class="btn bg-red btn-lg waves-effect"
                        name="<?php echo ($ID > 0 ? "guncelle":"ekle") ?>"><?php echo ($ID > 0 ? "GÜNCELLE":"EKLE") ?></button>
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
                        ALT KATEGORİ BİLGİLERİ TABLOSU
                    </h2>
                </div>
                <div class="body table-responsive">
                    <table class="table table-hover table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>ALT KATEGORİ RESMİ</th>
                                <th>ALT KATEGORİ İSMİ</th>
                                <th>İŞLEMLER</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php 
                            $i=1;
                            foreach ($lineCategoriesList as $row) { 
                                ?>
                                <tr>
                                    <th scope="row"><?php echo $i; ?></th>
                                    <td>
                                        <?php if ($row['Images'] != '') { ?>
                                            <img height="150" src="../uploads/categories/<?php echo $row['Images']; ?>">
                                        <?php } else {
                                            echo 'Resim Yok';
                                        } ?>
                                    </td>
                                    <td><?php echo $row['Name']; ?></td>
                                    <td class="center">
                                        <a class="btn btn-primary"
                                        href="products.php?categoriesID=<?php echo $row['ID']; ?>">
                                        <i class="glyphicon glyphicon-plus icon-white"></i>
                                        Ürünler
                                    </a>
                                    <a class="btn btn-success"
                                    href="categories.php?categoriesMainID=<?php echo $row['categoriesMainID']; ?>&ID=<?php echo $row['ID']; ?>">
                                    <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                    Düzenle
                                </a>
                                <a class="btn btn-danger"
                                href="categories_sil.php?categoriesMainID=<?php echo $row['categoriesMainID']; ?>&ID=<?php echo $row['ID']; ?>&Images=<?php echo $row['Images']; ?>">
                                <i class="glyphicon glyphicon-trash icon-white"></i>
                                Sil
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

<?php include 'footer.php'; ?>