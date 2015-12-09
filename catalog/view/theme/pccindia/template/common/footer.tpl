
<!-- FOOTER -->
<footer class="inner_shadow">
    <div class="container">
        <div class="row">
            <div class="col-sm-3 footer_block footer_block__1 wow">
                 <h3><?php echo $text_information; ?></h3>
    <ul>
      <?php foreach ($informations as $information) { ?>
      <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
      <?php } ?>
    </ul>
            </div>

            <div class="col-sm-3 footer_block footer_block__2 wow">
                 <h3><?php echo $text_service; ?></h3>
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

            <div class="col-sm-3 footer_block footer_block__3 wow">
                  <h3><?php echo $text_extra; ?></h3>
    <ul>
<!--      <li><a href="<?php echo $manufacturer; ?>"><?php echo $text_manufacturer; ?></a></li>-->
      <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
<!--      <li><a href="<?php echo $affiliate; ?>"><?php echo $text_affiliate; ?></a></li> -->
      <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
    </ul>
            </div>

            <div class="col-sm-3 footer_block footer_block__4 wow">
                <h3>Follow us</h3>
                <ul class="footer_social">
                    <li><a href="http://twitter.com/#"><i class="fa fa-twitter"></i></a></li>
                    <li><a href="http://www.facebook.com/"><i class="fa fa-facebook"></i></a></li>
                    
                    
                    
                    <li><a href="http://google.com/+#"><i class="fa fa-google-plus"></i></a></li>
                    
                </ul>
            </div>          
        </div>
    </div>

    <div class="copyright">
      	<div class="container" role="contentinfo">
        &copy; 2015 jewelry. All Rights Reserved. 
        </div>
    </div>
</footer>

</div><!-- / #wrapper2 -->
</div><!-- / #wrapper -->

<div class="cart_popup">Product Added to Cart</div>

<script>
function clickonproduct(thisObg){
    var p_url=$(thisObg).attr('purl');
    var p_id=$(thisObg).attr('pid');
    
        createCookie('pcc-pselect-cookie', p_id);
    
   
    window.location.href=p_url;
   // $(".product__6").focus();
}    
$(document).ready(function(){
    $('html, body').animate({ scrollTop: $('#P'+getCookie('pcc-pselect-cookie')).offset().top-50}, 1000); 
    $('.product_items').on('click',function(){
    
        
    });
});
</script>

</body>
</html>