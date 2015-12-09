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

</style>

    
    
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
        
        <div class="item">
            <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner2.jpg" alt="slider">            
        </div><!--/ Carousel item end -->
        
        <div class="item">
            <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner3.jpg" alt="slider">            
        </div><!--/ Carousel item end -->
        
        <div class="item">
            <img class="img-responsive" src="catalog/view/theme/pccindianew/images/slider/banner4.jpg" alt="slider">            
        </div><!--/ Carousel item end -->
        
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
        <img src="catalog/view/theme/pccindianew/images/custom_showcase3_imgc74c.jpg" alt="Bracelets Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.">
        <div><h3>Pendants</h3>
        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p><span>Shop now!</span></div>
        </a>
        </div>
        
        <div class="wow custom_showcase custom_showcase__4 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__dark ">
        <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_73">
        <img src="catalog/view/theme/pccindianew/images/custom_showcase4_imgc74c.jpg" alt="Rings Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."><div>
        <h3>Bangles</h3>
        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p><span>Shop now!</span></div>
        </a>
        </div>
        
        <div class="wow custom_showcase custom_showcase__5 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__light ">
        <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_74">
        <img src="catalog/view/theme/pccindianew/images/custom_showcase5_imgc74c.jpg" alt="Watches Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."><div><h3>Rings</h3>
        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit.</p><span>Shop now!</span></div>
        </a>
        </div>
                            
        <div class="wow custom_showcase custom_showcase__6 col-xs-6 col-sm-3 custom_showcase__small custom_showcase__dark ">
        <a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_62">
        <img src="catalog/view/theme/pccindianew/images/custom_showcase6_imgc74c.jpg" alt="Earrings Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam."><div><h3>Earrings</h3>
        <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam.</p><span>Shop now!</span></div>
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






<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.mb.YTPlayerc74c.js?16272139736165429143" type="text/javascript"></script> 
<script type="text/javascript">
jQuery(function($){
  /*  if (device.desktop()) {
      	$('.bg_video_mobile').hide();
		$('.bg_video_init').mb_YTPlayer();
    }
  	else {
      	$('.bg_video_init').hide();
		$('.bg_video_mobile').show();
    
	};
	*/
});
</script>

<!--<div class="homepage_custom__2">
  <div class="bg_video_init" data-property="{videoURL:'http://youtu.be/q5rol4t0xzo', containment:'.bg_video', autoPlay:true, mute:true, startAt:0, opacity:1, loop:true, showControls:false, quality:'highres'}"></div>
  <div class="bg_video">
    <div class="bg_video_mobile"></div>
    <div class="bg_video_stripes"></div>
    <div class="container">
      <h3>Diamonds</h3>
      <h4>are best girl’s friends</h4>
      <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
    </div>
  </div>
</div>
-->


