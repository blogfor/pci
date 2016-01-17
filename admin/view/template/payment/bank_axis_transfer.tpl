<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <?php if ($error_warning) { ?>
  <div class="warning"><?php echo $error_warning; ?></div>
  <?php } ?>
  
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/payment.png" alt="" /> <?php echo $heading_title; ?></h1>
      <div class="buttons"><a onclick="$('#form').submit();" class="button"><?php echo $button_save; ?></a><a href="<?php echo $cancel; ?>" class="button"><?php echo $button_cancel; ?></a></div>
    </div>
    <div class="content">
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table class="form">
          <?php foreach ($languages as $language) { ?>
		
		  
		  <tr>
            <td><span class="required">*</span> Merchant AccessCode</td>
            <td><input type="text" name="bank_axis_marchent_access_code" value="<?php echo $bank_axis_marchent_access_code; ?>" /></td>
          
          </tr>
          <tr>
            <td><span class="required">*</span> MerchantID </td>
            <td><input type="text" name="bank_axis_marchent_id" value="<?php echo $bank_axis_marchent_id; ?>" /></td>
          </tr>
          
          <tr>
            <td><span class="required">*</span>Secure Hash Secret</td>
            <td><input type="text" name="bank_axis_hash_secret" value="<?php echo $bank_axis_hash_secret; ?>"  style="width:500px;"/></td>
          </tr>
		  
		  
		  
		  
		  
		  
          <?php } ?>
       
         
          <tr>
            <td><?php echo $entry_geo_zone; ?></td>
            <td><select name="bank_axis_transfer_geo_zone_id">
                <option value="0"><?php echo $text_all_zones; ?></option>
                <?php foreach ($geo_zones as $geo_zone) { ?>
                <?php if ($geo_zone['geo_zone_id'] == $bank_axis_transfer_geo_zone_id) { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>" selected="selected"><?php echo $geo_zone['name']; ?></option>
                <?php } else { ?>
                <option value="<?php echo $geo_zone['geo_zone_id']; ?>"><?php echo $geo_zone['name']; ?></option>
                <?php } ?>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_status; ?></td>
            <td><select name="bank_axis_transfer_status">
                <?php if ($bank_axis_transfer_status) { ?>
                <option value="1" selected="selected"><?php echo $text_enabled; ?></option>
                <option value="0"><?php echo $text_disabled; ?></option>
                <?php } else { ?>
                <option value="1"><?php echo $text_enabled; ?></option>
                <option value="0" selected="selected"><?php echo $text_disabled; ?></option>
                <?php } ?>
              </select></td>
          </tr>
          <tr>
            <td><?php echo $entry_sort_order; ?></td>
            <td><input type="text" name="bank_axis_transfer_sort_order" value="<?php echo $bank_axis_transfer_sort_order; ?>" size="1" /></td>
          </tr>
        </table>
      </form>
    </div>
  </div>
</div>
<?php echo $footer; ?>