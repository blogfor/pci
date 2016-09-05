<br clear="all" />

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
            <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
            <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
          </ul>
        </div>
      </div>
      <!-- .col-md-3 -->
      
      <div class="col-md-3">
        <div class="footer-widget contact-widget">
          <h4><?php echo $text_service; ?></h4>
          <ul>

            <li><a href="<?php echo $sitemap; ?>"><?php echo $text_sitemap; ?></a></li>
      <!--      <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>-->
            <li><a href="<?php echo $voucher; ?>"><?php echo $text_voucher; ?></a></li>
            <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
            <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
            <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a></li>
          </ul>
        </div>
      </div>
      <!-- .col-md-3 -->
      
      
      <!-- .col-md-3 -->
      
      <div class="col-md-3">
        <div class="footer-widget contact-widget">
          <h4>Follow us</h4>
          <ul class="footer_social clearfix">
            <!-- <li><a href="http://twitter.com/#"><i class="fa fa-twitter"></i></a></li>-->
            <li><a  target="_new" href="https://www.facebook.com/pcchandrajewellersindia/"><i class="fa fa-facebook"></i></a></li>
            <li><a target="_new" href="https://www.youtube.com/user/pcchandrajewellers/"><i class="fa fa-youtube-square"></i></a></li>
          </ul>
          <div style="padding-top:20px;"> <img alt="" src="catalog/view/theme/pccindianew/images/visa.jpg" class="clearfix"> <br clear="all" />
            <span style="font-size:10px;">Verified By Axis Bank</span> </div>
        </div>
      </div>
      <!-- .col-md-3 -->
      
      
      <div class="col-md-3">
        <div class="footer-widget contact-widget">
          <h4><?php //echo $text_extra; ?>Newsletter</h4> 
        <div>                                
             <p>Subscribe to our weekly Newsletter and stay tuned.</p>     
             <div id="subscribe_result" style="line-height:35px; color:greenyellow;"></div>                               
              <form name="subscribe" id="subscribe" method="post">
                <div class="input-prepend" style="padding: 12px 0;"><span class="add-on" style="width: 18px; display: block; float: left; line-height: 30px; color: #333; padding-left: 5px; background-color: #ddd;"><i class="fa fa-user"></i></span>
                   <input type="text" value="" name="subscribe_name" id="subscribe_name" placeholder="Your name" style="color: #666; padding-left: 5px; border: 0; line-height: 28px; width: 90%; background-color: #ddd;"> 
                </div>
                <div class="input-prepend"><span class="add-on" style="width: 18px; display: block; float: left; line-height: 30px; color: #333; padding-left: 5px; background-color: #ddd;"><i class="fa fa-envelope"></i></span>
                    <input type="text" value="" name="subscribe_email" id="subscribe_email" placeholder="your@email.com"  style="color: #666; padding-left: 5px; border: 0; line-height: 28px; width: 90%; background-color: #ddd;">
                </div>
                <br />
                <input type="button" id="subscribe_btn" onclick="email_subscribe()" value="Subscribe Now!" class="btn btn-large" />
             </form>                                    
        </div>
   
                   

                  <!--  <form name="subscribe" id="subscribe">
                         <span class="required">*</span>&nbsp;Name<br><input type="text" value="" name="subscribe_name" id="subscribe_name">  
                         <span class="required">*</span>&nbsp;Email<br><input type="text" value="" name="subscribe_email" id="subscribe_email">
                         <a class="button" onclick="email_subscribe()"><span>Subscribe</span></a>       
                    </form>-->
                    <script language="javascript">
					$("#subscribe_email").keypress(function(){
						$("#subscribe_result").html("");
					});
					
                    function email_subscribe(){
					$("#subscribe_btn").attr('disabled','disabled');	
                    $.ajax({
                        type: 'post',
                        url: 'index.php?route=module/newslettersubscribe/subscribe',
                        dataType: 'html',
                        data:$("#subscribe").serialize(),
                        success: function (html) {
							$("#subscribe_btn").removeAttr('disabled');	
                            eval(html);
                        }}); 
                    }
                    </script>

          
        </div>
      </div>
       
      
    </div>
    <!-- .row --> 
    
    <!-- Start Copyright -->
    
    <div class="copyright-section">
      <div class="row">
        <div class="col-md-6">
          <p>&copy; P.C. Chandra Gems Private Limited. All Rights Reserved.</p>
        </div>
        <div class="col-md-6">
          <ul class="footer-nav">
            <li><a href="http://pcchandraindiaonline.com/index.php?route=information/sitemap">Site Map</a></li>
            
            <!-- <li><a href="#">Privacy Policy</a></li>-->
            
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
</body></html>