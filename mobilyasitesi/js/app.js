var $j = jQuery.noConflict();
jQuery.noConflict();

jQuery('img.lzy-th').Lazy({
        enableThrottle: true,
        throttle: 250
    });
jQuery(function() {
    jQuery("img.lzy").Lazy({
    });
    jQuery('img.lzy-th').Lazy({
            enableThrottle: true,
            throttle: 250
        });
});
function get_data_json(data_url){
	var json = null;
	$j.ajax({
            'async': false,
            'method':'GET',
            'global': false,
            'url': data_url,
            'dataType': "json",
            'cache':true,
            'success': function (data) {
                json = data.visitor_id;
            }
        });
        return json;
}

document.addEventListener("DOMContentLoaded", function() {
  var tabs = document.querySelectorAll('.tabbed li');
  var switchers = document.querySelectorAll('.switcher-box a');
  var skinable = document.getElementById('skinable');

  for (var i = 0, len = tabs.length; i < len; i++) {
    tabs[i].addEventListener("click", function() {
      if (this.classList.contains('active'))
        return;

      var parent = this.parentNode,
          innerTabs = parent.querySelectorAll('li');

      for (var index = 0, iLen = innerTabs.length; index < iLen; index++) {
        innerTabs[index].classList.remove('active');
      }

      this.classList.add('active');
    });
  }

});


jQuery( document ).ready(function() {
	/* Mobile Beta Tests */
	jQuery('.m_p_imgs').owlCarousel({
			autoplay:false,
		    loop:false,
		    margin:0,
		    nav:false,
		    dots:true,
		    lazyLoad:true,
		    items:1
		});

	/* Mobile Beta Tests */
	if( jQuery('html').attr('lang') === 'tr' && jQuery('body').hasClass('catalog-product-view') ) {

		jQuery('body').on('change','.shipping_fee select[name="city"]',function () {
            jQuery('.shipping_fee .result').html('');
            var city = jQuery('select[name="city"]').val();

            ga('send', {
                hitType: 'event',
                eventCategory: 'Ürün',
                eventAction: 'Kargo Hesaplama',
                eventLabel: jQuery('.product-name h1').text() +' => ' + city
            });

            $j.ajax({
                async:false,
                url : "/external/shipping_rate.php",
                type: "POST",
                cache:false,
                data : {price:jQuery('.shipping_fee').data('price'), region:city, store_id: jQuery('body').data('store') },
                dataType: 'json',
                success: function(data)
                {
                    if(data.kargo){
                        shipping_fee_html = '<div><span class="city ' + data.kargo['delivery_type'] + '">' + city + ' </span>  <span class="rate">için ' + (data.kargo['sprice'] === 0 ? 'Ücretsiz Kargo !' : 'Kargo Ücreti : ' ) + ' <span class="sprice"> '+ (data.kargo['sprice'] !== 0 ? data.kargo['sprice']+' TL' : '' ) +'</span></div>';
                        jQuery('.shipping_fee .result').append(shipping_fee_html);
                    }
                    if(data.montaj){
                        shipping_fee_html = '<div><span class="city ' + data.montaj['delivery_type'] + '">' + city + ' </span>  <span class="rate">için ' + (data.montaj['sprice'] === 0 ? 'Ücretsiz Kargo & Montaj' : 'Montaj Hizmeti + ' ) + '<span class="sprice">'+ (data.montaj['sprice'] !== 0 ? data.montaj['sprice']+' TL Farkla !' : '' ) +'</span></div>';
                        jQuery('.shipping_fee .result').append(shipping_fee_html);
                    }

                },
                error: function (data)
                {
                }
            });
        });


		$j.ajax({
			async:false,
		    url : "/external/shipping_rate.php",
		    type: "POST",
		    cache:false,
		    data : {price:jQuery('.shipping_fee').data('price'), store_id: jQuery('body').data('store') },
		    dataType: 'json',
		    success: function(data)
		    {
			    	if(data.kargo && data.sehir){
			    			shipping_fee_html = '<div><span class="city ' + data.sehir + '">' + data.sehir + ' </span>  <span class="rate"> için ' + (data.kargo['sprice'] === 0 ? 'Ücretsiz Kargo !' : 'Kargo Ücreti : ' ) + ' <span class="sprice"> '+ (data.kargo['sprice'] !== 0 ? data.kargo['sprice']+' TL' : '' ) +'</span></div>';
			    			jQuery('.shipping_fee .result').append(shipping_fee_html);
			    	}				    	
			    	if(data.montaj && data.sehir){
			    			shipping_fee_html = '<div><span class="city ' + data.sehir + '">' + data.sehir + ' </span>  <span class="rate"> için ' + (data.montaj['sprice'] === 0 ? 'Ücretsiz Kargo & Montaj' : 'Montaj Hizmeti + ' ) + '<span class="sprice">'+ (data.montaj['sprice'] !== 0 ? data.montaj['sprice']+' TL Farkla !' : '' ) +'</span></div>';
			    			jQuery('.shipping_fee .result').append(shipping_fee_html);
			    	}		    	
		    },
		    error: function (data)
		    {	    	
		    }
		}); 		

	}

	jQuery('.m-css_checkboxes .m-scrollable-filter li a').click(function(){
		var page_title  = jQuery('.page-title h1').text();
		var filter_item = jQuery(this).text();
			ga('send', {
			  hitType: 'event',
			  eventCategory: 'Kategori Filtre',
			  eventAction: page_title,
			  eventLabel: filter_item
			});   		

	});

	jQuery(document).scroll(function () {
	    var y = jQuery(this).scrollTop();
	    if( jQuery('.tab-contents .tab6').is(':empty') ) {
		    if (y > 100) {
				$j.get( "/external/product_bar.php", { baslik: '6' } )
				  .done(function( data ) {
				    jQuery( '.tab-contents .tab6').html(data);
				  });    	
		    }

	    }

	});

	jQuery('.tabbed ul li').click(function(){
		$init_tab = '.tab-contents .tab'+jQuery(this).attr('data-index');
		if( jQuery('.tab-contents .tab').hasClass($init_tab) ) {

		} else {
			jQuery('.tab-contents .tab').removeClass('active');
		}
		jQuery( $init_tab ).addClass('active');
		$j.get( "/external/product_bar.php", { baslik: jQuery(this).attr('data-index') } )
		  .done(function( data ) {
		    jQuery( $init_tab).html(data);
		  });		

	});

    (function($) {
        var $pswp = $('.pswp')[0];
        $('.picture').each( function() {
            var $pic     = $(this),
                getItems = function() {
                    var items = [];
                    $pic.find('a').each(function() {
                        var $href   = $(this).attr('href'),
                            $size   = $(this).data('size').split('x'),
                            $width  = $size[0],
                            $height = $size[1];

                        var item = {
                            src : $href,
                            w   : $width,
                            h   : $height
                        };

                        items.push(item);
                    });
                    return items;
                };

            var items = getItems();
            $pic.on('click', 'figure', function(event) {
                event.preventDefault();
                var $index = $(this).data('order');
                var options = {
                    index: $index,
                    bgOpacity: 0.7,
                    showHideOpacity: true,
                    escKey:true,
                    loop:false,
                    arrowEl: true,
                    preload:[1,2],
                    preloaderEl: true,
                    tapToClose: false,
                    shareEl:false,
                    clickToCloseNonZoomable: true,
                    tapToToggleControls:false
                };

                var lightBox = new PhotoSwipe($pswp, PhotoSwipeUI_Default, items, options);
                lightBox.init();
                if (screenfull.enabled) {
                    screenfull.request();
                }
            });
        });
    })(jQuery);
    jQuery('.b_search').click(function(e){
        jQuery('html, body').animate({scrollTop: -47}, 'slow');
        jQuery('.second_search input#search').focus();
    });
});

