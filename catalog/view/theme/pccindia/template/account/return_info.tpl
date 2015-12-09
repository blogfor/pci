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

                <table class="list">
                   <thead>
                     <tr>
                       <td class="left" colspan="2"><?php echo $text_return_detail; ?></td>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                       <td class="left" style="width: 50%;"><b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?><br />
                         <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
                       <td class="left" style="width: 50%;"><b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
                         <b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></td>
                     </tr>
                   </tbody>
                 </table>
                 <h2><?php echo $text_product; ?></h2>
                 <table class="list">
                   <thead>
                     <tr>
                       <td class="left" style="width: 33.3%;"><?php echo $column_product; ?></td>
                       <td class="left" style="width: 33.3%;"><?php echo $column_model; ?></td>
                       <td class="right" style="width: 33.3%;"><?php echo $column_quantity; ?></td>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                       <td class="left"><?php echo $product; ?></td>
                       <td class="left"><?php echo $model; ?></td>
                       <td class="right"><?php echo $quantity; ?></td>
                     </tr>
                   </tbody>
                 </table>
                 <table class="list">
                   <thead>
                     <tr>
                       <td class="left" style="width: 33.3%;"><?php echo $column_reason; ?></td>
                       <td class="left" style="width: 33.3%;"><?php echo $column_opened; ?></td>
                       <td class="left" style="width: 33.3%;"><?php echo $column_action; ?></td>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                       <td class="left"><?php echo $reason; ?></td>
                       <td class="left"><?php echo $opened; ?></td>
                       <td class="left"><?php echo $action; ?></td>
                     </tr>
                   </tbody>
                 </table>
                 <?php if ($comment) { ?>
                 <table class="list">
                   <thead>
                     <tr>
                       <td class="left"><?php echo $text_comment; ?></td>
                     </tr>
                   </thead>
                   <tbody>
                     <tr>
                       <td class="left"><?php echo $comment; ?></td>
                     </tr>
                   </tbody>
                 </table>
                 <?php } ?>
                 <?php if ($histories) { ?>
                 <h2><?php echo $text_history; ?></h2>
                 <table class="list">
                   <thead>
                     <tr>
                       <td class="left" style="width: 33.3%;"><?php echo $column_date_added; ?></td>
                       <td class="left" style="width: 33.3%;"><?php echo $column_status; ?></td>
                       <td class="left" style="width: 33.3%;"><?php echo $column_comment; ?></td>
                     </tr>
                   </thead>
                   <tbody>
                     <?php foreach ($histories as $history) { ?>
                     <tr>
                       <td class="left"><?php echo $history['date_added']; ?></td>
                       <td class="left"><?php echo $history['status']; ?></td>
                       <td class="left"><?php echo $history['comment']; ?></td>
                     </tr>
                     <?php } ?>
                   </tbody>
                 </table>
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



