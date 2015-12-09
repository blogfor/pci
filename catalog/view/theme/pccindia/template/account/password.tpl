<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
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
                    <h2><?php echo $text_password; ?></h2>
                    <div class="content">
                    <table class="form">
                      <tr>
                        <td><span class="required">*</span> <?php echo $entry_password; ?></td>
                        <td><input type="password" name="password" value="<?php echo $password; ?>" />
                          <?php if ($error_password) { ?>
                          <span class="error"><?php echo $error_password; ?></span>
                          <?php } ?></td>
                      </tr>
                      <tr>
                        <td><span class="required">*</span> <?php echo $entry_confirm; ?></td>
                        <td><input type="password" name="confirm" value="<?php echo $confirm; ?>" />
                          <?php if ($error_confirm) { ?>
                          <span class="error"><?php echo $error_confirm; ?></span>
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