(function($){
    $.fn.extend({ 
        rotaterator: function(options) {
 
            var defaults = {
                fadeSpeed: 500,
                pauseSpeed: 100,
				child:null
            };
             
            var options = $.extend(defaults, options);
         
            return this.each(function() {
                  var o =options;
                  var obj = $(this);                
                  var items = $(obj.children(), obj);
				  items.each(function() {$(this).hide();})
				  if(!o.child){var next = $(obj).children(':first');
				  }else{var next = o.child;
				  }
				  $(next).slideDown(o.fadeSpeed, function() {
						$(next).delay(o.pauseSpeed).slideUp(o.fadeSpeed, function() {
							var next = $(this).next();
							if (next.length == 0){
									next = $(obj).children(':first');
							}
							$(obj).rotaterator({child : next, fadeSpeed : o.fadeSpeed, pauseSpeed : o.pauseSpeed});
						})
					});
            });
        }
    });
})(jQuery);



jQuery( document ).ready(function() {
	var visitor_id = get_data_json('/external/hash.php');
	setTimeout( function(){
		changeWhatsappNumber();
		like_count();
	},1000);

	function getCookieValue(a) {
		var b = document.cookie.match('(^|[^;]+)\\s*' + a + '\\s*=\\s*([^;]+)');
		return b ? b.pop() : null;
	}

	function changeWhatsappNumber() {
		if(!getCookieValue("whatsapp_number")) {
			$j.ajax({
				async:false,
				url : "/external/whatsapp_info.php",
				type: "GET",
				cache:true,
				dataType: 'json',
				success: function(data)
				{
					document.cookie = "whatsapp_number="+data.whatsapp_number;
				}
			});
		}
		if(getCookieValue("whatsapp_number")) {
			var whatsappHtml = jQuery('header[role="banner"]').html().replace('+905414360087', getCookieValue("whatsapp_number"));
			whatsappHtml = whatsappHtml.replace('tel:+905414360087', getCookieValue("whatsapp_number"));
			jQuery('header[role="banner"]').html(whatsappHtml);
		}

	}
	function like_count(){
		$j.ajax({
			async:false,
		    url : "/external/product_like.php",
		    type: "POST",
		    cache:true,
		    data : { act: 'like_count', visitor_id:visitor_id, store_id: jQuery('body').data('store') },
		    dataType: 'json',
		    success: function(data)
		    {
		    	jQuery('.fav-qty').text(data.vote_count);

		    },
		    error: function (data)
		    {
		    }
		});
	}
	

	var cash_price = jQuery('.product-view .product-essential .price_wrapper .cash-price .price').text();
	var inst_price = jQuery('.product-view .product-essential .price_wrapper .inst-price .price').text();
	jQuery('.product-options-bottom .price-wrp .cash-price .price').html(cash_price);
	jQuery('.product-options-bottom .price-wrp .inst-price .price').html(inst_price);
	jQuery('.get_installament').attr('data-href','/external/fiyat.php?fiyat='+parseFloat( inst_price.replace(/\D/g,'')).toFixed(0));

	jQuery('body').on('change','.option.modules .options-list li label select.qty',function(e){
		e.preventDefault();
		$el 	= jQuery(this).closest('label').find('input.checkbox');
		$item   = jQuery(this).closest('li');
		if( jQuery(this).val() > 0 ) {
			$el.prop('checked',true);
			$item.addClass('active');
		} else{
			$el.prop('checked',false);
			$item.removeClass('active');
		}		
		var c_data = calc_option_price();
		var cash_price 	=  (parseFloat( c_data.calc_price) * 0.92).toFixed(2);
		var inst_price 	= c_data.calc_price;
		cash_price 		= accounting.formatMoney(cash_price , { symbol: "TL", thousand: ".", precision : 0,  format: "%v %s" });
		inst_price 		= accounting.formatMoney(inst_price , { symbol: "TL", thousand: ".", precision : 0,  format: "%v %s" });


		jQuery('.product-options-bottom .price-wrp .cash-price .price').html(cash_price);
		jQuery('.product-options-bottom .price-wrp .inst-price .price').html(inst_price);
		jQuery('.get_installament').attr('data-href','/external/fiyat.php?fiyat='+parseFloat( inst_price.replace(/\D/g,'')).toFixed(0));
		//console.log(opConfig);
	});
	function calc_option_price(){
		var options_selected = [];
		options_selected.calc_price = 0;
		jQuery('.option.modules .options-list li').each(function(index,row){
			if( jQuery(row).find('input.checkbox').is(':checked')) {

				var option = [];
				option.op_id 	= jQuery(row).find('input.checkbox').attr('name').replace(/\D/g,'');
				option.val_id 	= jQuery(row).find('input.checkbox').val();
				option.qty 		= jQuery(row).find('select.qty').val();

				option.title = opConfig[option.op_id][option.val_id]['title'];
				option.price = opConfig[option.op_id][option.val_id]['price'];				
				options_selected.calc_price +=  ( parseFloat( option.qty) * parseFloat( option.price) );
				options_selected.push(option);
			}

		});		
		return options_selected;

	}


	/* Show Product Montaj */
	jQuery('body').on('click','.pr_montaj',function(e){
		e.preventDefault();
		jQuery( jQuery(this).attr('href') ).addClass('op');

	    jQuery("body, html").animate({ 
	        scrollTop: jQuery( jQuery(this).attr('href') ).offset().top-140 
	    }, 0);		

		var iframe = '<div style=\'font-size: 16px;background: #43A047 !important;color: #fff;'
						+'font-family: "berke bold";'
						+'padding: 10px 5px 5px 5px;'
						+'text-shadow: 1px 1px 1px #376b3a;'
						+'text-align: center;\'>Berke Mobilya olarak tüm Türkiye genelinde kurulum/montaj hizmeti de vermekteyiz. İl seçimi yaparak montaj hizmet bedelleri konusunda bilgi alabilirsiniz.</div>'
						+'<iframe id="montaj_frame" src="/html/montaj/index.html" width="1165" height="500" frameborder="0" scrolling="no"> </iframe>';
		jQuery( "#montaj .frame" ).html(iframe);
	});
	/* Show Product Montaj */	

	/* Show Installement */
	jQuery('body').on('click','.get_installament',function(e){
		e.preventDefault();
		var width = '70%';
		var height = '70%';
		if( jQuery('html').hasClass('mobile') ) { width = '100%'; }
		if( jQuery('html').hasClass('mobile') ) { height = '100%'; }
		$j.fancybox.open({
		    padding : 0,
		    href:jQuery(this).data('href'),
		    type: 'iframe',
			maxWidth	: 1000,
			maxHeight	: 750,
			fitToView	: false,
			width		: width,
			height		: height,
			autoSize	: false,
			closeClick	: false,
			openEffect	: 'none',
			closeEffect	: 'none'		    
		});
	});
		jQuery(".get_installamentd").fancybox({

		});	
	/* Show Installement */

	/* Play Youtube */
	jQuery('.youtube .starter').click(function(){
		jQuery(this).hide();
		jQuery('.embed-responsive').removeClass('hidden');
		jQuery("#product-video")[0].src += "&autoplay=1";
	});

	/* Play Youtube */
    // if(jQuery('body').hasClass('catalog-product-view')){
    //     jQuery('.desktop .tip, .tablet .tip').tooltipster({
    //         contentAsHTML: true,
    //         interactive: true,
    //         maxWidth: 300,
    //         position:'bottom',
    //         animation: 'swing',
    //         theme: 'tooltipster-punk',
    //         trigger:'hover'
    //     });
    //     jQuery('.mobile .tip').tooltipster({
    //         contentAsHTML: true,
    //         interactive: true,
    //         maxWidth: 300,
    //         position:'bottom',
    //         animation: 'swing',
    //         theme: 'tooltipster-punk',
    //         trigger:'click'
    //     });
    //     jQuery('.desktop .product .prd_like .p_like').tooltipster({
    //         contentAsHTML: true,
    //         interactive: true,
    //         maxWidth: 300,
    //         position:'top',
    //         animation: 'swing',
    //         theme: 'tooltipster-punk',
    //         trigger:'hover'
    //     });
    // }

	jQuery('.btn.configure-add').click(function(e){
		e.preventDefault();

			ga('send', {
			  hitType: 'event',
			  eventCategory: 'Sepet',
			  eventAction: 'Modül Ürün',
			  eventLabel: jQuery('.product-name h1').text()
			});   


		//console.log( jQuery('#product-options').offset().top+200);
	    jQuery("body, html").animate({ 
	        scrollTop: jQuery( jQuery(this).attr('href') ).offset().top-100 
	    }, 600);

	    jQuery('#product-options').addClass('highlight').delay(1000).queue(function(){
    		jQuery(this).removeClass("highlight").dequeue();
		});	    
		
	});
	jQuery('.head_phone .phone').rotaterator({fadeSpeed:400, pauseSpeed:3000});

	jQuery('.p_ask_question').click(function(){
		if( jQuery('html').hasClass('mobile')) {
			var width 	= '100%;';
			var height  = '95%;';
		} else if(jQuery('html').hasClass('tablet')){
			var width 	= '80%;';
			var height  = '75%;';			
		} else{
			var width 	= '50%;';
			var height  = '65%;';						
		}

			ga('send', {
			  hitType: 'event',
			  eventCategory: 'Ürün',
			  eventAction: 'Soru Sorma',
			  eventLabel: jQuery('.product-name h1').text(),
			});   

		var 	content 	= '<form method="POST" id="fast_message" class="form-horizontal send_message">';
				page_title  = '';
			if(jQuery('body').hasClass('catalog-product-view')){				
				page_title  = jQuery('.product-name h1').text();
				content 	+= '<h2>'+page_title+' '+___('Hakkında Soru Sorun')+'</h2>'
			} else{
				page_title  = document.title;
				content 	+= '<h2>'+___('Hızlı Mesaj Gönder')+'</h2>'				
			}
				content 	+= 	'<input	type="hidden" name="page_url" 		value="'+window.location.href+'" />'
							+ 	'<input	type="hidden" name="page_title" 	value="'+page_title+'" />'
							+ 	'<input	type="hidden" name="act"	 		value="send_message" />'
							+	'<input type="hidden" name="form_control" 	value="valid">'
							+	'<input type="hidden" name="store_id" 		value="'+jQuery('body').data('store')+'">'
							+	' <div class="form-group"> <label for="name" class="col-sm-2 control-label">'+___('Adınız')+'</label> <div class="col-sm-10"> <input type="text" class="form-control" name="name" id="name" placeholder="Adı" required></div></div><div class="form-group"> <label for="email" class="col-sm-2 control-label">E-mail</label> <div class="col-sm-10"> <input type="email" class="form-control" name="email" id="email" placeholder="E-mail" required></div></div><div class="form-group"> <label for="message" class="col-sm-2 control-label">Mesajınız</label> <div class="col-sm-10"> <textarea class="form-control" name="message" id="message" rows="3" placeholder="Mesajınızı buraya yazabilirsiniz." required></textarea></div></div><div class="form-group"> <div class="col-sm-offset-2 col-sm-10"> <p class="help_text"><i class="fa fa-phone"></i> <a class="p" href="tel:+90 212 436 00 87">0212 436 00 87</a> - <i class="fa fa-whatsapp"></i> <a class="w" href="tel:+90 541 436 00 87">0541 436 00 87</a> üzerinden de iletişime geçebilirsiniz.</p> <button type="submit" class="btn btn-success send_message">'+___('Mesajı Gönder')+'</button> <a class="btn btn-warning close_form">'+___('İptal')+'</a></div></div></form>';
		$j.fancybox(content,{
			maxWidth	: 600,
			maxHeight	: 600,
			fitToView	: false,
			width		: width,
			height		: height,
			autoSize	: false,
			closeClick	: false,
			openEffect	: 'none',
			closeEffect	: 'none'
		});


		jQuery('body').on('click','form.send_message .close_form',function(){
			$j.fancybox.close();
		});
		jQuery('body').on('submit','form.send_message',function(event){
			event.preventDefault();
			var form_data = jQuery('form.send_message').serializeArray();
			jQuery('form.send_message .form-group').hide(200);
    		var alert_message = '<div class="alert alert-success msg_alert" role="alert">'
								+'<strong>Mesajınız başarıyla alındı. En kısa sürede sizinle iletişime geçeceğiz.</strong>'
								+'</div>';			
			jQuery('form.send_message').html(alert_message);
			setTimeout( function(){ 
				$j.fancybox.close();
			},1200);				
			$j.ajax({
			    url : "/external/ajax.php",
			    type: "POST",
			    data : form_data,
			    dataType: 'json',
			    success: function(data,statusText, xhr)
			    {	 			    	
			    	//console.log(data);		    	
			    },
			    error: function(data,statusText, xhr)
			    {	    	
			 		//console.log(data);
			    }
			}); 			
		});		
		
	});


	/*************** Product Page **********************/
	jQuery('.m_opn_cmnt').click(function(){
		jQuery(this).hide();
		jQuery('.askit-product').show();
	});
	var m_prd_img_slider = jQuery('.mobile .m_prd_imgs, .tablet .m_prd_imgs');
		m_prd_img_slider.owlCarousel({
		    loop:false,
		    margin:0,
		    nav:false,
		    dots:true,
		    lazyLoad:true,
		    responsive:{
		        0:{
		            items:1
		        },
		        600:{
		            items:1
		        },
		        1000:{
		            items:1
		        }
		    }
		});

		jQuery('.mobile .p_features, .tablet .p_features').owlCarousel({
		    loop:true,
		    margin:0,
		    nav:false,
		    dots:false,
		    autoplay:true,
		    autoplayTimeout:1200,
		    responsive:{
		        0:{
		            items:3
		        },
		        768:{
		            items:5
		        },
		        1000:{
		            items:1
		        }
		    }
		});		

		/*************** Media Gallery **********************/
			jQuery(".elevatezoom-gallery").hover(function(){
				var new_image = jQuery(this).data('image');
				var index     = jQuery(this).attr('order');
				jQuery('.zoom_image').attr('src',new_image).attr('order', index);
			});

			jQuery(".elevatezoom-gallery").fancybox({
				prevEffect	: 'none',
				nextEffect	: 'none',
				helpers	: {
					title	: {
						type: 'outside'
					},
					thumbs	: {
						width	: 80,
						height	: 44
					}
				}
			});
				jQuery('.zoom_image').click(function(e){
					$index = jQuery(this).attr('order');
					jQuery(".elevatezoom-gallery").eq($index).trigger('click');
				});


		/*************** Media Gallery **********************/
		/** Kartela **/
			jQuery(".desktop .kartela-gallery").fancybox({
				prevEffect	: 'none',
				nextEffect	: 'none',
				height      : '2250',
				minHeight	: '2250',
				helpers	: {
					title	: {
						type: 'outside'
					},
					thumbs	: {
						width	: 35,
						height	: 70
					}
				}
			});
			jQuery(".tablet .kartela-gallery").fancybox({
				prevEffect	: 'none',
				nextEffect	: 'none',
				height      : '600',
				minHeight	: '600',
				helpers	: {
					title	: {
						type: 'outside'
					},
					thumbs	: {
						width	: 35,
						height	: 70
					}
				}
			});			
			jQuery(".mobile .tum-kartela > a, .mobile .kartela-gallery").fancybox({
				openEffect	: 'none',
				closeEffect	: 'none',
				width:330,
				minWidth:330,
				padding:0,
				margin:10,
				closeClick:true,
			});				

		/** Kartela **/
		jQuery(function() {
		    jQuery('.desktop .match, .desktop .product-options .options-list li').matchHeight();
		});	

		var product_small_images = jQuery('.more-views');
		  product_small_images.owlCarousel({
		 
		      autoPlay: 3000, //Set AutoPlay to 3 seconds
		 	  nav : false,
		 	  dots:false,
		      items : 10,
		      itemsDesktop : [1199,10],
		      itemsDesktopSmall : [979,6]
		 
		  });		
	  	jQuery('.prd-gallery .m-ctrl a.next').click(function() {
		    product_small_images.trigger('next.owl.carousel',[200]);
		});
		jQuery('.prd-gallery .m-ctrl a.prev').click(function() {
		    product_small_images.trigger('prev.owl.carousel', [200]);
		});


	/* Product Page */

	/* Sticky Navigation */

	if( /Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent) ) {

	} else{

		if( jQuery('body').hasClass('cms-index-index') !== true) {

			jQuery('.desktop .category_tree.dropdown').on('shown.bs.dropdown', function () {
				jQuery('<div class="modal-backdrop op5"></div>').appendTo(document.body);
			});
			jQuery('.desktop .category_tree.dropdown').on('hidden.bs.dropdown', function () {
				jQuery('.modal-backdrop').remove();
			});							

		}

		if( jQuery('body').hasClass('cms-index-index') !== true) {

			jQuery('.desktop .head-navigation').sticky({topSpacing:0});

			jQuery('.desktop .head-navigation').on('sticky-start', function() { 

					jQuery('._logo > a').prependTo('.navbar-default.navbar-main .navbar-header');
					jQuery('._search form').insertAfter('.navbar-default.navbar-main .navbar-nav > li:nth-child(1)');
					jQuery('._access .head_phone .phone')
						.removeClass('pull-right')
						.removeClass('clearfix')
						.prependTo('.navbar-default.navbar-main .navbar-nav li.pull-right');
			});

			jQuery('.desktop .head-navigation').on('sticky-end', function() { 
					jQuery('.modal-backdrop').remove();
					jQuery('.navbar-header a.logo').prependTo('header ._logo');
					jQuery('._nav_link .phone').appendTo('._access .head_phone').addClass('pull-right').addClass('clearfix');
					if( jQuery('._search div.row').length <= 1 ) {
						jQuery('#search_mini_form').appendTo('._search');	
						jQuery('.navbar-default.navbar-main #search_mini_form').remove();
					}

			});


		}	

	}

	
	/* Sticky Navigation */


	var home_slider = jQuery('.home-slider .slides');
		home_slider.owlCarousel({
			autoplay:true,
    		autoplayTimeout:3500,
		    loop:true,
		    margin:0,
		    nav:false,
		    dots:true,
		    lazyLoad:true,
		    items:1
		});


	jQuery('.cms-index-index .category_tree:first-child').on('hide.bs.dropdown', function () {
	    return false;

	});

	jQuery('.mobile .block-layered-nav dt.m-ln').click(function (e) {
        jQuery(this).toggleClass('show');
    });

	/* Category Reviews */
	if( jQuery('.c_review_form').length > 0 )
		var form_key = '<input type="text" class="form_control hidden" name="form_control" value="valid" />';
	  jQuery('.c_review_form .c_form_submit').append(form_key);
	  //todo remove rateyo
	  // jQuery(".cat_rating").rateYo({
	  //   rating: 4,
	  //   spacing: "5px",
	  //   fullStar: true,
	  //   ratedFill: "#00a353",
	  //   starWidth: "25px",
	  //   onSet: function (rating, rateYoInstance) {
		//       jQuery('input.review_rating').val(rating);
		//     }
	  // });

	jQuery('.categoryreviews .c_send_review').click(function(){
		//jQuery(this).addClass('disabled');

			$j.ajax({
			    url : "/external/ajax.php",
			    type: "POST",
			    data : 
			    { 
			    	act: 'send_review', 
			    	store_id: jQuery('body').data('store'), 
			    	review_rating: jQuery('.review_rating').val(),
			    	review_name: jQuery('#review_name').val(),
			    	review_email: jQuery('#review_email').val(),
			    	review_message: jQuery('#review_message').val(),
			    	form_control: jQuery('.form_control').val(),
			    	category_id: jQuery('input[name="category_id"]').val(),

			    },
			    dataType: 'json',
			    success: function(data,statusText, xhr)
			    {
			    	if(xhr.status == 200){
			    		jQuery('.c_review_form').hide(200);
			    		var alert_message = '<div class="alert alert-success msg_alert" role="alert">'
  											+'<strong>Yorumunuz başarıyla alındı.</strong>'
											+'</div>'
			    		jQuery('.categoryreviews .box').append(alert_message);
							setTimeout( function(){ 
								jQuery('.msg_alert').hide(200);
								jQuery('.open_review_form').show(200);
							},2000);			    		
			    	}	 			    	
			    	/*console.log(data);*/
			    },
			    error: function(data,statusText, xhr)
			    {	    	
		    		jQuery('.c_review_form').hide(200);
		    		var alert_message = '<div class="alert alert-danger msg_alert" role="alert">'
											+'<strong>Mesajınız spam algılandı lütfen daha sonra tekrar deneyin!</strong>'
										+'</div>'
		    		jQuery('.categoryreviews .box').append(alert_message);
						setTimeout( function(){ 
							jQuery('.msg_alert').hide(200);
						},2000);			    			    	
			 		/*console.log(data);*/
			    }
			}); 


	});

	/* Category Reviews */	
	jQuery('.open_review_description_box').click(function(){
		jQuery(this).hide();
		jQuery('.review_description').removeClass('hidden-xs').removeClass('hidden-sm');
	});
	jQuery('.categoryreviews .c_close_form').click(function(){
		jQuery('.categoryreviews .open_review_form').show();
		jQuery('.c_review_form').hide();
	});
	jQuery('.categoryreviews .open_review_form').click(function(){
		jQuery(this).hide();
		jQuery('.c_review_form').show();
	});

	jQuery('.desktop li.yamm > a').click(function () {
		window.location.replace( jQuery(this).attr('href') );
	});

	jQuery('.desktop .categorys_tree >li.level-top').hover(function(){
		if(jQuery(this).hasClass('opened')) {
			jQuery(this).removeClass('opened');
		}else{
			jQuery(this).addClass('opened');
		}
	});
	jQuery('.desktop .categorys_tree .dropdown-menu').hover(function(){

		if( jQuery(this).parent('li.level-top').hasClass('opened') ) {
			jQuery(this).removeClass('opened');
		} else {
			jQuery(this).addClass('opened');
		}
		//jQuery(this).parent('li.level-top').toggleClass('opened');
	});

	var categorys_tree_height = jQuery('.desktop .categorys_tree').height();
	jQuery('.desktop .categorys_tree ul.dropdown-menu').height( categorys_tree_height);

    jQuery(".ddesktop .home_banner .gallery_item").mouseenter(function(){
        jQuery(this).find('h3').show('fast');
    }); 
    jQuery(".ddesktop .home_banner .gallery_item").mouseleave(function(){
        jQuery(this).find('h3').hide('fast');
    }); 


    /** Product Fav List **/
    jQuery('.mobile #mobileFav').on('shown.bs.modal', function (e) {
			$j.ajax({
			    url : "/external/product_like.php",
			    type: "POST",
			    data : { act: 'like_list', store_id: jQuery('body').data('store')},
			    dataType: 'json',
			    success: function(data)
			    {
			    	jQuery('.fav_list').removeClass('hidden').html(data.product_list_html);			    	
			    },
			    error: function (data)
			    {	    	
			    }
			}); 
	});

    jQuery('body').on('click','a.top_fav',function(e){
    //jQuery('a.top_fav').click(function(e){
    	e.preventDefault;
    	if( jQuery('.fav_list').hasClass('hidden') ) {
    	
			$j.ajax({
			    url : "/external/product_like.php",
			    type: "POST",
			    data : { act: 'like_list', visitor_id: visitor_id, store_id: jQuery('body').data('store')},
			    dataType: 'json',
			    success: function(data)
			    {
			    	jQuery('.fav_list').removeClass('hidden').html(data.product_list_html);			    	
			    },
			    error: function (data)
			    {	    	
			    }
			}); 

		} else {
			jQuery('.fav_list').addClass('hidden');
		}

		jQuery(document).mouseup(function (e)
		{
		    var container = jQuery("a.top_fav");

		    if (!container.is(e.target) // if the target of the click isn't the container...
		        && container.has(e.target).length === 0) // ... nor a descendant of the container
		    {
				jQuery('.fav_list').addClass('hidden');
		    }
		});	

    });

	jQuery('body').on('click','span.del_fav',function(ev){
		ev.preventDefault();
		$el = jQuery(this);
		var uniq_id = jQuery(this).data('uniq_id');
		$j.ajax({
		    url : "/external/product_like.php",
		    type: "POST",
		    data : { act: 'del_fav', uniq_id: uniq_id, store_id: jQuery('body').data('store')},
		    dataType: 'json',
		    success: function(datae)
		    {
		    	$el.closest('li').remove();
		    	like_count();

		    },
		    error: function (datae)
		    {	    	
		    }
		}); 					

	});  


    jQuery('.p_like').click(function(e){
    	if( jQuery('body').hasClass('catalog-product-view')){
    		var product_name = jQuery('div.product-name h1').text();    		
    	}else {
    		var product_name = jQuery(this).closest('div.item').find('a.product-link').attr('title');
    	}
			ga('send', {
			  hitType: 'event',
			  eventCategory: 'Ürün',
			  eventAction: 'Beğeni',
			  eventLabel: product_name,
			});    	
    		var hash 		= jQuery(this).data('hash');
    		var prd  		= jQuery(this).data('prd');
    		var cur_vote 	= jQuery(this).text();
    		var _position   = jQuery('html').hasClass('mobile') ? 'left-middle' :'bottom-center';
    		$node = jQuery(this);
    		formData = { hash :hash, prd :  prd, visitor_id: visitor_id, act: 'like', store_id: jQuery('body').data('store')};
		$j.ajax({
		    url : "/external/product_like.php",
		    type: "POST",
		    data : formData,
		    dataType: 'json',
		    success: function(data,statusText, xhr)
		    {
		    	like_count();
		    	if( $node.closest('.prd_like').length > 0 ) {

				        $node.parent('.prd_like').animate(
				            {
				                'top' : '30px',
				                'opacity' :'0.3',
				                'transform': 'rotate(160deg)'
				            }, 300, function() {
				                $node.parent('.prd_like').animate({
				                    'top': '7px',
				                    'opacity': '1',
				                    'transform': 'rotate(60deg)'
				            }, 300)
                    	});	
				        $node.animate(
				            {
				                'font-size' : '14px',
				                'font-weight':'bold',
				                'opacity' : '0.2',
				            }, 300, function() {
				                $node.animate({
				                    'font-size': '10px',
				                    'font-weight':'normal',
				                    'opacity' :'1'
				            }, 300)
                    	});	
                    	/*console.log(xhr.status);*/
                    	$node.text( parseInt( cur_vote) + 1 );
				    if( xhr.status === '200') {
			        	$node.text( parseInt( cur_vote) + 1 );
			        }

					var notify = setTimeout(function(){ 
						$node.notify(data.success,{
				        	position:_position,
				        	className:'success',
				        	autoHideDelay:'1500'
				        });
					}, 600);	

		        } else {
					var notify = setTimeout(function(){ 
						$node.notify(data.success,{
				        	position:_position,
				        	className:'success',
				        	autoHideDelay:'1500'
				        });
					}, 600);			        	
		        }

		    },
		    error: function (data)
		    {	
		    	var message = JSON.parse( data.responseText);		    
		        $node.notify(message.error,{
		        	position:_position,
		        	className:'error',
		        	autoHideDelay:'1500'
		        });		    	

		    }
		});    	

    });

    /**
	 * Mobile offcanvas menu
     */
    jQuery('body').on('click', '.hmenu', function (e){
		console.log('hello');
		e.preventDefault();
		var backButtonHtml = '<a class="back-button" style="display: none" href="javascript:void(0)"><i class="fa fa-angle-left"></i></a>';
		var offCanvasBackdropHtml = '<div class="offcanvas-backdrop"><a href="javascript:void(0)" class="close-offcanvas"><span>x</span></a></div>';
        var showSubMenuHtml = '<a class="show-sub-menu"><i class="fa fa-angle-right"></i></a>';

		var offCanvas = jQuery('.menu-offcanvas');
        var body = jQuery('body');
		jQuery('.header_mobile .navbar-nav').css('height', window.innerHeight+'px');
        body.addClass('offcanvas-opened');
        if( !body.find('.off-canvas.backdrop').length > 0 ) {
        	body.append(offCanvasBackdropHtml);
		}
		offCanvas.addClass('active').prepend(backButtonHtml);

        jQuery('.navbar-nav li.parent').each(function (index) {
            if( jQuery(this).find('.show-sub-menu').length > 0) {
			} else {
                jQuery(this).append(showSubMenuHtml);
			}
        });

		jQuery('.navbar-nav li.parent > a').click(function (e) {
            e.preventDefault();
            var dropDownMenu = jQuery(this).parent('.parent').find('.dropdown-menu');
            jQuery('a.back-button').show();
            offCanvas.addClass('open');
			dropDownMenu.addClass('open');

            jQuery('a.back-button').click(function (e) {
                e.preventDefault();
                jQuery(this).hide();
                offCanvas.removeClass('open');
                dropDownMenu.removeClass('open');
            });
        });

        body.on('click', '.close-offcanvas, .offcanvas-backdrop', function (e) {
            offCanvas.removeClass('active').removeClass('open');
            body.removeClass('offcanvas-opened');
            jQuery('.offcanvas-backdrop').remove();
            jQuery('a.back-button').remove();
        });

	});

	/* Mobile Lazy Load Products Images */

	/* Mobile Scroll Down */
		var didScroll;
		var lastScrollTop = 0;
		var delta = 5;
		var navbarHeight = jQuery('.mobile_scroll').outerHeight();

		jQuery(window).scroll(function(event){
		    didScroll = true;
		});

		setInterval(function() {
		    if (didScroll) {
		        hasScrolled();
		        didScroll = false;
		    }
		}, 50);

		function hasScrolled() {
		    var st = jQuery(this).scrollTop();
		    
		    // Make sure they scroll more than delta
		    if(Math.abs(lastScrollTop - st) <= delta)
		        return;
		    
		    // If they scrolled down and are past the navbar, add class .nav-up.
		    // This is necessary so you never see what is "behind" the navbar.
		    if (st > lastScrollTop && st > navbarHeight){
		        // Scroll Down
		        jQuery('.mobile_scroll').removeClass('nav-down').addClass('nav-up');
		    } else {
		        // Scroll Up
		        if(st + jQuery(window).height() < jQuery(document).height()) {
		            jQuery('.mobile_scroll').removeClass('nav-up').addClass('nav-down');
		        }
		    }
		    
		    lastScrollTop = st;
		}


	jQuery(function() {
		jQuery('.products-grid .product').hover(function() {
			$child_images = jQuery(this).find('.lazy');
	        $child_images.Lazy({
	        	bind : 'event',
	        	effect: 'fadeIn'
	        });

	    });
	});	    

	jQuery( ".desktop .products-grid .product" ).mouseenter(function() {

		if( !jQuery(this).hasClass('no-detail')) {

	  		$origin_image = jQuery(this).find('.product-link .image img').attr('src');

	  		/* Hover Image */
			jQuery('.desktop .products-grid .product .more-imgs img').hover(function(){
				var n_img = jQuery(this).data('big');
				var n_index = jQuery(this).data('index');
				jQuery(this).closest('.product-link').find('.image img').attr('src',n_img);
				jQuery(this).closest('.product-link').find('.image img').attr('data-index',n_index);
			});	  
			/* Hover Image */


			if( jQuery('body').data('store') == '1') {
				/* Show Additional Info */
				$product = jQuery(this);
				var cash_price = false;
				if($product.find('.price-container .price-box .price').length > 0 ) {
					cash_price = $product.find('.price-container .price-box .price').text();

				} else if( $product.find('.price-container .price-box .special-price').length > 0) {
					cash_price = $product.find('.price-container .price-box .special-price').text();
				}

				if( cash_price !== false ) {
					cash_price = parseFloat( cash_price.replace(/[^0-9]/g, '') );
					var inst_price = parseFloat( (cash_price / 92) *100 ).toFixed() ;
					var add_text 	= '<span class="add_text">Peşin Fiyatına <span class="sp2">'+parseFloat( inst_price / 6 ).toFixed(2)+' x 6</span> Taksitle !</span>';
					$product.find('.name').append(add_text);

					var inst_price_html = '<div class="inst_price"><span class="helper">Peşin</span><span class="ins_price_price">'+accounting.formatMoney(inst_price , { symbol: "₺", thousand: ".", precision : 0,  format: "%v %s" }) + '</span></div>';
					$product.find('.price-box').append(inst_price_html);

					var cash_helper_text = '<span class="helper">Havale/EFT</span>';
					$product.find('.price-box .price, .price-box .special-price').prepend(cash_helper_text);

					$product.find('.price-container').addClass('hover');
				}
				/* Show Additional Info */				
			}

		}	

	  })
	  .mouseleave(function() {
	  	if( ! jQuery(this).hasClass('banner') && !jQuery(this).hasClass('no-detail') ) {
		    jQuery(this).find('.image img').attr('src',$origin_image);

		    jQuery('.add_text').remove();
		    jQuery('.inst_price').remove();
		    jQuery('.price-box .helper').remove();
		    jQuery('.price-container').removeClass('hover');
	    }
	    
	  });

	  /* Layered Nav Slider */
});





Number.prototype.format = function(n, x) {
    var re = '(\\d)(?=(\\d{' + (x || 3) + '})+' + (n > 0 ? '\\.' : '$') + ')';
    return this.toFixed(Math.max(0, ~~n)).replace(new RegExp(re, 'g'), '$1,');
};

function ___($text){
	if( jQuery('body').data('store') == '4') {
		var list_en = new Array();
			list_en['HIZLI MESAJ'] = 'ASK QUESTION';
			list_en['Adınız'] = 'Name';
			list_en['Mesajı Gönder'] = 'Send Message';
			list_en['Hızlı Mesaj Gönder'] = 'Ask Question';
			list_en['İptal'] = 'Cancel';


		if( !($text in list_en) ) {
			return $text;
		} else {

			return list_en[$text];					
		}

	} else if ( jQuery('body').data('store') == '1' ) {
		return $text;
	}

}

function setHeight(){
	var product_height = jQuery('.home_featured_products .product, .desktop .category-products .products-grid .product').outerHeight();
	jQuery('.home_featured_products .product, .desktop .products-grid .product').css('height', product_height );
}

jQuery(window).load(function () {
	setHeight();
});



