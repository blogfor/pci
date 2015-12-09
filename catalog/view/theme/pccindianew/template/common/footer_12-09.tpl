
<!-- Start Footer -->
<footer>
    <div class="container">
        <div class="row footer-widgets">
            <div class="col-md-3">
                <div class="footer-widget contact-widget">
                    <h4><?php echo $text_information; ?></h4>
                    <ul>
                        <?php foreach ($informations as $information) { ?>
                        <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                        <?php } ?>
                    </ul>
                </div>
            </div><!-- .col-md-3 -->

            <div class="col-md-3">
                <div class="footer-widget contact-widget">
                    <h4><?php echo $text_service; ?></h4>
                    <ul>
                        <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                        <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                        <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
                    </ul>
                    <ul>
                        <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
                        <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                        <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                        <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                    </ul>
                </div>
            </div><!-- .col-md-3 -->

            <div class="col-md-3">
                <div class="footer-widget contact-widget">
                    <h4><?php echo $text_extra; ?></h4>
                    <ul>
                        <!--      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>-->
                        <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
                        <!--      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li> -->
                        <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                    </ul>
                </div>
            </div><!-- .col-md-3 -->

            <div class="col-md-3">
                <div class="footer-widget contact-widget">
                    <h4>Follow us</h4>
                    <ul class="footer_social">
                        <li><a href="http://twitter.com/#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="http://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>



                        <li><a href="http://google.com/+#"><i class="fa fa-google-plus"></i></a></li>

                    </ul>
                </div>
            </div><!-- .col-md-3 -->
        </div> <!-- .row -->

        <!-- Start Copyright -->
        <div class="copyright-section">
            <div class="row">
                <div class="col-md-6"><p>&copy; 2015 jewelry. All Rights Reserved.</p></div>
                <div class="col-md-6">
                    <ul class="footer-nav">
                        <li><a href="http://pcchandraindiaonline.com/index.php?route=information/sitemap">Site Map</a></li>
                        <li><a href="#">Privacy Policy</a></li>
                        <li><a href="http://pcchandraindiaonline.com/index.php?route=information/contact">Contact Us</a></li>
                    </ul>
                </div>						
            </div>
        </div>
        <!-- End Copyright -->
    </div>
</footer>
<!-- End Footer -->

<!-- Go To Top Link -->
<a href="#" class="back-to-top"><i class="fa fa-angle-up"></i></a>

</body>
</html>