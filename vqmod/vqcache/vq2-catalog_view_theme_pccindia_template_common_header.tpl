<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<title><?php echo $title; ?></title>
<base href="<?php echo $base; ?>" />
<?php if ($description) { ?>
<meta name="description" content="<?php echo $description; ?>" />
<?php } ?>
<?php if ($keywords) { ?>
<meta name="keywords" content="<?php echo $keywords; ?>" />
<?php } ?>
<?php if ($icon) { ?>
<link href="<?php echo $icon; ?>" rel="icon" />
<?php } ?>

<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>

<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindia/stylesheet/fonts/fonts.css" /><!--new-->
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindia/stylesheet/stylesheet.css" />

<link rel="stylesheet" type="text/css" href="catalog/view/theme/<?php echo $this->config->get('config_template'); ?>/stylesheet/shopbycolor.css" />
<?php foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php } ?>
<!--<script type="text/javascript" src="catalog/view/javascript/jquery/jquery-1.7.1.min.js"></script>
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>-->
<script type="text/javascript" src="catalog/view/theme/pccindia/js/jquery-1.11.3.min.js"></script>
<script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<!--[if IE 7]> 
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindia/stylesheet/ie7.css" />
<![endif]-->
<!--[if lt IE 7]>
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindia/stylesheet/ie6.css" />
<script type="text/javascript" src="catalog/view/javascript/DD_belatedPNG_0.0.8a-min.js"></script>
<script type="text/javascript">
DD_belatedPNG.fix('#logo img');
</script>
<![endif]-->
<?php if ($stores) { ?>
<script type="text/javascript"><!--
$(document).ready(function() {
<?php foreach ($stores as $store) { ?>
$('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');
<?php } ?>
});
//--></script>
<?php } ?>
<script>
//<![CDATA[
   /*   var Shopify = Shopify || {};
      Shopify.shop = "theme108-jewelry.myshopify.com";
      Shopify.theme = {"name":"theme108","id":12122539,"theme_store_id":null,"role":"main"};
	  */

//]]>
</script>



<script id="__st">
//<![CDATA[
/*
var __st={"a":6913777,"offset":-14400,"reqid":"74e5f82b-2e90-47b1-a588-60a4f456dac9","pageurl":"theme108-jewelry.myshopify.com\/","u":"bfd40e894c26","p":"home"};
*/
//]]>
</script>
<script>
//<![CDATA[
  /*    (function() {
        var s = document.createElement('script'); s.type = 'text/javascript'; s.async = true;
        s.src = 'catalog/view/theme/pccindia/cdn.shopify.com/s/javascripts/shopify_stats1bce.js?v=6';
        var x = document.getElementsByTagName('script')[0]; x.parentNode.insertBefore(s, x);
      })();
	  */

//]]>
</script>


	<link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lora' rel='stylesheet' type='text/css'>
  	<link href='http://fonts.googleapis.com/css?family=Yesteryear' rel='stylesheet' type='text/css'>
    <!--[if lt IE 9]>
    <script src="//html5shiv.googlecode.com/svn/trunk/html5.js" type="text/javascript"></script>
    <link href="//catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/ie8.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  />
    <![endif]-->

    <!--[if IE 9]>
    <link href="//catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/ie9.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  />
    <![endif]-->

    <!--[if gte IE 9]>
    <style type="text/css">.gradient {filter: none;}</style>
    <![endif]-->

    

    <link href="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/bootstrapc74c.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  /> 
    <link href="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/assetsc74c.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  /> 
    <link href="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/stylec74c.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  />
    <link href="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/responsivec74c.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  />
    <link href="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/font-awesomec74c.css?16272139736165429143" rel="stylesheet" type="text/css"  media="all"  />

 

    <script type="text/javascript">
    function preloadImages()
    {
      for(var i = 0; i<arguments.length; i++)
        $("<img />").attr("src", arguments[i]);
    }

    preloadImages("catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/bx_loaderc74c.gif?16272139736165429143");

    $(document).ready(function(){
      $('.page_preloader').delay(600).fadeOut('fast');
    });
    </script>

    <!--<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/assets/themes_support/option_selection-fe0304d361801951e24464bb64f38fc2.js" type="text/javascript"></script>-->
	<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/device.minc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/bootstrap.minc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery-migrate-1.2.1.minc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.easing.1.3c74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/api.jqueryc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/ajaxify-shopc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/hoverIntentc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/superfishc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/supersubsc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/sftouchscreenc74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.fancybox-1.3.4c74c.js?16272139736165429143" type="text/javascript"></script>
    <script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.bxslider.minc74c.js?16272139736165429143" type="text/javascript"></script>
  	<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/tm-stick-upc74c.js?16272139736165429143" type="text/javascript"></script>
  	<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.formstyler.minc74c.js?16272139736165429143" type="text/javascript"></script>
  	<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.cookiec74c.js?16272139736165429143" type="text/javascript"></script>
	<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/wow.minc74c.js?16272139736165429143" type="text/javascript"></script>

