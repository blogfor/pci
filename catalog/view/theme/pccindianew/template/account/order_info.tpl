<?php echo $header; ?>
<!-- Start breadcrumb  -->
<section>

    <div class="container">

        <div class="row"> 



            <div class="col-lg-12 col-md-12 col-sm-12">

                <ol class="breadcrumb">

                    <?php foreach ($breadcrumbs as $breadcrumb) { ?>

                    <li><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a></li>

                    <?php } ?>

                </ol>

            </div>



        </div>

    </div>

</section>

<!--breadcrumb-end-->







<section class="pmagn3">

    <div class="container">

        <div class="row">

            <?php echo $content_top; ?>

            <?php echo $column_left; ?> 

            <!--right-col-->

            <div class="col-lg-9 col-md-9 col-sm-9">

                <?php if ($success) { ?>

                <div class="success"><?php echo $success; ?></div>

                <?php } ?>

                <?php if ($error_warning) { ?>

                <div class="warning"><?php echo $error_warning; ?></div>

                <?php } ?>

                <!-- Start form  -->

                <div class="recent-projects">

                    <h4 class="title"><?php echo $heading_title; ?></h4>

                    <div  id="contact-form" class="contatct-form"><!--row-->







                        <div class="page_content ">                

                            <div class="table-responsive"> 

                            <table class="list table table-striped">

                                <thead>

                                    <tr>

                                        <td class="left"  width="100%"><?php echo $text_order_detail; ?></td>

                                    </tr>

                                </thead>

                                <tbody>

                                    <tr>

                                        <td class="left" style="width: 50%;"><?php if ($invoice_no) { ?>

                                            <b><?php echo $text_invoice_no; ?></b> <?php echo $invoice_no; ?><br />

                                            <?php } ?>

                                            <b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />

                                            <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>

                                        <td class="left" style="width: 50%;"><?php if ($payment_method) { ?>

                                            <b><?php echo $text_payment_method; ?></b> <?php echo $payment_method; ?><br />

                                               <?php 

                                              

                                               if($response_text!=''){                                               

                                               $resposnse=base64_decode(unserialize($response_text));

                                               

                                               if($resposnse['txnResponseCode']==0)

                                               echo 'PAYMENT SUCCESSFUL';

                                               else

                                               echo 'PAYMENT CANCEL';

                                               }                   

                                               

                                               //print_r($resposnse);

                                               ?>

                   

                                            <?php } ?>

                                            <br /> <b><?php echo 'PAN:'; ?></b> <?php echo $pan; ?>

                                             

                                            <?php if ($shipping_method) { ?>

                                            <br /><b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>

                                            <?php if(!empty($logistics_id)){ echo "<br /><b>Tracking ID:</b>".$logistics_id; 

                                            echo '<br/>';

                                            

        require_once(DIR_CONFIG.'wsdl.class.php');



if($logistics_id!='') {

$wsdlOBJ = new wsdl_call_base();

$params = array(

         'strMapCode' => "PCCGEM",

          'strDocs' => "'".$logistics_id."'",

          'strTrackType'=>"D",	

);



$ShippingDetails = $wsdlOBJ->wsdl_return_val("TrackDoc",$params);



$ShippingDetails=$ShippingDetails['TrackDocResult']['NewDataSet'];



echo '<strong>Docket ID: </strong>'.$ShippingDetails['trackheader']['DocketID'].'<br/>';

echo '<strong>Docket NO: </strong>'.$ShippingDetails['trackheader']['DocketNO'].'<br/>';

echo '<strong>Pick Up Date: </strong>'.$ShippingDetails['trackheader']['PickUpDate'].'<br/>';

echo '<strong>Order NO: </strong>'.$ShippingDetails['trackheader']['OrderNO'].'<br/>';

echo '<strong>Expected Delivery Date: </strong>'.$ShippingDetails['trackheader']['ExpectedDelDate'].'<br/>';

echo '<strong>Consignor Name: </strong>'.$ShippingDetails['trackheader']['ConsignorName'].'<br/>';

echo '<strong>Consignor City:</strong>'.$ShippingDetails['trackheader']['ConsignorCity'].'<br/>';

echo '<strong>Consignee Name: </strong>'.$ShippingDetails['trackheader']['ConsigneeName'].'<br/>';

echo '<strong>Consignee City: </strong>'.$ShippingDetails['trackheader']['ConsigneeCity'].'<br/>';

echo '<strong>Delivery Date Time: </strong>'.$ShippingDetails['trackheader']['DelDateTime'].'<br/>';



echo '<strong>Del Rec By:</strong>'.$ShippingDetails['trackheader']['DelRecBy'].'<br/>';

echo '<strong>XDMPODFLAG: </strong>'.$ShippingDetails['trackheader']['XDMPODFLAG'].'<br/>';

echo '<strong>Consignor City: </strong>'.$ShippingDetails['trackheader']['CngrCity'].'<br/>';

echo '<strong>Consignor PIN: </strong>'.$ShippingDetails['trackheader']['CngrPIN'].'<br/>';

echo '<strong>Consignor Address: </strong>'.$ShippingDetails['trackheader']['ConsignorAddress'].'<br/>';



echo '<strong>Consignee City: </strong>'.$ShippingDetails['trackheader']['CnsgCity'].'<br/>';

echo '<strong>Consignee PIN: </strong>'.$ShippingDetails['trackheader']['CnsgPIN'].'<br/>';

echo '<strong>Consignee Address: </strong>'.$ShippingDetails['trackheader']['ConsigneeAddress'].'<br/>';



echo '<strong>FLAG: </strong>'.$ShippingDetails['trackheader']['FLAG'].'<br/>';



echo '<strong><u>Tracking Details</u></strong>'.'<br/>';



echo '<table border="1" width="100%">';

echo '<tr><td>Docket ID</td><td>Date:</td><td>Time: </td><td>Event: </td><td>Location: </td><td>Description: </td><td>SEQ: </td></tr>';

foreach($ShippingDetails['trackdetail'] as $trackdeatils)

{

echo '<tr>';

echo '<td>'.$trackdeatils['DocketID'].'</td>';

echo '<td>'.$trackdeatils['EventDate'].'</td>';

echo '<td>'.$trackdeatils['EventTime'].'</td>';

echo '<td>'.$trackdeatils['Event'].'</td>';

echo '<td>'.$trackdeatils['EventLocation'].'</td>';

echo '<td>'.$trackdeatils['EventDescription'].'</td>';

echo '<td>'.$trackdeatils['SEQ'].'<br/>';

echo '</tr>';

}

echo '</table>';

}



                                            

                                            }?>

                                            <?php } ?></td>

                                    </tr>

                                </tbody>

                            </table>

                            <table class="list table-striped">

                                <thead>

                                    <tr>

                                        <td class="left"  style="width: 50%;"><?php echo $text_payment_address; ?></td>

                                        <?php if ($shipping_address) { ?>

                                        <td class="left" style="width: 50%;"><?php echo $text_shipping_address; ?></td>

                                        <?php } ?>

                                    </tr>

                                </thead>

                                <tbody>

                                    <tr>

                                        <td class="left"  style="width: 50%;" ><?php echo $payment_address; ?></td>

                                        <?php if ($shipping_address) { ?>

                                        <td class="left"  style="width: 50%;"><?php echo $shipping_address; ?></td>

                                        <?php } ?>

                                    </tr>

                                </tbody>

                            </table>

                            <table class="list table-striped">

                                <thead>

                                    <tr>

                                        <td >&nbsp; <?php echo $column_name; ?></td>

                                        <td ><?php echo $column_model; ?></td>

                                        <td ><?php echo $column_quantity; ?></td>

                                        <td ><?php echo $column_price; ?></td>

                                        <td ><?php echo $column_total; ?></td>

                                        <?php if ($products) { ?>

                                        <td style="width: 1px;"></td>

                                        <?php } ?>

                                    </tr>

                                </thead>

                                <tbody>

                                    <?php foreach ($products as $product) { ?>

                                    <tr>

                                        <td><?php echo $product['name']; ?>

                                            <?php foreach ($product['option'] as $option) { ?>

                                            <br />

                                            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>

                                            <?php } ?></td>

                                        <td><?php echo $product['model']; ?></td>

                                        <td><?php echo $product['quantity']; ?></td>

                                        <td><?php echo $product['price']; ?></td>

                                        <td><?php echo $product['total']; ?></td>

                                        <td><!--<a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/default/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a>--></td>

                                    </tr>

                                    <?php } ?>

                                    <?php foreach ($vouchers as $voucher) { ?>

                                    <tr>

                                        <td class="left"><?php echo $voucher['description']; ?></td>

                                        <td class="left"></td>

                                        <td class="right">1</td>

                                        <td class="right"><?php echo $voucher['amount']; ?></td>

                                        <td class="right"><?php echo $voucher['amount']; ?></td>

                                        <?php if ($products) { ?>

                                        <td></td>

                                        <?php } ?>

                                    </tr>

                                    <?php } ?>

                                </tbody>

                                <tfoot>

                                    <?php foreach ($totals as $total) { ?>

                                    <tr>

                                        <td colspan="3"></td>

                                        <td><b><?php echo $total['title']; ?>:</b></td>

                                        <td><?php echo $total['text']; ?></td>

                                        <?php if ($products) { ?>

                                        <td></td>

                                        <?php } ?>

                                    </tr>

                                    <?php } ?>

                                </tfoot>

                            </table>

                            <?php if ($comment) { ?>
							<br clear="all" />
                            <table class="list table-striped" >

                                <thead>

                                    <tr>

                                        <td class="left" style="width:100%;">&nbsp; <?php echo $text_comment; ?></td>

                                    </tr>

                                </thead>

                                <tbody>

                                    <tr>

                                        <td class="left" style="width:100%;"><?php echo $comment; ?></td>

                                    </tr>

                                </tbody>

                            </table>

                            <?php } ?>

                            <?php if ($histories) { ?>
							<br clear="all" />
                            <h2><?php echo $text_history; ?></h2>

                            <table class="list table-striped">

                                <thead>

                                    <tr>

                                        <td class="left" style="width:20%;">&nbsp; <?php echo $column_date_added; ?></td>

                                        <td class="left" style="width:40%;"><?php echo $column_status; ?></td>

                                        <td class="left" style="width:40%;"><?php echo $column_comment; ?></td>

                                    </tr>

                                </thead>

                                <tbody>

                                    <?php foreach ($histories as $history) { ?>

                                    <tr>

                                        <td class="left" style="width:20%;"><?php echo $history['date_added']; ?></td>

                                        <td class="left" style="width:40%;"><?php echo $history['status']; ?></td>

                                        <td class="left" style="width:40%;"><?php echo $history['comment']; ?></td>

                                    </tr>

                                    <?php } ?>

                                </tbody>

                            </table>

                            <?php } ?>



                            </div>

                        </div>



                        <?php echo $content_bottom; ?> 





                    </div>

                </div><!-- end form  -->



                <!-- Divider -->

                <div class="hr1" style="margin-bottom:30px;"></div>





            </div>









        </div>



    </div>     



</section>



<?php echo $footer; ?>