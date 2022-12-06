<?php 

include 'config.php';
include 'functions.php';
loginControl();

include 'header.php';

if(isset($_GET['ID'])){
  $ID = intval($_GET['ID']);
  $dugunpaketimagesInfo = dugunpaketimagesFind($ID);
  
}

print $dugunpaketimagesInfo ;

if ($_GET['productsID'] > 0) {
  $linedugunpaketimagesList = dugunpaketimagesList($_GET['productsID']);
}
else {
  header('location: categoriesmain.php');
}

$lineproductsFind = productsFind($_GET['productsID']);
$linecategoriesFind = categoriesFind($lineproductsFind['categoriesID']);

?>

<section class="content">
    <div class="container-fluid">
        <ol class="breadcrumb breadcrumb-col-red">
            <li><a href="categoriesmain.php"><i class="material-icons">home</i> Ana Kategoriler</a></li>
            <li><a href="categories.php?categoriesMainID=<?php echo $linecategoriesFind['categoriesMainID'];  ?>"><i
                        class="material-icons">library_books</i> Alt Kategoriler</a></li>
            <li><a href="products.php?categoriesID=<?php echo $lineproductsFind['categoriesID']; ?>"><i
                        class="material-icons">archive</i> Ürünler</a></li>
            <li><a href="products-details.php?productsID=<?php echo $lineproductsFind['ID']; ?>"><i
                        class="material-icons">zoom_in</i> Ürün Detayları</a></li>
            <li class="active"><i class="material-icons">zoom_in</i> Ürün Resimleri</li>
        </ol>
        <!-- Image Gallery -->
        <div class="block-header">
            <h2>
                ÜRÜN DETAY BİLGİLERİ
            </h2>
        </div>
        <!-- Vertical Layout -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ÜRÜN RESİMLERİ FORMU
                        </h2>
                    </div>
                    <div class="body">
                        <form
                            action="<?php if($ID > 0) echo 'dugunpaketi-images_duzenle.php?ID='.$ID; else echo 'dugunpaketi-images_ekle.php' ?>"
                            method="post" role="form" enctype="multipart/form-data">
                            <label for="">Ürün Resmi</label>
                            <div class="form-group form-group-lg">
                                <?php if($ID > 0) { ?>
                                <img height="150"
                                    src="../uploads/products/buyuk/<?php echo $dugunpaketimagesInfo['Images']; ?>">
                                <?php } ?>
                                <input type="file" class="form-control" name="Images">
                            </div>

                            <label for="">Ürün Resim Adı</label>
                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input type="text" class="form-control" name="Name"
                                        placeholder="Ürün Resim Adı Giriniz"
                                        value="<?php echo $dugunpaketimagesInfo['Name']; ?>">
                                </div>
                            </div>

                            <br>
                            <input type="hidden" name="productsID" value="<?php echo $_GET['productsID']; ?>">
                            <button type="submit" class="btn bg-red btn-lg waves-effect"
                                name="<?php echo ($ID > 0 ? "guncelle":"ekle") ?>"><?php echo ($ID > 0 ? "GÜNCELLE":"EKLE") ?></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- #END# Vertical Layout -->
        <div class="row">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ÜRÜN RESİMLERİ
                        </h2>
                    </div>
                    <div class="body">
                        <div id="aniimated-thumbnials" class="list-unstyled row clearfix">
                            <?php foreach ($linedugunpaketimagesList as $productsimagesList) { ?>

                            <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
                                <a class="light-box"
                                    href="../uploads/products/buyuk/<?php echo $productsimagesList['Images']; ?>"
                                    data-sub-html="<?php echo $productsimagesList['Name']; ?>">
                                    <img class="img-responsive thumbnail" style="height: 200px"
                                        src="<?php echo products_images_var_mi($productsimagesList['Images']); ?>">
                                </a>
                                <a class="btn btn-success"
                                    href="dugunpaketi-images.php?productsID=<?php echo $productsimagesList['productsID']; ?>&ID=<?php echo $productsimagesList['ID']; ?>">
                                    <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                    Düzenle
                                </a>
                                <a class="btn btn-danger"
                                    href="dugunpaketi-images_sil.php?productsID=<?php echo $productsimagesList['productsID']; ?>&ID=<?php echo $productsimagesList['ID']; ?>&Images=<?php echo $productsimagesList['Images']; ?>">
                                    <i class="glyphicon glyphicon-trash icon-white"></i>
                                    Sil
                                </a>
                            </div>

                            <?php } ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<?php include 'footer.php'; ?>