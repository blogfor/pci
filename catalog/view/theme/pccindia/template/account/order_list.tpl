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
              
                <?php if ($orders) { ?>
                 <?php foreach ($orders as $order) { ?>
                 <div class="order-list">
                   <div class="order-id"><b><?php echo $text_order_id; ?></b> #<?php echo $order['order_id']; ?></div>
                   <div class="order-status"><b><?php echo $text_status; ?></b> <?php echo $order['status']; ?></div>
                   <div class="order-content">
                     <div><b><?php echo $text_date_added; ?></b> <?php echo $order['date_added']; ?><br />
                       <b><?php echo $text_products; ?></b> <?php echo $order['products']; ?></div>
                     <div><b><?php echo $text_customer; ?></b> <?php echo $order['name']; ?><br />
                       <b><?php echo $text_total; ?></b> <?php echo $order['total']; ?></div>
                     <div class="order-info"><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a>&nbsp;&nbsp;<a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/default/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a></div>
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
               
                    
          </div>
          <?php echo $content_bottom; ?> </div>
      </div>
    </div>
    <?php echo $column_left; ?> 
  </div>
</div>

</div>
<?php echo $footer; ?>