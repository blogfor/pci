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
                  <h2><?php echo $text_your_details; ?></h2>
                  <div class="content">
                    <table class="form">
                      <tr>
                        <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                        <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                          <?php if ($error_firstname) { ?>
                          <span class="error"><?php echo $error_firstname; ?></span>
                          <?php } ?></td>
                      </tr>
                      <tr>
                        <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                        <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                          <?php if ($error_lastname) { ?>
                          <span class="error"><?php echo $error_lastname; ?></span>
                          <?php } ?></td>
                      </tr>
                      <tr>
                        <td><span class="required">*</span> <?php echo $entry_email; ?></td>
                        <td><input type="text" name="email" value="<?php echo $email; ?>" />
                          <?php if ($error_email) { ?>
                          <span class="error"><?php echo $error_email; ?></span>
                          <?php } ?></td>
                      </tr>
                      <tr>
                        <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
                        <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
                          <?php if ($error_telephone) { ?>
                          <span class="error"><?php echo $error_telephone; ?></span>
                          <?php } ?></td>
                      </tr>
                      <tr>
                        <td><?php echo $entry_fax; ?></td>
                        <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
                      </tr>
                    </table>
                  </div>
                  <div class="buttons">
                    <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
                    <div class="right">
                      <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                    </div>
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