<?php echo $google_analytics; ?>

<style> 
.MagicZoomBigImageCont div:last-child, .MagicZoomBigImageCont div, .MagicThumb-expanded span{
color:#FFF !important;
font-size:1px !important;
}


	
</style>


</head>

<body <?php if(!isset($_GET['route']) || (isset($_GET['route']) && $_GET['route']=='common/home')) { ?> onLoad="initialize()" <?php }?> id="jewelry" class="template-index">
<div class="page_preloader"></div>


<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="http://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->



<div id="wrapper">
<div id="wrapper2">

<!-- HEADER -->
<header id="header" class="headerbk">
<!--top-header-->
<div class="top-header">
	<div class="container">
    <div class="row">
       <div class="col-lg-5 col-md-5 col-sm-5"> <!--2-->    
            <!-- HEADER SEARCH -->
            <!--<div id="search" class="header_search">
            <div class="button-search"></div>
            <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="hint"/>
            </div>-->
            <div class="header_search">
                <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" class="hint" id="search-field" />
                <button id="search-submit" type="submit"><i class="fa fa-search"></i></button>
            </div>
        </div>
        <div class="col-lg-4 col-md-4 col-sm-4"><!--1-->
            <!-- USER MENU -->
            <ul class="header_user">
            <li><i class="fa fa-lock"></i><a href="<?php echo $account; ?>" id="customer_login_link">Log in</a></li>
            <li><i class="fa fa-user"></i><a href="<?php echo $account; ?>" id="customer_register_link">Create an account</a></li>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
            </ul>
       </div>
        <div class="col-lg-3 col-md-3 col-sm-3"><!--3-->
        	<div class="clearblock"></div>
            <!-- HEADER CART -->
            <div class="header_cart">
                <?php echo $cart; ?>
                <!--<a href="<?php echo $shopping_cart; ?>"><b>Shopping cart:</b><span class="cart-total-items"><span class="count">0</span></span></a>-->
            </div>
            <div class="right"><a class="btn Checkbtn" href="<?php echo $checkout; ?>" style="">Check out</a></div> <!--checkout-->
        </div>
    </div><!--row-->
    </div><!--container-->
</div>
<!--bottom-header-->
<div class="container">
	<!--top-->
	<!--<div style=" height: 40px;"></div>-->
    
    
    <!--middle-->
	<div class="col-lg-4 col-md-4 col-sm-4">
    
    	<!-- LOGO -->
        <div id="logo" class="logoc">
         <a href="<?php echo $home; ?>">
         <img src="catalog/view/theme/pccindia/image/logo.png" ></a>
        </div>
    
    </div>

<!-- CURRENCIES -->
<!--<div class="header_currency">
    <select id="currencies" name="currencies">
      <option value="USD" selected="selected">USD</option>
          <option value="EUR">EUR</option>
          <option value="GBP">GBP</option>
    </select>
