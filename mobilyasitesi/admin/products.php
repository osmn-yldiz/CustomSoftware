<?php 

include 'config.php';
include 'functions.php';
loginControl();

include 'header.php'; 

if(isset($_GET['ID'])){
    $ID = intval($_GET['ID']);
    $productsInfo = productsFind($ID);
    $PropertyArray = json_decode($productsInfo['Property']);

}

if ($_GET['categoriesID'] > 0) {
    $lineProductsList = productsList($_GET['categoriesID']);
}
else {
    header('location: categoriesmain.php');
}

$linecategoriesFind = categoriesFind($_GET['categoriesID']);
$CategoriesMainInfo = categoriesmainFind($linecategoriesFind['categoriesMainID']);

?>

<section class="content">
    <div class="container-fluid">
        <ol class="breadcrumb breadcrumb-col-red">
            <li><a href="categoriesmain.php"><i class="material-icons">home</i> Ana Kategoriler</a></li>
            <li><a href="categories.php?categoriesMainID=<?php echo $linecategoriesFind['categoriesMainID'];  ?>"><i
                        class="material-icons">library_books</i> Alt Kategoriler</a></li>
            <li class="active"><i class="material-icons">archive</i> Ürünler
                (<?php echo $CategoriesMainInfo['Name'] . " | " . $linecategoriesFind['Name']; ?>)</li>
        </ol>
        <div class="block-header">
            <h2>ÜRÜN BİLGİLERİ</h2>
        </div>
        <!-- Vertical Layout -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ÜRÜN BİLGİLERİ FORMU
                        </h2>
                    </div>
                    <div class="body">
                        <form
                            action="<?php if($ID > 0) echo 'products_duzenle.php?ID='.$ID; else echo 'products_ekle.php' ?>"
                            method="post" role="form" enctype="multipart/form-data">
                            <label for="">Ürün İsmi</label>
                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input type="text" class="form-control" name="Name" placeholder="Ürün İsmi Giriniz"
                                        value="<?php echo $productsInfo['Name']; ?>">
                                </div>
                            </div>

                            <label for="">Ürün Fiyatı</label>
                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input id="price" type="text" class="form-control" name="Price"
                                        placeholder="Ürün Fiyatı Giriniz" value="<?php echo $productsInfo['Price']; ?>">
                                </div>
                            </div>
                            <label for="">Ürün Ölçüleri</label>
                            <div class="form-group">
                                <textarea class="form-control ckeditor" id="Content" name="Measure"
                                    placeholder="Ürün Ölçüleri">
                            <?php 
                            if($ID > 0){
                                echo $productsInfo['Measure'];
                            }
                            else{
                               include 'measure_template.php';
                           }
                           ?>

                       </textarea>
                            </div>
                            <label for="">Ürün Özellikleri</label>

                            <div class="form-group form-group-lg">
                                <div class="form-line">
                                    <input type="text" class="form-control" name="Property"
                                        placeholder="Ürün Özellikleri Giriniz"
                                        value="<?php foreach($PropertyArray as $val) echo $val->value.","; ?>">
                                </div>
                            </div>

                            <br>
                            <input type="hidden" name="categoriesID" value="<?php echo $_GET['categoriesID']; ?>">
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
                            ÜRÜN BİLGİLERİ TABLOSU
                        </h2>
                    </div>
                    <div class="body table-responsive">
                        <table class="table table-hover table table-striped">
                            <thead>
                                <tr>
                                    <th>#</th>
                                    <th>ÜRÜN İSMİ</th>
                                    <th>ÜRÜN FİYATI</th>
                                    <th>İŞLEMLER</th>
                                </tr>
                            </thead>
                            <tbody>

                                <?php 
                        $i=1;
                        foreach ($lineProductsList as $row) { 
                            ?>
                                <tr>
                                    <th scope="row"><?php echo $i; ?></th>
                                    <td><?php echo $row['Name']; ?></td>
                                    <td><?php echo $row['Price']; ?> ₺</td>
                                    <td class="center">
                                        <a class="btn btn-warning"
                                            href="products-details.php?productsID=<?php echo $row['ID']; ?>">
                                            <i class="glyphicon glyphicon-plus-sign icon-white"></i>
                                            Ürün Detayları
                                        </a>
                                        <?php if($_GET['categoriesID'] == 33) { ?>
                                        <a class="btn btn-primary"
                                            href="dugunpaketi-images.php?productsID=<?php echo $row['ID']; ?>">
                                            <i class="glyphicon glyphicon-picture icon-white"></i>
                                            Ürün Fotoğrafları
                                        </a>
                                        <?php } else { ?>
                                        <a class="btn btn-primary"
                                            href="products-images.php?productsID=<?php echo $row['ID']; ?>">
                                            <i class="glyphicon glyphicon-picture icon-white"></i>
                                            Ürün Fotoğrafları
                                        </a>
                                        <?php } ?>

                                        <a class="btn btn-success"
                                            href="products.php?categoriesID=<?php echo $row['categoriesID']; ?>&ID=<?php echo $row['ID']; ?>">
                                            <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                            Düzenle
                                        </a>
                                        <a class="btn btn-danger"
                                            href="products_sil.php?categoriesID=<?php echo $row['categoriesID']; ?>&ID=<?php echo $row['ID']; ?>">
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

<link href="class/tagify-master/tagify.css" rel="stylesheet">
<script src="class/input-number-mask/jquery.masknumber.js"></script>
<script src="class/input-number-mask/jquery.masknumber.min.js"></script>
<script src="class/tagify-master/jQuery.tagify.min.js"></script>

<script type="text/javascript">
$('#price').maskNumber({
    thousands: '.',
    integer: true
});
</script>
<script type="text/javascript">
$(document).ready(function() {
    $('[name=Property]').tagify();
});
</script>