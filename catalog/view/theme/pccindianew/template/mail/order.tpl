<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/1999/REC-html401-19991224/strict.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title><?php echo $title; ?></title>
</head>
<body style="font-family: Arial, Helvetica, sans-serif; font-size: 14px; background-color:#f0eaff; color:#333; ">
<center>
<br clear="all">
<div style="width: 680px; margin:0 auto;">

<table style="width:100%; border-bottom:1px #333 solid;">
<tr>
<td colspan="2">
<a href="<?php echo $store_url; ?>" title="<?php echo $store_name; ?>">
<img src="http://pcchandraindiaonline.com/image/data/logo.png" alt="<?php echo $store_name; ?>" style="margin-bottom: 20px; border: none;" />
</a>
 </td>
</tr>
<tr> 
<td align="center"> <b>P.C. Chandra Jewellers</b> <br>
A jewel of jewels  </td> 
<td> <h4>Proforma Invoice </h4></td>
</tr>
</table>

<table>
    <tr>
        <td> 
        
       	  <table width="90%">
            <tr>
            <td> <p> P.C. Chandra Gems Private Limited</p>
            <p style="font-size:10px;"> P-154A, NAZRUL ISLAM AVENUE, <br>
            CIT SCHEME VIIM, KOLKATA - 700054, <br>
            Email:pccecomm@pcchandraindia.com,<br>
            Website: www.pcchandraindiaonline.com
            </p>
            <hr>
                <table width="250">
                <tr>
                    <td style="border-bottom:1px #333 solid">
                        PAN <br>
                        AACCP6601K
                    </td>
                </tr>
                <tr>
                    <td style="border-bottom:1px #333 solid">
                        VAT <br>
                        19381510055
                    </td>
                </tr>
                
                <tr>
                    <td style="border-bottom:1px #333 solid">
                        CST <br>
                        19381510249
                    </td>
                </tr>
                
                <tr>
                    <td style="border-bottom:1px #333 solid">
                        CIN <br>
                        U55201WB2001PTC092795
                    </td>
                </tr>
                </table>
            
             </td>            
            </tr>
            
            </table>
        
        
        </td>
    	<td valign="top"> 
        	<table>
            	<tr>
                    <td style="border-bottom:1px #333 solid">
                        INVOICE DATE
                        <b><?php echo $date_added; ?></b>
                    </td>                    
                    <td style="width:100">&nbsp;</td>
                    <td style="border-bottom:1px #333 solid">
                        INVOICE NUMBER
                        <b>G<?php echo $order_id; ?></b>
                    </td>
                    
                </tr>
                
                <tr>
                    <td style="border-bottom:1px #333 solid">
                        ORDER ID/DATE
                        <?php echo $order_id; ?> <?php echo $date_added; ?>
                    </td>                    
                    <td style="width:100">&nbsp;</td>
                    <td style="border-bottom:1px #333 solid">
                        PAYMENT MODE
                        <?php echo $payment_method; ?>
                    </td>                    
                </tr>
                
                
                <tr>
                    <td style="border-bottom:1px #333 solid" colspan="3">
                        
                            <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
                            <thead>
                            <tr>
                            <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $text_payment_address; ?></td>
                            <?php if ($shipping_address) { ?>
                            <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD;  font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $text_shipping_address; ?></td>
                            <?php } ?>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                            <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $payment_address; ?></td>
                            <?php if ($shipping_address) { ?>
                            <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $shipping_address; ?></td>
                            <?php } ?>
                            </tr>
                            </tbody>
                            </table>
  
                        
                    </td>                    
                                 
                </tr>
                
            
            </table>
        </td>
    </tr>

</table>
<?php if ($comment) { ?>
  <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
    <thead>
      <tr>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD;  font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $text_instruction; ?></td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $comment; ?></td>
      </tr>
    </tbody>
  </table>
  <?php } ?>
  
  <table style="border-collapse: collapse; width: 100%; border-top: 1px solid #DDDDDD; border-left: 1px solid #DDDDDD; margin-bottom: 20px;">
    <thead>
      <tr>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #f6cb65; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $text_product; ?></td>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #f6cb65; font-weight: bold; text-align: left; padding: 7px; color: #222222;"><?php echo $text_model; ?></td>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #f6cb65; font-weight: bold; text-align: right; padding: 7px; color: #222222;"><?php echo $text_quantity; ?></td>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #f6cb65; font-weight: bold; text-align: right; padding: 7px; color: #222222;"><?php echo $text_price; ?></td>
        <td style="font-size: 12px; border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; background-color: #f6cb65; font-weight: bold; text-align: right; padding: 7px; color: #222222;"><?php echo $text_total; ?></td>
      </tr>
    </thead>
    <tbody>
      <?php foreach ($products as $product) { ?>
      <tr>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $product['name']; ?>
          <?php foreach ($product['option'] as $option) { ?>
          <br />
          &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
          <?php } ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $product['model']; ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $product['quantity']; ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $product['price']; ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $product['total']; ?></td>
      </tr>
      <?php } ?>
      <?php foreach ($vouchers as $voucher) { ?>
      <tr>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"><?php echo $voucher['description']; ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: left; padding: 7px;"></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;">1</td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $voucher['amount']; ?></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $voucher['amount']; ?></td>
      </tr>
      <?php } ?>
    </tbody>
    <tfoot>
      <?php foreach ($totals as $total) { ?>
      <tr>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;" colspan="4"><b><?php echo $total['title']; ?>:</b></td>
        <td style="font-size: 12px;	border-right: 1px solid #DDDDDD; border-bottom: 1px solid #DDDDDD; text-align: right; padding: 7px;"><?php echo $total['text']; ?></td>
      </tr>
      <?php } ?>
    </tfoot>
  </table>
  
   <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_greeting; ?></p>
  <?php if ($customer_id) { ?>
  <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_link; ?></p>
  <p style="margin-top: 0px; margin-bottom: 20px;"><a href="<?php echo $link; ?>"><?php echo $link; ?></a></p>
  <?php } ?>
  <?php if ($download) { ?>
  <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_download; ?></p>
  <p style="margin-top: 0px; margin-bottom: 20px;"><a href="<?php echo $download; ?>"><?php echo $download; ?></a></p>
  <?php } ?>
  <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_footer; ?></p>
  <p style="margin-top: 0px; margin-bottom: 20px;"><?php echo $text_powered; ?></p>
</div>
</center>
<br>
<br>
</body>
</html>