</div>-->
    
    
<!--</div>
</header>-->




<!-- MEGAMENU -->
<div class="col-lg-8 col-md-8 col-sm-8">
<div id="megamenu" class="megamenucl pull-right">
<!--<ul class="sf-menu megamenu_desktop visible-md visible-lg">
	<li class="megamenu__1 ">
	    <a href="<?php echo $home; ?>">Home</a>
	</li>
	<li class="megamenu__2 ">
	    <a href="index.php?route=product/category&path=20">Products<span class="menu_badge">hot</span></a>
	    
	    <ul>
		<li>
			<div class="submenu submenu__2">
			<div class="row row__1">
				<div class="column__1 col-sm-2">
                  	<h3><a href="index.php?route=product/category&path=34">Bracelets</a></h3>
					<ul>
		                
		                <li><a href="products/bling-jewelry-great-gatsby-inspired-cz-vintage-style-full-finger-armor-ring.html">Bling Jewelry Gre...</a></li>
		                
		                <li><a href="products/blue-i1-round-brilliant-cut-diamond-earring-studs-in-14k-white-gold.html">Blue - I1 Round B...</a></li>
		                
		                <li><a href="products/blue-hawaiian-plumeria-flower-pin-swarovski-crystal-pin-brooch-and-penda.html">Blue Hawaiian Plu...</a></li>
		                
		                <li><a href="products/bridal-silver-tone-orchid-flower-teardrop-brooch-pendant-clear-austrian-crystal.html">Bridal Silver-Ton...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-colored-hoop-earrings-with-swarovsk.html">Carnevale Sterlin...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-pink-dome-swarovski-elements-ring.html">Carnevale Sterlin...</a></li>
		                
		                <li><a href="products/dogeared-karma-gold-plated-sterling-silver-circle-bracelet.html">Dogeared Karma Go...</a></li>
		                
					</ul>
				</div>

				<div class="column__2 col-sm-2">
                  	<h3><a href="collections/chains.html">Chains</a></h3>
					<ul>
		                
		                <li><a href="products/bling-jewelry-great-gatsby-inspired-cz-vintage-style-full-finger-armor-ring.html">Bling Jewelry Gre...</a></li>
		                
		                <li><a href="products/blue-i1-round-brilliant-cut-diamond-earring-studs-in-14k-white-gold.html">Blue - I1 Round B...</a></li>
		                
		                <li><a href="products/blue-hawaiian-plumeria-flower-pin-swarovski-crystal-pin-brooch-and-penda.html">Blue Hawaiian Plu...</a></li>
		                
		                <li><a href="products/bridal-silver-tone-orchid-flower-teardrop-brooch-pendant-clear-austrian-crystal.html">Bridal Silver-Ton...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-colored-hoop-earrings-with-swarovsk.html">Carnevale Sterlin...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-pink-dome-swarovski-elements-ring.html">Carnevale Sterlin...</a></li>
		                
		                <li><a href="products/dogeared-karma-gold-plated-sterling-silver-circle-bracelet.html">Dogeared Karma Go...</a></li>
		                
					</ul>
				</div>

				<div class="column__3 col-sm-2">
                  	<h3><a href="collections/earrings.html">Earrings</a></h3>
					<ul>
		                
		                <li><a href="products/10k-gold-and-diamond-three-stone-heart-pendant-necklace.html">10k Gold and Diam...</a></li>
		                
		                <li><a href="products/10k-yellow-gold-mother-of-pearl-black-onyx-diamond-accent-ring.html">10K Yellow Gold M...</a></li>
		                
		                <li><a href="products/14k-white-gold-05ctw-si3-i1-clarity-g-h-color-diamond-with-9-10mm.html">14k White Gold 05...</a></li>
		                
		                <li><a href="products/14k-white-gold-8-9mm-white-freshwater-pearl-high-luster.html">14k White Gold 8-...</a></li>
		                
		                <li><a href="products/1928-jewelry-rotating-trio-locket-necklac.html">1928 Jewelry Rota...</a></li>
		                
		                <li><a href="products/32mm-long-surgical-stainless-steel-industrial-barbells.html">32mm long- surgic...</a></li>
		                
		                <li><a href="products/3ct-emerald-cut-midnight-sapphire-earrings-in-sterling-silver.html">3ct Emerald Cut M...</a></li>
		                
					</ul>
				</div>

				<div class="column__4 col-sm-2">
                  	<h3><a href="collections/key-chains.html">Key chains</a></h3>
					<ul>
		                
		                <li><a href="products/10k-gold-and-diamond-three-stone-heart-pendant-necklace.html">10k Gold and Diam...</a></li>
		                
		                <li><a href="products/10k-yellow-gold-mother-of-pearl-black-onyx-diamond-accent-ring.html">10K Yellow Gold M...</a></li>
		                
		                <li><a href="products/14k-white-gold-05ctw-si3-i1-clarity-g-h-color-diamond-with-9-10mm.html">14k White Gold 05...</a></li>
		                
		                <li><a href="products/14k-white-gold-8-9mm-white-freshwater-pearl-high-luster.html">14k White Gold 8-...</a></li>
		                
		                <li><a href="products/1928-jewelry-rotating-trio-locket-necklac.html">1928 Jewelry Rota...</a></li>
		                
		                <li><a href="products/32mm-long-surgical-stainless-steel-industrial-barbells.html">32mm long- surgic...</a></li>
		                
		                <li><a href="products/3ct-emerald-cut-midnight-sapphire-earrings-in-sterling-silver.html">3ct Emerald Cut M...</a></li>
		                
					</ul>
				</div>

				<div class="column__5 col-sm-2">
                  	<h3><a href="#"></a></h3>
					<ul>
		                
					</ul>
				</div>
			</div>

			<div class="row row__2">
                
                <div class="banner__1 col-sm-6">
                <a href="index.php?route=product/category&path=34">
                  	
                    	<img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/megamenu2_banner1_imgc74c.jpg?16272139736165429143" alt="New collections" />
                  	
                    <div>
                        <span>New</span>
                        <span>collections</span>
                    </div>
                </a>
                </div>
                

                
                <div class="banner__2 col-sm-6">
                <a href="collections/necklaces.html">
                  	
                    	<img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/megamenu2_banner2_imgc74c.jpg?16272139736165429143" alt="rings Save up to 20%" />
                  	
                    <div>
                        <span>rings</span>
                        <span>Save up to 20%</span>
                    </div>
                </a>
                </div>
                
			</div>
			</div>
		</li>
	    </ul>
		
	</li>

	<li class="megamenu__3 ">
	    <a href="blogs/blog.html">Blog</a>
	    
	    <ul>
		<li>
			<div class="submenu">
			<div class="row">
                
                <div class="col-sm-4">
                    <h3 class="blog_title"><a href="blogs/blog/18066675-lorem-ipsum-dolor-sit-amet-conse.html">Lorem ipsum dolor sit ...</a></h3>
                    <span class="blog_date">Thursday, November 06, 2014</span>
                    <div class="blog_content"><p><img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/files/blog_32838.jpg?51"></p>
