<?php 

include 'config.php';
include 'class/products.php';
include 'class/productsImages.php';

$products = new products();
$productsFindID = $products->productsFindID($_GET['productsID']);

$productsImages = new productsImages();
$productsImagesList = $productsImages->productsImagesList($_GET['productsID']);

//$PropertyArray = explode(';', $productsFindID['Property']);
$PropertyArray = json_decode($productsFindID['Property']);
include 'header.php'; 

?>

<body
class="catalog-product-view catalog-product-view product-gloss-modern-koltuk-takimi-tri categorypath-koltuk-takimlari-modern category-modern"
itemscope itemtype="http://schema.org/WebPage" data-store="1">

<div class="container">
    <div class="layout layout-1-col">
        <div role="main">
            <div id="messages_product_view"></div>
            <div class="product-view" itemscope itemtype="http://schema.org/Product">
                <div class="product-essential">
                    <form action="" method="post" id="product_addtocart_form" enctype="multipart/form-data">
                        <input name="form_key" type="hidden" value="uCyhQCNOo84fd1BX" />
                        <div class="no-display"> <input type="hidden" name="product" value="16694" /> <input
                            type="hidden" name="related_product" id="related-products-field" value="" /></div>
                            <div class="lft col-md-9 col-sm-8 media match">
                                <div class="row">
                                    <div class="product-image product-image-zoom"> <a href="javascript:void(0)"
                                        data-toggle="media">
                                        <img itemprop="image" id="zoom_03" class="zoom_image" order="0"
                                        src="thumbnail.php?Dir=products&Thumbwidth=895&thumb=<?php echo $productsImagesList[0]['Images']; ?>"
                                        data-zoom-image="thumbnail.php?Dir=products&Thumbwidth=2000&thumb=<?php echo $productsImagesList[0]['Images']; ?>"
                                        alt="<?php echo $productsImagesList[0]['Name']; ?>">
                                        <span class="helper"><i class="fa fa-search-plus"></i> Daha büyük görünüm
                                            için
                                        tıklayın</span> </a></div>
                                        <div class="prd-gallery">
                                            <div class="more-views owl-carousel" id="gallery_01">

                                                <?php foreach ($productsImagesList as $ImagesList) { 
                                                    if (file_exists($DOCUMENT_ROOT."uploads/products/buyuk/".$ImagesList['Images'])) {
                                                ?>
                                                     <a itemprop="image"
                                                    href="thumbnail.php?Dir=products&Thumbwidth=2000&thumb=<?php echo $ImagesList['Images']; ?>"
                                                    rel="fancybox-thumb" class="elevatezoom-gallery"
                                                    data-image="thumbnail.php?Dir=products&Thumbwidth=895&thumb=<?php echo $ImagesList['Images']; ?>"
                                                    data-zoom-image="thumbnail.php?Dir=products&Thumbwidth=2000&thumb=<?php echo $ImagesList['Images']; ?>"
                                                    order="<?php echo $ImagesList['ID']; ?>">
                                                    <img src="thumbnail.php?Dir=products&Thumbwidth=80&thumb=<?php echo $ImagesList['Images']; ?>"
                                                    alt="<?php echo $ImagesList['Name']; ?>"></a>
                                                <?php
                                                    }
                                                    ?>

                                                   
                                                

                                            <?php } ?>

                                        </div>
                                        <div class="m-ctrl"> <a class="prev" title="Önceki"><span><i
                                            class="fa fa-angle-left"></i></span></a> <a class="next"
                                            title="Sonraki"><span><i class="fa fa-angle-right"></i></span></a></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="rght col-md-3 col-sm-4 prd-shop match">
                                    <div class="box row">
                                        <div class="product-name">
                                            <h1 itemprop="name"><?php echo $productsFindID['Name']; ?></h1>
                                        </div>
                                        <div class="prd-headline">
                                            <div class="content">
                                                <ul>
                                                    <?php foreach($PropertyArray as $Property) {  ?>
                                                        <li><?php echo $Property->value; ?></li>
                                                    <?php } ?>
                                                </ul>
                                            </div>
                                        </div>
                                        <div class="clearer clearfix"></div>
                                        <div class="price_wrapper clearfix">
                                            <div class="price-container ">
                                                <div class="price-box">
                                                    <div class="cash-price clearfix"> <span class="lbl">Havale/EFT Fiyatı
                                                        <span class="sep">:</span> <span class="smll">(%8
                                                        indirim)</span></span> <span
                                                        class="price"><?php echo $productsFindID['Price']; ?> ₺</span>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <a class="btn btn-success" href="tcpdf_create_products.php?productsID=<?php echo $productsFindID['ID']; ?>">PDF</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                        <div class="p_description box match" itemprop="description">
                            <h2><?php echo $productsFindID['Name']; ?> Ürün Açıklaması</h2>
                            <?php echo $productsFindID['Name']; ?>

                            <?php foreach($PropertyArray as $Property) { ?>
                                <li><?php echo $Property->value; ?></li>
                            <?php } ?>

                        </div>
                        <div class="p_dimension box match">
                            <h2><?php echo $productsFindID['Name']; ?> Ürün Ölçüleri</h2>

                            <?php echo $productsFindID['Measure']; ?>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <?php include 'footer.php'; ?>