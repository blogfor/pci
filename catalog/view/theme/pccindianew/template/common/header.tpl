<!DOCTYPE html>
<html dir="<?php echo $direction; ?>" lang="<?php echo $lang; ?>">
<head>
<meta charset="UTF-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
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
 <noscript>
    Your Browser's JS is disabled. Please enabled to continue.
    <style> body{ display: none } </style>
</noscript>


<link rel="icon" type="image/png" href="catalog/view/theme/pccindianew/images/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="image/png" href="catalog/view/theme/pccindianew/images/favicon-16x16.png" sizes="16x16" />
<?php foreach ($links as $link) { ?>
<link href="<?php echo $link['href']; ?>" rel="<?php echo $link['rel']; ?>" />
<?php } ?>
<link rel="stylesheet" href="catalog/view/theme/pccindianew/asset/css/bootstrap.css" type="text/css" media="screen">
<link rel="stylesheet" href="catalog/view/theme/pccindianew/css/font-awesome.min.css" type="text/css" media="screen">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindianew/fonts/stylesheet.css" media="screen">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindianew/css/style.css" media="screen">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindianew/css/responsive.css" media="screen">
<link rel="stylesheet" type="text/css" href="catalog/view/theme/pccindianew/css/animate.css" media="screen">
<?php //foreach ($styles as $style) { ?>
<link rel="<?php echo $style['rel']; ?>" type="text/css" href="<?php echo $style['href']; ?>" media="<?php echo $style['media']; ?>" />
<?php //} ?>
<!--<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>--><!-- pcc JS  --><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery-2.1.1.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.migrate.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/modernizrr.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/asset/js/bootstrap.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.fitvids.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/owl.carousel.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/nivo-lightbox.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.isotope.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.appear.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/count-to.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.textillate.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.lettering.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.easypiechart.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.nicescroll.min.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/jquery.parallax.js"></script><script type="text/javascript" src="catalog/view/theme/pccindianew/js/script.js"></script><!--[if IE 8]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]--><!--[if lt IE 9]><script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script><![endif]--><script type="text/javascript" src="catalog/view/javascript/jquery/ui/jquery-ui-1.8.16.custom.min.js"></script>
<link rel="stylesheet" type="text/css" href="catalog/view/javascript/jquery/ui/themes/ui-lightness/jquery-ui-1.8.16.custom.css" />
<script type="text/javascript" src="catalog/view/javascript/common.js"></script>
<?php foreach ($scripts as $script) { ?>
<script type="text/javascript" src="<?php echo $script; ?>"></script>
<?php } ?>
<?php if ($stores) { ?>
<script type="text/javascript"><!--        $(document).ready(function() {                < ?php foreach ($stores as $store) { ? >                        $('body').prepend('<iframe src="<?php echo $store; ?>" style="display: none;"></iframe>');                < ?php } ? >            });//--></script>
<?php } ?>
<?php echo $google_analytics; ?>
<link href="catalog/view/theme/pccindianew/css/bootstrap-dialog.min.css" rel="stylesheet" type="text/css" />
<script src="catalog/view/theme/pccindianew/js/bootstrap-dialog.min.js"></script>
<style>
.modal-dialog {
	margin: 15% auto !important;
}
.MagicZoomBigImageCont div {
	font-size:1px !important;
	font-color:#FFF;
}
.MagicThumb-expanded div, .MagicThumb-background:hover div {
	font-size:1px !important;
	font-color:#FFF;
}
.button-search {
	right: 0px;
	float:right;			/* background: url('../image/button-search.png') center center no-repeat;*/
	background-color:#ddd;
	width: 58px;
	padding-top:2px;
	line-height:27px;
	border-right: 1px solid #CCCCCC;
	cursor: pointer;
	text-align:center;
}
#search {
	width:220px;
	padding-top:12px;
}
#search input {
	float:left;
	padding:3px;
	border:1px #CCC solid;
}
</style>
</head>


<body>

