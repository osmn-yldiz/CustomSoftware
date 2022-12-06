<?php 

include 'config.php';
include 'functions.php';
loginControl();

include 'header.php'; 

if(isset($_GET['ID'])){
    $ID = intval($_GET['ID']);
    $categoriesmainInfo = categoriesmainFind($ID);
}

$lineCategoriesmainList = categoriesmainList();

?>

<section class="content">
    <div class="container-fluid">
        <div class="block-header">
            <h2>ANA KATEGORİ BİLGİLERİ</h2>
        </div>
        <!-- Vertical Layout -->
        <div class="row clearfix">
            <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                <div class="card">
                    <div class="header">
                        <h2>
                            ANA KATEGORİ BİLGİLERİ FORMU
                        </h2>
                    </div>
                    <div class="body">
                        <form
                        action="<?php if($ID > 0) echo 'categoriesmain_duzenle.php?ID='.$ID; else echo 'categoriesmain_ekle.php' ?>"
                        method="post" role="form">
                        <label for="">Ana Kategori İsmi</label>
                        <div class="form-group form-group-lg">
                            <div class="form-line">
                                <input type="text" class="form-control" name="Name"
                                placeholder="Ana Kategori İsmi Giriniz"
                                value="<?php echo $categoriesmainInfo['Name']; ?>" required>
                            </div>
                        </div>

                        <br>
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
                        ANA KATEGORİ BİLGİLERİ TABLOSU
                    </h2>
                </div>
                <div class="body table-responsive">
                    <table class="table table-hover table table-striped">
                        <thead>
                            <tr>
                                <th>#</th>
                                <th>ANA KATEGORİ İSMİ</th>
                                <th>İŞLEMLER</th>
                            </tr>
                        </thead>
                        <tbody>

                            <?php 
                            $i=1;
                            foreach ($lineCategoriesmainList as $row) { 
                                ?>
                                <tr>
                                    <th scope="row"><?php echo $i; ?></th>
                                    <td><?php echo $row['Name']; ?></td>
                                    <td class="center">
                                        <a class="btn btn-primary"
                                        href="categories.php?categoriesMainID=<?php echo $row['ID']; ?>">
                                        <i class="glyphicon glyphicon-circle-arrow-down 
                                        icon-white"></i>
                                        Alt Kategori
                                    </a>
                                    <a class="btn btn-success"
                                    href="categoriesmain.php?ID=<?php echo $row['ID']; ?>">
                                    <i class="glyphicon glyphicon-zoom-in icon-white"></i>
                                    Düzenle
                                </a>
                                <a class="btn btn-danger"
                                href="categoriesmain_sil.php?ID=<?php echo $row['ID']; ?>">
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