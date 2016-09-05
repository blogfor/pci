<?php echo $header; ?><?php //echo $column_right; ?>
<style>
.page_heading {
	padding:2px 2px !important;
}
</style>


<div class="hr1 margin-top"><!-- Divider --></div>

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
  
<div >
    <div class="container">
      <div id="main_fullwidth_content" class="col-sm-12" style="min-height:300px;">
        <div class="collection-scope">
          <div class="page_header">
            <h1 class="page_heading"><?php echo $heading_title; ?></h1>
          </div>
          <div class="page_content" style="text-align:justify;">
          
  
 			 <?php echo $description; ?>
             <br clear="all" /><br clear="all" />
          	<div class="buttons">
            <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
          	</div>
 		</div>
  
   <?php echo $content_bottom; ?> 
   </div>
      </div>
    </div>
 </div>   
    
<?php echo $footer; ?>