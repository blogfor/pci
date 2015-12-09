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

                            <p><?php echo $text_total; ?><b> <?php echo $total; ?></b>.</p>
                            <table class="list">
                                <thead>
                                    <tr>
                                        <td class="left" style="width: 20%;"><?php echo $column_date_added; ?></td>
                                        <td class="left" style="width: 60%;"><?php echo $column_description; ?></td>
                                        <td class="right" style="width: 20%;"><?php echo $column_amount; ?></td>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php if ($transactions) { ?>
                                    <?php foreach ($transactions  as $transaction) { ?>
                                    <tr>
                                        <td class="left"  style="width: 20%;"><?php echo $transaction['date_added']; ?></td>
                                        <td class="left"  style="width: 60%;"><?php echo $transaction['description']; ?></td>
                                        <td class="right"  style="width: 20%;"><?php echo $transaction['amount']; ?></td>
                                    </tr>
                                    <?php } ?>
                                    <?php } else { ?>
                                    <tr>
                                        <td class="center" colspan="5"><?php echo $text_empty; ?></td>
                                    </tr>
                                    <?php } ?>
                                </tbody>
                            </table>
                            <div class="pagination"><?php echo $pagination; ?></div>
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