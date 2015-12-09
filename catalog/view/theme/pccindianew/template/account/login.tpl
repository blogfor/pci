<?php echo $header; ?>


<?php if ($success) { ?>
<div class="success container"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning container"><?php echo $error_warning; ?></div>
<?php } ?>



<?php //echo $column_right; ?>
<style>
.page_heading {
	padding:2px 2px !important;
}
</style>

  
<!-- Start breadcrumb  -->
<section>
  <div class="container">
    <div class="row"> 

			<div class="col-lg-12 col-md-12 col-sm-12">
              <ol class="breadcrumb">
                <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>
    <?php } ?>
              </ol>
            </div>

	</div>
  </div>
</section>
<!--breadcrumb-end-->
 
  <!-- Start Featured collections -->
<section class="pmagn3">
<div class="container">
	<div class="row">
 <?php echo $content_top; ?>
  
   <!--right-col-->
        <div class="col-lg-12 col-md-12 col-sm-12">
            
            <!-- Start Recent Projects Carousel -->
            <div class="recent-projects">
        
       <h4 class="title"><?php echo $heading_title; ?></h4>
          <div class="row">
          <div class="page_content">
 		 <div class="login-content">
                     
                     
    <div class="col-lg-8 col-md-8 col-sm-8">
      <h2><?php echo $text_new_customer; ?></h2>
      <div class="content">
        <p><b><?php echo $text_register; ?></b></p> 
        <p><?php echo $text_register_account; ?></p><br clear="all" /><br clear="all" />
        <a href="<?php echo $register; ?>" class="btn"><?php echo $button_continue; ?></a></div>
    </div>
                     
                     
    <div class="col-lg-4 col-md-4 col-sm-4">
      
      
        <div class="content">
        <h2><?php echo $text_returning_customer; ?></h2>
        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
        <p><?php echo $text_i_am_returning_customer; ?></p>
        
        <div class="row" style="margin-left:0 !important;">
        <label for="email"><b><?php echo $entry_email; ?></b></label>
        <input type="text" name="email" value="<?php echo $email; ?>" />
        </div>
        
        <div class="row" style="margin-left:0 !important;">
        <label for="password"><b><?php echo $entry_password; ?></b></label>
        <input type="password" name="password" value="<?php echo $password; ?>" />
        </div>
        
        <div class="row" style="margin-left:0 !important;">
        <input type="submit" value="<?php echo $button_login; ?>" class="btn" />
        </div>
          
          <br /> <br />
          <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a><br />
          <br />
          
          <?php if ($redirect) { ?>
          <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
          <?php } ?>
         </form> 
        </div>
      
    </div>
                     
                     
  </div>
  		</div>
  
   <?php echo $content_bottom; ?> 
          </div>
      </div>
        
    </div>
    <?php echo $column_right; ?> 
        
        
        </div>

	</div>     

</section>


<script type="text/javascript"><!--
$('#login input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#login').submit();
	}
});
//--></script> 
<?php echo $footer; ?>