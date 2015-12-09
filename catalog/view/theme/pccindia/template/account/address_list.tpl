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
              
                   <h2><?php echo $text_address_book; ?></h2>
                    <?php foreach ($addresses as $result) { ?>
                    <div class="content">
                      <table style="width: 100%;">
                        <tr>
                          <td><?php echo $result['address']; ?></td>
                          <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="btn"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn"><?php echo $button_delete; ?></a></td>
                        </tr>
                      </table>
                    </div>
                    <?php } ?>
                    <div class="buttons">
                      <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
                      <div class="right"><a href="<?php echo $insert; ?>" class="btn"><?php echo $button_new_address; ?></a></div>
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