<!-- Start Header -->
<div class="hidden-header"></div>
<header class="clearfix"> <!-- Start Top Bar -->
  <div class="top-bar">
  <?php  if($config_golive==0){ ?>
    <!--<div class="col-lg-12" style="background-color:#FF0000; color:#FFFFFF; font-size:16px; line-height:30px; text-align:center; padding:10px 0; z-index:9999;">Site under construction</div>-->
   <?php } ?>
    
    <div class="container">
      <div class="row">
        <div class="col-sm-1 col-md-2"> </div>
        <div class="col-sm-5 col-md-5 cls"> <!-- Start Social Links -->
          <ul class="header_user">
            <?php                                 if (isset($_SESSION['customer_id'])){                                                                                              ?>
            <li><i class="fa fa-lock"></i> <a href="<?php echo $account; ?>" id="customer_login_link"><?php echo $text_logged; ?></a> </li>
            <li><i class="fa fa-user"></i><a href="<?php echo $account; ?>" id="customer_register_link">My account</a></li>
            <?php }else{ ?>
            <li><i class="fa fa-lock"></i> <a href="<?php echo $account; ?>" id="customer_login_link">Log in</a> </li>
            <li><i class="fa fa-user"></i><a href="<?php echo $account; ?>" id="customer_register_link">Create an account</a></li>
            <?php } ?>
            <li><a href="<?php echo $wishlist; ?>" id="wishlist-total"><?php echo $text_wishlist; ?></a></li>
          </ul>
          <!-- End Social Links --> </div>
        <div class="col-sm-6 col-md-5">
          <div class="clearblock"></div>
          <div class="right"><a class="btn" href="<?php echo $checkout; ?>" style="float: right;">Buy Now</a></div>
          <div class="header_cart"> <!--<div id="cart">                                <div class="heading"><h4>Shopping Cart</h4><a><span id="cart-total">0 item(s) - Rs. 0.00</span></a></div>                                        <div class="content"><div class="empty">Your shopping cart is empty!</div></div>                            </div>--> <?php echo $cart; ?> </div>
        </div>
      </div>
    </div>
  </div>
  <!-- End Top Bar --> <!-- Start Header ( Logo & Naviagtion ) -->
  <div class="navbar navbar-default navbar-top">
    <div class="container">
      <div class="navbar-header">
        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><i class="fa fa-bars"></i></button>
        <a class="navbar-brand" href="<?php echo $home; ?>"><img alt="" src="catalog/view/theme/pccindia/image/logo.png"></a> </div>
      <div class="navbar-collapse collapse"> <!-- Stat Search -->
        <div class="search-side"> <a href="javascript:void(0);" class="show-search"><i class="fa fa-search"></i></a>
          <div class="search-form" >
            <div id="search">
              <div class="button-search">Search</div>
              <input type="text" name="search" placeholder="<?php echo $text_search; ?>" value="<?php echo $search; ?>" />
            </div>
          </div>
        </div>
        <!-- End Search --> <!-- Start Navigation List -->
        <ul class="nav navbar-nav navbar-right">
          <?php foreach ($categories as $category) {                             if(trim($category['name'])!='Blogs') {                                                        ?>
          <li><a href="#">
            <?php if(trim($category['name'])=='Gold Jewellery') {?>
            <img alt="" src="catalog/view/theme/pccindianew/image/rgs.png">
            <?php }?>
            <?php if(trim($category['name'])=='Diamond Jewellery') {?>
            <img alt="" src="catalog/view/theme/pccindianew/image/rds.png">
            <?php }?>
            <?php echo $category['name']; ?> <span class="caret"></span> </a>
            <?php if ($category['children']) { ?>
            <?php for ($i = 0; $i < count($category['children']);) { ?>
            <ul class="dropdown">
              <?php $j = $i + ceil(count($category['children']) / $category['column']); ?>
              <?php for (; $i < $j; $i++) { ?>
              <?php if (isset($category['children'][$i])) { ?>
              <li><a href="<?php echo $category['children'][$i]['href']; ?>"><!--<img alt="" src="catalog/view/theme/pccindianew/image/rds.png">--> <?php echo $category['children'][$i]['name']; ?></a></li>
              <?php } ?>
              <?php } ?>
            </ul>
            <?php } ?>
            <?php } ?>
          </li>
          <?php                                 }                            } ?>
        </ul>
        <!--                                                <ul class="nav navbar-nav navbar-right">                        <li><a class="active" href="index.html">Home</a></li>                        <li><a href="#.html">Gold Jewellery <span class="caret"></span></a>                            <ul class="dropdown">                            <li class="dropdown-submenu"> <a tabindex="-1" href="#">Men</a>                              <ul class="dropdown-menu">                                <li><a tabindex="-1" href="#">Rings</a></li>                                <li><a href="#">Bangles</a></li>                                <li><a href="#">Necklece</a></li>                              </ul>                            </li>                            <li class="dropdown-submenu"> <a tabindex="-2" href="#">Women</a>                                <ul class="dropdown-menu">                                <li><a tabindex="-1" href="#">Rings</a></li>                                <li><a href="#">Bangles</a></li>                                <li><a href="#">Necklece</a></li>                              </ul>                            </li>                            <li>&nbsp;</li>                            </ul>                        </li>                        <li><a href="#.html">Diamond Jewellery <span class="caret"></span></a>                            <ul class="dropdown">                            <li class="dropdown-submenu"> <a tabindex="-3" href="#">Men</a>                              <ul class="dropdown-menu">                                <li><a tabindex="-1" href="#">Rings</a></li>                                <li><a href="#">Bangles</a></li>                                <li><a href="#">Necklece</a></li>                              </ul>                            </li>                            <li class="dropdown-submenu"> <a tabindex="-4" href="#">Women</a>                                <ul class="dropdown-menu">                                <li><a tabindex="-1" href="#">Rings</a></li>                                <li><a href="#">Bangles</a></li>                                <li><a href="#">Necklece</a></li>                              </ul>                            </li>                            <li>&nbsp;</li>                            </ul>                        </li>                        </ul>                        --> <!-- End Navigation List --> </div>
    </div>
  </div>
  <!-- End Header ( Logo & Naviagtion ) --> </header>
<!-- End Header -->
<?php 		        if(empty($_REQUEST['route']))        {        }        else if($_REQUEST['route']!="common/home"){        	echo '<div class="hr1 margin-top"><!-- Divider --></div>';        }                       ?>
