<footer class="container-fluid ftr">
    <div class="ftr-alt row">
        <div class="container">
         <div class="row">
            <div class="col-sm-4 col-xs-4 col-lg-4">
               <ul class="list_unstyled f_contact_us">
                <li class="heading"><h2>Yıldız Mobilya</h2></li>
                <li> <span class="contact_us"><i class="far fa-phone"></i> Telefon : <strong><a href="tel:+905556856994">0(555) 685 69 94</a></strong> </span></li>
                <li> <span class="contact_us"><i class="far fa-whatsapp"></i> Whatsapp : <strong><a href="https://wa.me/905556856994" target="_blank">0(555) 685 69 94</a></strong> </span></li>
                <li> <span class="contact_us"><i class="far fa-mail-alt"></i> E-posta : <strong><a href="mailto:musa_977@hotmail.com">musa_977@hotmail.com</a></strong> </span></li>
            </ul>
        </div>

        <div class="col-sm-6 col-xs-6 col-lg-6">
            <ul class="list_unstyled f_contact_us">
                <li class="heading"><h2>Mağazalarımız</h2></li>
            </ul>
            <div class="home-slider owl-carousel owl-theme">
              <div class="slides"> 
                <img class="" src="uploads/magazalar/1cf5497c0a504b8d9f9a039f0c081f20.jpg" width="570" height="428">
                <img class="" src="uploads/magazalar/c4b0becb0a7d4be2b5c5188e80c0a918.jpg" width="570" height="428">
                <img class="" src="uploads/magazalar/WhatsApp Image 2017-02-17 at 13.20.52.jpeg" width="570" height="428">
                <img class="" src="uploads/magazalar/2019-03-09.jpg" width="570" height="428">
            </div>
        </div>
        <style> .home-slider a.slide{
          -webkit-background-size:cover;
          background-size:cover;
      } 
  </style>
</div>

<div class="col-xs-2 col-sm-2 col-lg-2 social_box">
    <ul class="f_contact_us">
        <li class="heading"><h2>Bizi Takip Edin</h2></li>
    </ul>
    <ul class="list-inline">
        <li class=""><a href="https://www.facebook.com/Y%C4%B1ld%C4%B1z-Mobilya-Karab%C3%BCk-Safranbolu-213499592031034/" target="_blank"><i class="far fa-facebook"></i></a></li>
        <li class=""><a href="https://www.instagram.com/yildizmobilya78" target="_blank"><i class="far fa-instagram"></i></a></li>
    </ul>
</div>
</div>
</div>
</div>
<div class="ftr-bottom row">
    <div class="text-center">
     <div class="company">
      <p class="berke">YILDIZ MOBİLYA KONFEKSİYON İNŞ. TUR. SAN. VE TİC. LTD. ŞTİ.</p>
      <p class="copyright">&copy; <?php echo date("Y"); ?>  Tüm Hakları Saklıdır</p>
      <p></p>
  </div>
</div>
<div class="text-center">
 <div class="company">
  <p class="web_info"><b><a href="http://yildizosman.com/cv/osman-yildiz" target="_blank">Osman YILDIZ</a></b> <i class="fa fa-heart" aria-hidden="true"></i> Tarafından Yapılmıştır.</p>
</div>
</div>
</div>
</footer>

<script type="text/javascript" src="js/script.min.js"></script>
<script type="text/javascript" src="js/owl.carousel.min.js"></script>
<script type="text/javascript" src="js/jquery.fancybox.js"></script>
<script type="text/javascript" src="js/jquery.fancybox-thumbs.js"></script>
<script type="text/javascript" src="js/notify.min.js"></script>
<script type="text/javascript" src="js/jquery.lazy.js"></script>
<script type="text/javascript" src="js/accounting.js"></script>
<script type="text/javascript" src="js/jquery.sticky.js"></script>
<script type="text/javascript" src="js/jquery.matchHeight.js"></script>
<script type="text/javascript" src="js/echo.js"></script>
<script type="text/javascript" src="js/app.js"></script>
<script type="text/javascript" src="js/prototype.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>
<script type="text/javascript" src="js/effects.min.js"></script>
<script type="text/javascript" src="js/controls.js"></script>
<script type="text/javascript" src="js/js.js"></script>
<script type="text/javascript" src="js/form.js"></script>
<script type="text/javascript" src="js/translate.js"></script>
<script type="text/javascript" src="js/cookies.js"></script>
<script type="text/javascript" src="js/autocomplete.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function($) {
        $('.related-categories-banners-list').owlCarousel({
            items: 3,
            margin: 15,
            nav: false,
            stagePadding: 50,
            lazyLoad: true,
            lazyLoadEager: 1,
            dots: false,
            responsive: {
                768: {
                    nav: true,
                    items: 5,
                    stagePadding: 60,
                    margin: 20
                }
            }
        });
    });
</script>
<script type="text/javascript">
    (function($) {
        $(document).trigger('m-filter-scroll-reset', [
            'above_products_renk',
            4
            ]);
    })(jQuery);
</script>
<script type="text/javascript">
    (function($) {
        $(document).trigger('m-filter-scroll-reset', [
            'above_products_tarz',
            4
            ]);
    })(jQuery);
</script>
<script type="text/javascript">
    (function($) {
        $(document).trigger('m-filter-scroll-reset', [
            'above_products_fonksiyon',
            4
            ]);
    })(jQuery);
</script>
<script type="text/javascript">
    decorateDataList('narrow-by-list')
</script>
<script type="text/javascript">
    if ($j('link[rel="next"]').length < 1) {
        $j('li.next_page').remove();
    }
    decorateGeneric($$('ul.products-grid'), ['odd', 'even', 'first', 'last']);
    echo.init({
        offset: 100,
        throttle: 250,
        unload: false
    });
</script>
<script type="text/javascript">
    jQuery(document).ready(function($j) {
        $j(window).on('scroll', function() {
            var scrollPosition = $j(this).scrollTop();
            if (scrollPosition >= 300) {
                $j(this).off('scroll');
                var Oc = $j("#store-gallery").owlCarousel({
                    items: 7,
                    dots: false,
                    loop: true,
                    margin: 10,
                    lazyLoad: true,
                    center: false,
                    nav: false,
                    autoWidth: true,
                    autoplay: true,
                    autoplayTimeout: 3000,
                    slideBy: 1,
                    smartSpeed: 1000
                });
                $j('.fancybox').fancybox();
            }
        });
    });
</script>
<script type="text/javascript">
//<![CDATA[
var newsletterSubscriberFormDetail = new VarienForm('newsletter-validate-detail');
//]]> 
</script>
<script type="text/javascript">
//<![CDATA[
var google_tag_params = {
    "ecomm_pagetype": "category",
    "returnCustomer": "false",
    "ecomm_category": "Koltuk Tak\u0131mlar\u0131"
}; //]]> 
</script>
<script type="text/javascript">
    /*<![CDATA[*/
    var google_conversion_id = 808675506;
    var google_conversion_label = "";
    var google_conversion_language = "";
    var google_conversion_format = "";
    var google_conversion_color = "";
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /*]]>*/
</script>
</body>

</html>