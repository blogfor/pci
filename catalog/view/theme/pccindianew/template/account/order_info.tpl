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



                        <div class="page_content">                

                            <table class="list">
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
                                            <?php } ?>
                                            <?php if ($shipping_method) { ?>
                                            <b><?php echo $text_shipping_method; ?></b> <?php echo $shipping_method; ?>
                                            <?php } ?></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="list">
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
                            <table class="list">
                                <thead>
                                    <tr>
                                        <td class="left"><?php echo $column_name; ?></td>
                                        <td class="left"><?php echo $column_model; ?></td>
                                        <td class="right"><?php echo $column_quantity; ?></td>
                                        <td class="right"><?php echo $column_price; ?></td>
                                        <td class="right"><?php echo $column_total; ?></td>
                                        <?php if ($products) { ?>
                                        <td style="width: 1px;"></td>
                                        <?php } ?>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php foreach ($products as $product) { ?>
                                    <tr>
                                        <td class="left"><?php echo $product['name']; ?>
                                            <?php foreach ($product['option'] as $option) { ?>
                                            <br />
                                            &nbsp;<small> - <?php echo $option['name']; ?>: <?php echo $option['value']; ?></small>
                                            <?php } ?></td>
                                        <td class="left"><?php echo $product['model']; ?></td>
                                        <td class="right"><?php echo $product['quantity']; ?></td>
                                        <td class="right"><?php echo $product['price']; ?></td>
                                        <td class="right"><?php echo $product['total']; ?></td>
                                        <td class="right"><a href="<?php echo $product['return']; ?>"><img src="catalog/view/theme/default/image/return.png" alt="<?php echo $button_return; ?>" title="<?php echo $button_return; ?>" /></a></td>
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
                                        <td class="right"><b><?php echo $total['title']; ?>:</b></td>
                                        <td class="right"><?php echo $total['text']; ?></td>
                                        <?php if ($products) { ?>
                                        <td></td>
                                        <?php } ?>
                                    </tr>
                                    <?php } ?>
                                </tfoot>
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
                                        <td class="left"><?php echo $column_date_added; ?></td>
                                        <td class="left"><?php echo $column_status; ?></td>
                                        <td class="left"><?php echo $column_comment; ?></td>
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