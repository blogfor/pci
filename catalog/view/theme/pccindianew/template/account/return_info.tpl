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
                                        <td class="left" colspan="2"><?php echo $text_return_detail; ?></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="left" style="width: 50%;"><b><?php echo $text_return_id; ?></b> #<?php echo $return_id; ?><br />
                                            <b><?php echo $text_date_added; ?></b> <?php echo $date_added; ?></td>
                                        <td class="left" style="width: 50%;"><b><?php echo $text_order_id; ?></b> #<?php echo $order_id; ?><br />
                                            <b><?php echo $text_date_ordered; ?></b> <?php echo $date_ordered; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                            <h2><?php echo $text_product; ?></h2>
                            <table class="list">
                                <thead>
                                    <tr>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_product; ?></td>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_model; ?></td>
                                        <td class="right" style="width: 33.3%;"><?php echo $column_quantity; ?></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="left"><?php echo $product; ?></td>
                                        <td class="left"><?php echo $model; ?></td>
                                        <td class="right"><?php echo $quantity; ?></td>
                                    </tr>
                                </tbody>
                            </table>
                            <table class="list">
                                <thead>
                                    <tr>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_reason; ?></td>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_opened; ?></td>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_action; ?></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <td class="left"><?php echo $reason; ?></td>
                                        <td class="left"><?php echo $opened; ?></td>
                                        <td class="left"><?php echo $action; ?></td>
                                    </tr>
                                </tbody>
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
                                        <td class="left" style="width: 33.3%;"><?php echo $column_date_added; ?></td>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_status; ?></td>
                                        <td class="left" style="width: 33.3%;"><?php echo $column_comment; ?></td>
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



