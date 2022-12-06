<?php 

include 'config.php';
include 'functions.php';
loginControl();

include 'header.php';

if(isset($_GET['productsID'])){
  $productsID = intval($_GET['productsID']);
  $productsInfo = productsFind($productsID);
  $PropertyArray = json_decode($productsInfo['Property']);
  $lineCategoriesFind = categoriesFind($productsInfo['categoriesID']);

   foreach($PropertyArray as $val) {
      $Property[] = $val->value;
   } 
}
if ($_GET['productsID'] > 0) {
  $lineProductsimagesList = productsimagesList($_GET['productsID']);

}
else {
  header('location: categoriesmain.php');
}



?>

<section class="content">
  <div class="container-fluid">
    <ol class="breadcrumb breadcrumb-col-red">
      <li><a href="categoriesmain.php"><i class="material-icons">home</i> Ana Kategoriler</a></li>
      <li><a href="categories.php?categoriesMainID=<?php echo $lineCategoriesFind['categoriesMainID'];  ?>"><i class="material-icons">library_books</i> Alt Kategoriler</a></li>
      <li><a href="products.php?categoriesID=<?php echo $productsInfo['categoriesID']; ?>"><i class="material-icons">archive</i> Ürünler</a></li>
      <li class="active"><i class="material-icons">zoom_in</i> Ürün Detayları</li>
    </ol>
    <!-- Image Gallery -->
    <div class="block-header">
      <h2>
        ÜRÜN DETAY BİLGİLERİ
      </h2>
    </div>
    <div class="row">
      <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
        <div class="card">
          <div class="header">
            <h2>
              ÜRÜN DETAYLARI
            </h2>
          </div>
          <div class="body">
           <table class="table table-bordered table-striped">
             <tr><th>Ürün Adı</th><td><?php print $productsInfo['Name']; ?></td></tr>
             <tr><th>Ürün Fiyatı</th><td><?php print $productsInfo['Price']; ?> ₺</td></tr>
             <tr><th>Ürün Ölçüleri</th><td><?php print $productsInfo['Measure']; ?></td></tr>
             <tr><th>Ürün Özellikleri</th><td><?php print implode(" , ", $Property); ?></td></tr>
           </table>
         </div>
       </div>
     </div>
   </div>
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

            <?php foreach ($lineProductsimagesList as $productsimagesList) { ?>

             <div class="col-lg-3 col-md-4 col-sm-6 col-xs-12">
              <a class="light-box" href="../uploads/products/buyuk/<?php echo $productsimagesList['Images']; ?>" data-sub-html="<?php echo $productsimagesList['Name']; ?>">
                <img class="img-responsive thumbnail" style="height: 200px" src="<?php echo products_images_var_mi($productsimagesList['Images']); ?>">
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