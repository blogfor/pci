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
              
                <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                <div class="content">
                <table class="form">
                 <tr>
                   <td><?php echo $entry_newsletter; ?></td>
                   <td><?php if ($newsletter) { ?>
                     <input type="radio" name="newsletter" value="1" checked="checked" />
                     <?php echo $text_yes; ?>&nbsp;
                     <input type="radio" name="newsletter" value="0" />
                     <?php echo $text_no; ?>
                     <?php } else { ?>
                     <input type="radio" name="newsletter" value="1" />
                     <?php echo $text_yes; ?>&nbsp;
                     <input type="radio" name="newsletter" value="0" checked="checked" />
                     <?php echo $text_no; ?>
                     <?php } ?></td>
                 </tr>
                </table>
                </div>
                <div class="buttons">
                <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
                <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="btn" /></div>
                </div>
                </form>
               
                    
          </div>
          <?php echo $content_bottom; ?> </div>
      </div>
    </div>
    <?php echo $column_left; ?> 
  </div>
</div>

</div>
<?php echo $footer; ?>