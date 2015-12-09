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
                <?php if ($returns) { ?>
                <?php foreach ($returns as $return) { ?>
                <div class="return-list">
                  <div class="return-id"><b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?></div>
                  <div class="return-status"><b><?php echo $text_status; ?></b> <?php echo $return['status']; ?></div>
                  <div class="return-content">
                    <div><b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
                      <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?></div>
                    <div><b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?></div>
                    <div class="return-info"><a href="<?php echo $return['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></div>
                  </div>
                </div>
                <?php } ?>
                <div class="pagination"><?php echo $pagination; ?></div>
                <?php } else { ?>
                <div class="content"><?php echo $text_empty; ?></div>
                <?php } ?>                    
          </div>
          <?php echo $content_bottom; ?> </div>
      </div>
    </div>
    <?php echo $column_left; ?> 
  </div>
</div>

</div>
<?php echo $footer; ?>





<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <?php if ($returns) { ?>
  <?php foreach ($returns as $return) { ?>
  <div class="return-list">
    <div class="return-id"><b><?php echo $text_return_id; ?></b> #<?php echo $return['return_id']; ?></div>
    <div class="return-status"><b><?php echo $text_status; ?></b> <?php echo $return['status']; ?></div>
    <div class="return-content">
      <div><b><?php echo $text_date_added; ?></b> <?php echo $return['date_added']; ?><br />
        <b><?php echo $text_order_id; ?></b> <?php echo $return['order_id']; ?></div>
      <div><b><?php echo $text_customer; ?></b> <?php echo $return['name']; ?></div>
      <div class="return-info"><a href="<?php echo $return['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a></div>
    </div>
  </div>
  <?php } ?>
  <div class="pagination"><?php echo $pagination; ?></div>
  <?php } else { ?>
  <div class="content"><?php echo $text_empty; ?></div>
  <?php } ?>
  <div class="buttons">
    <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
  </div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>