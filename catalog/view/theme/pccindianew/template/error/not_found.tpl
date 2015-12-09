<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>
<div id="main" role="main">
    
<div class="container"> <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><span class="page-title"><?php echo $breadcrumb['text']; ?></span></a></li>
    <?php } ?>
  </ul>
  <div class="row sidebar_left ">
    <div class="column_center">
      <div id="main_content" class="col-sm-9">
        <div class="collection-scope">
          <div class="page_header">
            <h1 class="page_heading"><?php echo $heading_title; ?></h1>
          </div>
          <div class="page_content">                              
                <div class="content"><?php echo $text_error; ?></div>
                <div class="buttons">
                  <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
                </div>                    
          </div>
          <?php echo $content_bottom; ?> </div>
      </div>
    </div>
    <?php echo $column_left; ?> 
  </div>
</div>

</div>
<?php echo $footer; ?>