<p>Illum, labore, ipsum laudantium ratione itaque dolorum iure dignissimos dicta quisquam facilis neque aliquid cumque laboriosam.</p></div>
                    <a class="btn" href="blogs/blog/18066675-lorem-ipsum-dolor-sit-amet-conse.html">Read more</a>
                </div>
                
                <div class="col-sm-4">
                    <h3 class="blog_title"><a href="blogs/blog/18066671-excepteur-sint-occaecat.html">Excepteur sint occaecat</a></h3>
                    <span class="blog_date">Thursday, November 06, 2014</span>
                    <div class="blog_content"><p><img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/files/blog_22838.jpg?51"></p>
<p>Excepturi quos quidem magnam voluptas velit officiis facere quis odio cum porro? Aut, at optio unde eveniet facilis facere nobis.</p></div>
                    <a class="btn" href="blogs/blog/18066671-excepteur-sint-occaecat.html">Read more</a>
                </div>
                
                <div class="col-sm-4">
                    <h3 class="blog_title"><a href="blogs/blog/18061939-cupidatat-non-proident-sunt-in.html">Cupidatat non proident...</a></h3>
                    <span class="blog_date">Wednesday, November 05, 2014</span>
                    <div class="blog_content"><p><img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/files/blog_12838.jpg?51"></p>
