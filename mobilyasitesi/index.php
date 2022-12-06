<?php 

include 'config.php';
include 'class/categoriesMain.php';
include 'class/categories.php';
include 'class/products.php';
include 'class/productsImages.php';

$categoriesMain = new categoriesMain();

if(empty($_GET['categoriesMainID'])) {
    $categoriesMainList = $categoriesMain->categoriesMainList();
}
else{
    $categoriesMainList = $categoriesMain->categoriesMainList($_GET['categoriesMainID']);
}


$categories = new categories();

if(isset($_GET['categoriesID']) && $_GET['categoriesID'] > 0){
    $products = new products();

    $page = $_GET['page'];
    if($page < 1) {
      $page=1;
    } 
    $page = $page-1;

    $start = $page*6;

    $productsList = $products->productsList($_GET['categoriesID'], $start);
    $productsTotal = $products->count;

    $productsList = $products->productsList($_GET['categoriesID'], $start);

}

include 'header.php'; 

?>

<body class="catalog-category-view categorypath-koltuk-takimlari category-koltuk-takimlari" itemscope
    itemtype="http://schema.org/WebPage" data-store="1">

    <?php 
if(empty($_GET['categoriesMainID'])){
    print "<div class='container'><h1 class='text-center black-lives-matter' style='font-size:3vw;'>KATEGORİLER</h1><ul class='products-grid'>";
    foreach ($categoriesMainList as $main){
        $lineImages = $categories->categoriesRandomImages($main['ID']);
        ?>


    <li class="product col-xs-6 col-sm-4 col-md-4 el1">

        <div class="item">

            <a class="product-link" target="_blank" href="index.php?categoriesMainID=<?php echo $main['ID']; ?>"
                title="<?php echo $main['Name']; ?>">

                <div class="image"> <img class="img-responsive" width="387px"
                        src="uploads/categories/<?php print $lineImages['Images']; ?>"
                        data-echo="uploads/categories/<?php print $lineImages['Images']; ?>"
                        alt="<?php print $main['Name']; ?>" /></div>

                <div class="bottom">

                    <div class="name">

                        <h3><?php echo $main['Name']; ?></h3>

                    </div>

                    <div class="price-container ">

                        <div class="price-box">

                        </div>

                    </div>

                </div>

            </a>

        </div>

    </li>


    <?php
        }
        print "</ul> </div>";
        ?>

    <?php
    }else{
        ?>
    <?php foreach ($categoriesMainList as $categoriesMain) {
            $categoriesList = $categories->categoriesList($categoriesMain['ID']); ?>

    <div class="container">
        <div class="layout layout-1-col">
            <div role="main">
                <div class="mb-content">
                    <div class="mb-category-products">
                        <div class="page-title category-title">
                            <h1 class="text-center black-lives-matter" style='font-size:3vw;' itemprop="name">
                                <?php echo $categoriesMain['Name']; ?></h1>
                        </div>
                        <style type="text/css">
                        .desktop .head-navigation .navbar-default,
                        .desktop .head-navigation {
                            background-color: #546E7A !important;
                        }
                        </style>
                        <div class="cat_window">
                            <div class="related-categories-banners-list owl-carousel clearfix">

                                <?php foreach ($categoriesList as $row) {  ?>

                                <div class="item"> <a
                                        href="index.php?categoriesMainID=<?php print $_GET['categoriesMainID']; ?>&categoriesID=<?php print $row['ID'] ?>"
                                        title="<?php echo $row['Name']; ?>">
                                        <div class="categorybanner-image"> <img class="owl-lazy"
                                                src="thumbnail.php?Dir=categories&Thumbwidth=200&thumb=<?php echo $row['Images']; ?>"
                                                data-src="thumbnail.php?Dir=categories&Thumbwidth=200&thumb=<?php echo $row['Images']; ?>"
                                                data-src-retina="thumbnail.php?Dir=categories&Thumbwidth=200&thumb=<?php echo $row['Images']; ?>"
                                                alt="<?php echo $row['Name']; ?>" /> <span
                                                class="title"><?php echo $row['Name']; ?></span></div>
                                    </a>
                                </div>

                                <?php } ?>

                            </div>
                            <div class="clearfix"></div>
                        </div>
                        <div class="category-products page1">
                            <ul class="products-grid">

                                <?php 
                                        if(isset($productsList) && count($productsList) > 0) {
                                            foreach($productsList as $products) { 
                                                $productsImages = new productsImages();
                                                $productsImagesList = $productsImages->productsImagesList($products['ID']);
                                                ?>

                                <li class="product col-xs-6 col-sm-4 col-md-4 el1">
                                    <div class="item">
                                        <a class="product-link" target="_blank"
                                            href="products-details.php?productsID=<?php echo $products['ID']; ?>"
                                            title="<?php echo $products['Name']; ?>">

                                            <div class="image"> <img class="img-responsive"
                                                    src="thumbnail.php?Dir=products&Thumbwidth=387&thumb=<?php echo $productsImagesList[0]['Images']; ?>"
                                                    data-echo="thumbnail.php?Dir=products&Thumbwidth=387&thumb=<?php echo $productsImagesList[0]['Images']; ?>"
                                                    alt="<?php echo $productsImagesList[0]['Name']; ?>" /></div>

                                            <div class="more-imgs">

                                                <?php $i=0; foreach($productsImagesList as $productsImages) { ?>

                                                <img class="lazy" data-index="<?php print $i; ?>"
                                                    data-src="thumbnail.php?Dir=products&Thumbwidth=60&thumb=<?php echo $productsImages['Images']; ?>"
                                                    data-big="thumbnail.php?Dir=products&Thumbwidth=387&thumb=<?php echo $productsImages['Images']; ?>"
                                                    width="60" height="33"
                                                    alt="<?php echo $productsImages['Name']; ?>" />

                                                <?php $i++; } ?>

                                            </div>
                                            <div class="bottom">
                                                <div class="name">
                                                    <h3><?php echo $products['Name']; ?></h3>
                                                </div>
                                                <div class="price-container ">
                                                    <div class="price-box">
                                                        <div class="price"><span><?php echo $products['Price']; ?>
                                                                ₺</span></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </a>
                                    </div>
                                </li>

                                <?php } ?>
                                <?php }else{
                                            if(empty($_GET['categoriesID'])) { 
                                                print "<div class='alert alert-danger text-center'><h2>Kategori Seçiniz</h2></div>";
                                            }
                                            else {
                                                print "<div class='alert alert-danger text-center'><h2>Ürün bulunamadı</h2></div>";
                                            }
                                        } ?>

                            </ul>

                            <?php if($_GET['categoriesID'] > 0) { ?>

                            <div style="clear: both"></div>
                            <nav class="justify-content-center" aria-label="Page navigation example">
                                <ul class="pagination">
                                    <?php if($_GET['page'] > 1) { ?>
                                    <li class="page-item"><a class="page-link"
                                            href="index.php?categoriesMainID=<?php print $_GET['categoriesMainID'] ?>&categoriesID=<?php print $_GET['categoriesID'] ?>&page=<?php echo $page; ?>">Previous</a>
                                    </li>
                                    <?php } ?>
                                    <?php 
                                        $total = ceil( $productsTotal/6);
                                        for($i=1; $i <= $total; $i++)
                                        {
                                            if($i==1 && $page==0) $active="page-active";
                                            else if($i==$_GET['page']) $active = "page-active";else $active="";
                                          ?>


                                    <li class="page-item"><a class="page-link <?php print $active; ?>"
                                            href="index.php?categoriesMainID=<?php print $_GET['categoriesMainID'] ?>&categoriesID=<?php print $_GET['categoriesID'] ?>&page=<?php echo $i; ?>"><?php print $i; ?></a>
                                    </li>

                                    <?php
                                      }
                                      ?>

                                    <?php  
                                      if($page < ($total-1) )
                                      {
                                          ?>
                                    <li class="page-item"><a class="page-link"
                                            href="index.php?categoriesMainID=<?php print $_GET['categoriesMainID'] ?>&categoriesID=<?php print $_GET['categoriesID'] ?>&page=<?php echo $page+2; ?>">Next</a>
                                    </li>
                                    <?php 
                                      }
                                      ?>
                                </ul>
                            </nav>

                            <?php } ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <?php } } ?>

    <?php include 'footer.php'; ?>