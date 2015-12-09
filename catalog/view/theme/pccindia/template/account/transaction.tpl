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
              
                <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
                <table class="list">
                <thead>
                  <tr>
                      <td class="left" style="width: 20%;"><?php echo $column_date_added; ?></td>
                    <td class="left" style="width: 60%;"><?php echo $column_description; ?></td>
                    <td class="right" style="width: 20%;"><?php echo $column_amount; ?></td>
                  </tr>
                </thead>
                <tbody>
                  <?php if ($transactions) { ?>
                  <?php foreach ($transactions  as $transaction) { ?>
                  <tr>
                    <td class="left"  style="width: 20%;"><?php echo $transaction['date_added']; ?></td>
                    <td class="left"  style="width: 60%;"><?php echo $transaction['description']; ?></td>
                    <td class="right"  style="width: 20%;"><?php echo $transaction['amount']; ?></td>
                  </tr>
                  <?php } ?>
                  <?php } else { ?>
                  <tr>
                    <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                  </tr>
                  <?php } ?>
                </tbody>
                </table>
                <div class="pagination"><?php echo $pagination; ?></div>
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