<p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.</p></div>
                    <a class="btn" href="blogs/blog/18061939-cupidatat-non-proident-sunt-in.html">Read more</a>
                </div>
                
			</div>
			</div>
		</li>
	    </ul>
		
	</li>

	<li class="megamenu__4 ">
	    <a href="index.php?route=product/category&path=34">Sale</a>
	    
	    <ul>
		<li>
			<div class="submenu">
			<div class="row">
                
                <div class="col-sm-3">
                    <div class="product_img">  
                        <a href="products/10k-gold-and-diamond-three-stone-heart-pendant-necklace.html">
                            <img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/products/10k_gold_and_diamond_three-stone_heart_pendant_necklace_1_largeb7d7.png?v=1415269417" alt="10k Gold and Diamond Three-Stone Heart Pendant Necklace" />
                        </a>
                    </div>

                    <div class="product_name">
                        <a href="products/10k-gold-and-diamond-three-stone-heart-pendant-necklace.html">10k Gold and Diamond Three-Stone Heart Pendant Necklace</a>
                    </div>

                    <div class="product_price">
                        
                        <span class="money">$500.00</span>
                        
                        <span class="money compare-at-price">$610.00</span>
                        
                    </div>
                </div>
                
                <div class="col-sm-3">
                    <div class="product_img">  
                        <a href="products/10k-yellow-gold-mother-of-pearl-black-onyx-diamond-accent-ring.html">
                            <img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/products/10k_yellow_gold_mother_of_pearl_black_onyx_diamond_accent_ring_1_largec460.png?v=1415269425" alt="10K Yellow Gold Mother of Pearl, Black Onyx, Diamond Accent Ring" />
                        </a>
                    </div>

                    <div class="product_name">
                        <a href="products/10k-yellow-gold-mother-of-pearl-black-onyx-diamond-accent-ring.html">10K Yellow Gold Mother of Pearl, Black Onyx, Diamond Accent Ring</a>
                    </div>

                    <div class="product_price">
                        
                        <span class="money">$150.00</span>
                        
                    </div>
                </div>
                
                <div class="col-sm-3">
                    <div class="product_img">  
                        <a href="products/14k-white-gold-05ctw-si3-i1-clarity-g-h-color-diamond-with-9-10mm.html">
                            <img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/products/14k_white_gold_05ctw_si3-i1_clarity_g-h_color_diamond_with_9-10mm_1_largec300.png?v=1415269432" alt="14k White Gold 05ctw SI3-I1 Clarity G-H Color Diamond with 9-10mm" />
                        </a>
                    </div>

                    <div class="product_name">
                        <a href="products/14k-white-gold-05ctw-si3-i1-clarity-g-h-color-diamond-with-9-10mm.html">14k White Gold 05ctw SI3-I1 Clarity G-H Color Diamond with 9-10mm</a>
                    </div>

                    <div class="product_price">
                        
                        <span class="money">$78.00</span>
                        
                    </div>
                </div>
                
                <div class="col-sm-3">
                    <div class="product_img">  
                        <a href="products/14k-white-gold-8-9mm-white-freshwater-pearl-high-luster.html">
                            <img src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/products/14k_white_gold_8-9mm_white_freshwater_pearl_high_luster_1_large3789.png?v=1415269440" alt="14k White Gold 8-9mm White Freshwater Pearl High Luster" />
                        </a>
                    </div>

                    <div class="product_name">
                        <a href="products/14k-white-gold-8-9mm-white-freshwater-pearl-high-luster.html">14k White Gold 8-9mm White Freshwater Pearl High Luster</a>
                    </div>

                    <div class="product_price">
                        
                        <span class="money">$399.00</span>
                        
                        <span class="money compare-at-price">$500.00</span>
                        
                    </div>
                </div>
                
			</div>
			</div>
		</li>
	    </ul>
		
	</li>

	<li class="megamenu__5 ">
	    <a href="pages/documentation.html">Documentation</a>
	</li>

	<li class="megamenu__6 ">
	    <a href="pages/contact-us.html">Contact us</a>
	</li>
