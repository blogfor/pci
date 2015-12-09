<?php echo $header; ?><?php //echo $column_right; ?>
<style>
.page_heading {
	padding:2px 2px !important;
}
</style>

<div id="main" role="main">
<div class="container"> <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><span class="page-title"><?php echo $breadcrumb['text']; ?></span></a></li>
    <?php } ?>
  </ul>
  
  
<div class="row sidebar_left ">
    <div class="column_center">
      <div id="main_fullwidth_content" class="col-sm-12">
        <div class="collection-scope">
          <div class="page_header">
            <h1 class="page_heading"><?php echo $heading_title; ?></h1>
          </div>
          <div class="page_content">
          
  
 			 <?php echo $description; ?>
          	<div class="buttons">
            <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
          	</div>
 		</div>
  
   <?php echo $content_bottom; ?> 
   </div>
      </div>
    </div>
    
    <?php //echo $column_left; ?> </div>
</div>

<?php echo $footer; ?>