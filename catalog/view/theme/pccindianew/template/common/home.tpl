<?php echo $header; ?>
<?php echo $column_left; ?>
<?php echo $column_right; ?>
<style>
    .carousel.carousel-fade .item {
        -webkit-transition: opacity 0.5s ease-in-out;
        -moz-transition: opacity 0.5s ease-in-out;
        -ms-transition: opacity 0.5s ease-in-out;
        -o-transition: opacity 0.5s ease-in-out;
        transition: opacity 0.5s ease-in-out;
        opacity:0;
    }
    .carousel.carousel-fade .active.item {
        opacity:1;
    }
    .carousel.carousel-fade .active.left,
    .carousel.carousel-fade .active.right {
        left: 0;
        z-index: 2;
        opacity: 0;
        filter: alpha(opacity=0);
    }
    .carousel.carousel-fade .next,
    .carousel.carousel-fade .prev {
        left: 0;
        z-index: 1;
    }
    .today{
		height:320px; width: 560px; display:block; text-align: center; margin: auto;
		background-image:url(https://pcchandraindiaonline.com/catalog/view/theme/pccindianew/images/today.jpg);
	}
	
</style>
<!--<div class='today'>-->
<?php  
//if($config_golive==0){ ?>
<!--
<script>
    var r="<div class=''><img src='https://pcchandraindiaonline.com/catalog/view/theme/pccindianew/images/layout_1-03.jpg' style='padding-top:5px;'></div>";
	$(document).ready(function(){	
			BootstrapDialog.show({
				title: 'Little jewellers - coming soon',
				message: r,
				buttons: [{
					id: 'btn-ok',   
					label: 'Skip',
					cssClass: 'btn-primary', 
					autospin: false,
					action: function(dialogRef){ 
						dialogRef.close();	
					
						
					
					}
				}]
			});	
	});
</script>
-->

<script>
    var r="<div class='' style='text-align:center;'><img src='https://pcchandraindiaonline.com/catalog/view/theme/pccindianew/images/advertisement_03-SEP-16.jpg' style='padding-top:5px;'><font style='font-size: 28px;line-height: 42px;'>To download the form click <a href='http://www.pcchandraindia.com' target='_blank' rel='nofollow'>here</a></font></div>";
	$(document).ready(function(){	
			BootstrapDialog.show({
				title: 'Pratima Chandra Memorial Award - 2016',
				message: r,
				buttons: [{
					id: 'btn-ok',   
					label: 'Skip',
					cssClass: 'btn-primary', 
					autospin: false,
					action: function(dialogRef){ 
						dialogRef.close();	
					
						
					
					}
				}]
			});	
	});
</script>
<?php //} ?>
<!-- Start HomePage Slider -->
<section id="home">	
    <div class="container pmagn2"><!-- Container -->
        <!-- Carousel -->
        <div id="main-slide" class="carousel carousel-fade" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#main-slide" data-slide-to="0" class="active"></li>
                <li data-target="#main-slide" data-slide-to="1"></li>
            </ol><!--/ Indicators end-->
            <!-- Carousel inner -->
            <div class="carousel-inner">
                <div class="item active">
                    <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner1.jpg" alt="slider">           
                </div><!--/ Carousel item end -->
               <!-- <div class="item">
                    <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner2.jpg" alt="slider">            
                </div>--><!--/ Carousel item end -->
               <!-- <div class="item">
                    <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner3.jpg" alt="slider">            
                </div>/ Carousel item end -->
                <!--<div class="item">
                    <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner4.jpg" alt="slider">            
                </div>--><!--/ Carousel item end -->
                <div class="item">
                    <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner5.jpg" alt="slider">            
                </div><!--/ Carousel item end -->
            </div><!-- Carousel inner end-->
            <!-- Controls
            <a class="left carousel-control" href="#main-slide" data-slide="prev"><span><i class="fa fa-angle-left"></i></span></a>
            <a class="right carousel-control" href="#main-slide" data-slide="next"><span><i class="fa fa-angle-right"></i></span></a> -->
        </div><!-- /carousel --> 
        <div class="row showcase_row__2">
            <div class="wow custom_showcase custom_showcase__3 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__light ">
                <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_28">
                    <img src="catalog/view/theme/pccindianew/images/custom_showcase3_imgc74c.jpg" alt="Pendants">
                    <div><h3>Pendants</h3>
                        <span>Shop now!</span></div>
                </a>
            </div>
            <div class="wow custom_showcase custom_showcase__4 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__dark ">
                <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_73">
                    <img src="catalog/view/theme/pccindianew/images/custom_showcase4_imgc74c.jpg" alt="Bangles"><div>
                        <h3>Bangles</h3>
                        <span>Shop now!</span></div>
                </a>
            </div>
            <div class="wow custom_showcase custom_showcase__5 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__light ">
                <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_74">
                    <img src="catalog/view/theme/pccindianew/images/custom_showcase5_imgc74c.jpg" alt="Rings"><div><h3>Rings</h3>
                        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p><span>Shop now!</span></div>
                </a>
            </div>
            <div class="wow custom_showcase custom_showcase__6 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__dark ">
                <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_62">
                    <img src="catalog/view/theme/pccindianew/images/custom_showcase6_imgc74c.jpg" alt="Earrings"><div><h3>Earrings</h3>
                        <span>Shop now!</span></div>
                </a>
            </div>
        </div>
    </div><!-- End Container -->
</section>
<!-- End HomePage Slider -->
<div class="hr1 margin-top"><!-- Divider --></div>
<!--Welcome to PC Chandra-->
<section>	
    <?php echo $content_bottom; ?>
</section>
<section id="content">
    <div class="container">
        <!-- Start Recent Projects Carousel -->
        <div class="recent-projects">
            <h4 class="title text-center"><span>Featured collections</span></h4>
            <div class="projects-carousel touch-carousel">
                 <?php echo $content_top; ?>
            </div>
        </div>
        <!-- End Recent Projects Carousel -->
    </div>
</section>
<!-- Start Featured collections -->
<!--<section id="content">
<div class="container">
      
       
      
</div>
</section>-->
<!-- End Featured collections -->
<?php echo $footer; ?>