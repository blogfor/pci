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
							<table class="order_list" style="width:100%">                            
                            <?php if ($orders) { ?>
                            <tr>
                            <td class="thead">&nbsp;<b><?php echo $text_order_id; ?></b> </td>
                            <td class="thead"><b><?php echo $text_status; ?></b> </td>
                            <td class="thead"><b><?php echo $text_date_added; ?></b> </td>
                            <td class="thead"><b><?php echo $text_products; ?></b> </td>
                            <td class="thead"><b><?php echo $text_customer; ?></b> </td>
                            <td class="thead"> <b><?php echo $text_total; ?></b>  </td>
                            <td class="thead"> <b> Action </b></td>
                            </tr>
                            <tbody>
                            <?php foreach ($orders as $order) { ?>
                            <tr>
                            <td class="tbody"> &nbsp;<?php echo $order['order_id']; ?></td>
                            <td class="tbody"><?php echo $order['status']; ?></td>
                            <td class="tbody"><?php echo $order['date_added']; ?> </td>
                            <td class="tbody"> <?php echo $order['products']; ?> </td>
                            <td class="tbody"><?php echo $order['name']; ?> </td>
                            <td class="tbody"><?php echo $order['total']; ?> </td>
                            <td class="tbody"><a href="<?php echo $order['href']; ?>"><img src="catalog/view/theme/default/image/info.png" alt="<?php echo $button_view; ?>" title="<?php echo $button_view; ?>" /></a>&nbsp;&nbsp;
                            <a href="<?php echo $order['reorder']; ?>"><img src="catalog/view/theme/default/image/reorder.png" alt="<?php echo $button_reorder; ?>" title="<?php echo $button_reorder; ?>" /></a> </td>
                            </tr>
                            <?php } ?>
                            </tbody>
                            </table>
                            
                            <div class="pagination"><?php echo $pagination; ?></div>
                            
                            <?php } else { ?>
                            <div class="content"><?php echo $text_empty; ?></div>
                            <?php } ?>
                            <div class="buttons">
                                <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
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