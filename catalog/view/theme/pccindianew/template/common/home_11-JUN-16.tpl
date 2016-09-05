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



<?php  
if($config_golive==0){ ?>
<script>
    var r="<div class='today'><img src='https://pcchandraindiaonline.com/catalog/view/theme/pccindianew/images/FIRE_C_1.GIF' style='padding-top:50px;'></div><h2 style='text-align:center;'>P.C.CHANDRA JEWELLERS is excited to announce the launch of their newly designed ecommerce web site, which goes live today, Wednesday the 2nd March of 2016</h2>";
	$(document).ready(function(){	
			BootstrapDialog.show({
				title: 'Welcome to P.C.CHANDRA JEWELLERS',
				message: r,
				buttons: [{
					id: 'btn-ok',   
					label: 'LAUNCH',
					cssClass: 'btn-primary', 
					autospin: false,
					action: function(dialogRef){ 
						dialogRef.close();	
					
						
					
					}
				}]
			});	
	});
</script>
<?php } ?>



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

                            <a class="lightbox" title="Rings" href="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg">

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

                            <a class="lightbox" title="Earrings" href="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg">

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







                <div class="portfolio-item item">

                    <div class="portfolio-border">

                        <div class="portfolio-thumb effect">

                            <a class="lightbox" data-lightbox-type="ajax" href="catalog/view/theme/pccindianew/images/product/bangles.jpg">

                                <!-- <div class="thumb-overlay"><i class="fa fa-play"></i></div>-->

                                <img alt="Bangles" src="catalog/view/theme/pccindianew/images/product/bangles.jpg" />

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

                            <a class="lightbox" title="Rings" href="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg">

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

                            <a class="lightbox" title="Earrings" href="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg">

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







                <div class="portfolio-item item">

                    <div class="portfolio-border">

                        <div class="portfolio-thumb effect">

                            <a class="lightbox" title="Rings" href="catalog/view/theme/pccindianew/images/product/rings_large63a4.jpg">

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

                            <a class="lightbox" title="Earrings" href="catalog/view/theme/pccindianew/images/product/earrings_large2d70.jpg">

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







            </div>

        </div>

        <!-- End Recent Projects Carousel -->



    </div>

</section>











<!-- Start Featured collections -->

<!--<section id="content">

<div class="container">

       <?php echo $content_top; ?>

       

      

</div>

</section>-->

<!-- End Featured collections -->







<?php echo $footer; ?>