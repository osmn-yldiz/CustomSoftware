    <?php
    
    include 'config.php';
    include 'functions.php';
    loginControl();

    include 'header.php'; 
    
    ?>

    <section class="content">
        <div class="container-fluid">
            <div class="block-header">
                <h2>
                    ANASAYFA
                    <small>Bu Website <a href="http://yildizosman.com/" target="_blank">Osman Yıldız</a> Tarafından Yapılmıştır.</small>
                </h2>
            </div>
            <div class="row clearfix">
                <!-- Basic Example -->
                <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                    <div class="card">
                        <div class="header">
                            <h2>OSMAN YILDIZ</h2>
                        </div>
                        <div class="body">
                            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
                                <!-- Indicators -->
                                <ol class="carousel-indicators">
                                    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                                    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
                                </ol>

                                <!-- Wrapper for slides -->
                                <div class="carousel-inner" role="listbox">
                                    <div class="item active">
                                        <img width="100%" src="uploads/osmanyildiz/1.jpg" />
                                    </div>
                                    <div class="item">
                                        <img width="100%" src="uploads/osmanyildiz/2.jpeg" />
                                    </div>
                                    <div class="item">
                                        <img width="100%" src="uploads/osmanyildiz/3.jpeg" />
                                    </div>
                                </div> 

                                <!-- Controls -->
                                <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                                    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                                    <span class="sr-only">Previous</span>
                                </a>
                                <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                                    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                                    <span class="sr-only">Next</span>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- #END# Basic Example -->
            </div>
        </div>
    </section>

    <?php include 'footer.php'; ?>