</ul>-->

<ul class="sf-menu megamenu_desktop visible-md visible-lg pull-right">
    <?php foreach ($categories as $category) { ?>
    <li><a href="<?php echo $category['href']; ?>"><?php echo $category['name']; ?></a>
      <?php if ($category['children']) { ?>
      <div>
        <?php for ($i = 0; $i < count($category['children']);) { ?>
        <!--<ul>
          <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
          <?php for (; $i < $j; $i++) { ?>
          <?php if (isset($category['children'][$i])) { ?>
          <li><a href="<?php echo $category['children'][$i]['href']; ?>"><?php echo $category['children'][$i]['name']; ?></a></li>
          <?php } ?>
          <?php } ?>
        </ul>-->
        <?php } ?>
      </div>
      <?php } ?>
    </li>
    <?php } ?>
  </ul>
  

<div class="megamenu_mobile visible-xs visible-sm">
	<h2>jewelry<i></i></h2>
	<ul class="submenu__1">
		<li class="megamenu__1">
		    <a href="<?php echo $home; ?>">Home</a>
		</li>

		<li class="megamenu__2 ">
		    <a href="index.php?route=product/category&path=20">Products<i></i></a>
		    
		    <ul class="submenu__2">

				<li>
	              	<a href="index.php?route=product/category&path=34">Bracelets<i></i></a>
					<ul class="submenu__3">
		                
		                <li><a href="products/bling-jewelry-great-gatsby-inspired-cz-vintage-style-full-finger-armor-ring.html">Bling Jewelry Great Gatsby ...</a></li>
		                
		                <li><a href="products/blue-i1-round-brilliant-cut-diamond-earring-studs-in-14k-white-gold.html">Blue - I1 Round Brilliant C...</a></li>
		                
		                <li><a href="products/blue-hawaiian-plumeria-flower-pin-swarovski-crystal-pin-brooch-and-penda.html">Blue Hawaiian Plumeria Flow...</a></li>
		                
		                <li><a href="products/bridal-silver-tone-orchid-flower-teardrop-brooch-pendant-clear-austrian-crystal.html">Bridal Silver-Tone Orchid F...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-colored-hoop-earrings-with-swarovsk.html">Carnevale Sterling Silver C...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-pink-dome-swarovski-elements-ring.html">Carnevale Sterling Silver P...</a></li>
		                
		                <li><a href="products/dogeared-karma-gold-plated-sterling-silver-circle-bracelet.html">Dogeared Karma Gold-Plated ...</a></li>
		                
					</ul>
				</li>


				<li>
	              	<a href="collections/chains.html">Chains<i></i></a>
					<ul class="submenu__3">
		                
		                <li><a href="products/bling-jewelry-great-gatsby-inspired-cz-vintage-style-full-finger-armor-ring.html">Bling Jewelry Great Gatsby ...</a></li>
		                
		                <li><a href="products/blue-i1-round-brilliant-cut-diamond-earring-studs-in-14k-white-gold.html">Blue - I1 Round Brilliant C...</a></li>
		                
		                <li><a href="products/blue-hawaiian-plumeria-flower-pin-swarovski-crystal-pin-brooch-and-penda.html">Blue Hawaiian Plumeria Flow...</a></li>
		                
		                <li><a href="products/bridal-silver-tone-orchid-flower-teardrop-brooch-pendant-clear-austrian-crystal.html">Bridal Silver-Tone Orchid F...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-colored-hoop-earrings-with-swarovsk.html">Carnevale Sterling Silver C...</a></li>
		                
		                <li><a href="products/carnevale-sterling-silver-pink-dome-swarovski-elements-ring.html">Carnevale Sterling Silver P...</a></li>
		                
		                <li><a href="products/dogeared-karma-gold-plated-sterling-silver-circle-bracelet.html">Dogeared Karma Gold-Plated ...</a></li>
		                
					</ul>
				</li>


				<li>
	              	<a href="collections/earrings.html">Earrings<i></i></a>
					<ul class="submenu__3">
		                
		                <li><a href="products/10k-gold-and-diamond-three-stone-heart-pendant-necklace.html">10k Gold and Diamond Three-...</a></li>
		                
		                <li><a href="products/10k-yellow-gold-mother-of-pearl-black-onyx-diamond-accent-ring.html">10K Yellow Gold Mother of P...</a></li>
		                
		                <li><a href="products/14k-white-gold-05ctw-si3-i1-clarity-g-h-color-diamond-with-9-10mm.html">14k White Gold 05ctw SI3-I1...</a></li>
		                
		                <li><a href="products/14k-white-gold-8-9mm-white-freshwater-pearl-high-luster.html">14k White Gold 8-9mm White ...</a></li>
		                
		                <li><a href="products/1928-jewelry-rotating-trio-locket-necklac.html">1928 Jewelry Rotating Trio ...</a></li>
		                
		                <li><a href="products/32mm-long-surgical-stainless-steel-industrial-barbells.html">32mm long- surgical stainle...</a></li>
		                
		                <li><a href="products/3ct-emerald-cut-midnight-sapphire-earrings-in-sterling-silver.html">3ct Emerald Cut Midnight Sa...</a></li>
		                
					</ul>
				</li>


				<li>
	              	<a href="collections/key-chains.html">Key chains<i></i></a>
					<ul class="submenu__3">
		                
		                <li><a href="products/10k-gold-and-diamond-three-stone-heart-pendant-necklace.html">10k Gold and Diamond Three-...</a></li>
		                
		                <li><a href="products/10k-yellow-gold-mother-of-pearl-black-onyx-diamond-accent-ring.html">10K Yellow Gold Mother of P...</a></li>
		                
		                <li><a href="products/14k-white-gold-05ctw-si3-i1-clarity-g-h-color-diamond-with-9-10mm.html">14k White Gold 05ctw SI3-I1...</a></li>
		                
		                <li><a href="products/14k-white-gold-8-9mm-white-freshwater-pearl-high-luster.html">14k White Gold 8-9mm White ...</a></li>
		                
		                <li><a href="products/1928-jewelry-rotating-trio-locket-necklac.html">1928 Jewelry Rotating Trio ...</a></li>
		                
		                <li><a href="products/32mm-long-surgical-stainless-steel-industrial-barbells.html">32mm long- surgical stainle...</a></li>
		                
		                <li><a href="products/3ct-emerald-cut-midnight-sapphire-earrings-in-sterling-silver.html">3ct Emerald Cut Midnight Sa...</a></li>
		                
					</ul>
				</li>


		    </ul>
			
		</li>

		<li class="megamenu__3">
		    <a href="blogs/blog.html">Blog</a>
		</li>

		<li class="megamenu__4">
		    <a href="index.php?route=product/category&path=34">Sale</a>
		</li>

		<li class="megamenu__5">
		    <a href="pages/documentation.html">Documentation</a>
		</li>

		<li class="megamenu__6">
		    <a href="pages/contact-us.html">Contact us</a>
		</li>
	</ul>
</div>

</div><!--megamenu-->
</div>


</div>
</header>