<section id="content">
<div class="container">
       
        <!-- Start Recent Projects Carousel -->
        <div class="recent-projects">
            <h4 class="title text-center"><span>Featured collections</span></h4>
            <div class="projects-carousel touch-carousel">
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" data-lightbox-type="ajax" href="catalog/view/theme/pccindianew/images/product/pendent.jpg">
                               <!-- <div class="thumb-overlay"><i class="fa fa-play"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/pendent.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_28">Pendant</a></h4>
                            <!--<p>Only kings and emperors, priests and pirates could own the jewelry. Anci...</p>-->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_28">See all</a></p>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg">
                                <!--<div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_70">Rings</a></h4>
                            <!-- <p>Precious metals have always been a detector of prosperity and high socia...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_70">See all</a></p>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg">
                                <!--<div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_62">Earrings</a></h4>
                            <!-- <p>Only kings and emperors, priests and pirates could own the jewelry. Anci...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&path=25_62">See all</a></p> 
                        </div>
                    </div>
                </div>
                
                <!--<div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/necklaces_largeb6eb.jpg">
                                
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/necklaces_largeb6eb.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">Necklaces</a></h4>
                            <p>Precious metals have always been a detector of prosperity and high socia...</p>
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">See all</a></p>
                        </div>
                    </div>
                </div>-->
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" data-lightbox-type="ajax" href="catalog/view/theme/pccindianew/images/product/bangles.jpg">
                               <!-- <div class="thumb-overlay"><i class="fa fa-play"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/bangles.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_73">Bangles</a></h4>
                            <!-- <p>Only kings and emperors, priests and pirates could own the jewelry. Anci...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_73">See all</a></p>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg">
                                <!--<div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&path=18_70">Rings</a></h4>
                            <!-- <p>Precious metals have always been a detector of prosperity and high socia...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=18_70">See all</a></p>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg">
                                <!--<div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">Earrings</a></h4>
                            <!-- <p>Only kings and emperors, priests and pirates could own the jewelry. Anci...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">See all</a></p> 
                        </div>
                    </div>
                </div>
                
                <!--<div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/necklaces_largeb6eb.jpg">
                               
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/necklaces_largeb6eb.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">Necklaces</a></h4>
                            <p>Precious metals have always been a detector of prosperity and high socia...</p>
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">See all</a></p>
                        </div>
                    </div>
                </div>-->
                
                <!--<div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" data-lightbox-type="ajax" href="catalog/view/theme/pccindianew/images/product/bracelets_large062a.jpg">
                               
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/bracelets_large062a.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=18_70">Bracelets</a></h4>
                            <p>Only kings and emperors, priests and pirates could own the jewelry. Anci...</p>
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=18_70">See all</a></p>
                        </div>
                    </div>
                </div>-->
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg">
                                <!--<div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=18_70">Rings</a></h4>
                            <!-- <p>Precious metals have always been a detector of prosperity and high socia...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=18_70">See all</a></p>
                        </div>
                    </div>
                </div>
                
                <div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg">
                                <!--<div class="thumb-overlay"><i class="fa fa-arrows-alt"></i></div>-->
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">Earrings</a></h4>
                            <!-- <p>Only kings and emperors, priests and pirates could own the jewelry. Anci...</p> -->
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">See all</a></p> 
                        </div>
                    </div>
                </div>
                
                <!--<div class="portfolio-item item">
                    <div class="portfolio-border">
                        <div class="portfolio-thumb effect">
                            <a class="lightbox" title="This is an image title" href="catalog/view/theme/pccindianew/images/product/necklaces_largeb6eb.jpg">
                             
                                <img alt="" src="catalog/view/theme/pccindianew/images/product/necklaces_largeb6eb.jpg" />
                            </a>
                        </div>
                        <div class="portfolio-details text-center">
                            <h4><a href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">Necklaces</a></h4>
                            <p>Precious metals have always been a detector of prosperity and high socia...</p>
                            <p><a class="btn" href="http://pcchandraindiaonline.com/index.php?route=product/category&amp;path=34">See all</a></p>
                        </div>
                    </div>
                </div>-->
                
            </div>
        </div>
        <!-- End Recent Projects Carousel -->
      
</div>
</section>




<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.simplr.smoothscroll.minc74c.js?16272139736165429143" type="text/javascript"></script> 
<script src="catalog/view/theme/pccindia/cdn.shopify.com/s/files/1/0691/3777/t/2/assets/jquery.mousewheel.minc74c.js?16272139736165429143" type="text/javascript"></script> 
<script type="text/javascript">
/* smooth scroll */
var platform = navigator.platform.toLowerCase();
if (platform.indexOf('win') == 0 || platform.indexOf('linux') == 0) {
    if ($.browser.webkit || $.browser.msie) {
        $.srSmoothscroll({
        step: 100,
        speed: 600,
        ease: 'linear'
        });
    };
};
</script> 
<script type="text/javascript">
jQuery(function($){
  /* parallax */
  $(window).load(function() {
    if ($(window).width() > 980){
     // $('.homepage_custom__4').parallax("50%", -0.4);
      $('.homepage_custom__5').parallax("50%", -0.4);
    };
  });
});
</script>
<!--<div class="homepage_custom__4 parallax_box">
  <div class="container">
    <h3>Underline</h3>
    <h4>your personality</h4>
    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p>
  </div>
</div>-->




<!-- Start Featured collections -->
<section id="content">
<div class="container">
       <?php echo $content_top; ?>
       
      
</div>
</section>
<!-- End Featured collections -->



<?php echo $footer; ?>