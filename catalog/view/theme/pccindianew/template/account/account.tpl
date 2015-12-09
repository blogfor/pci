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
                <!-- Start form  -->
                <div class="recent-projects">
                    <h4 class="title"><?php echo $heading_title; ?></h4>
                    <div  id="contact-form" class="contatct-form"><!--row-->


                        <div class="page_content">

                            <h2><?php echo $text_my_account; ?></h2>
                            <div class="content">
                                <ul>
                                    <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                                    <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                                    <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                                    <li><a href="<?php echo $wishlist; ?>"><?php echo $text_wishlist; ?></a></li>
                                </ul>
                            </div>
                            <h2><?php echo $text_my_orders; ?></h2>
                            <div class="content">
                                <ul>
                                    <li><a href="<?php echo $order; ?>"><?php echo $text_order; ?></a></li>
                                    <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                                    <?php if ($reward) { ?>
                                    <li><a href="<?php echo $reward; ?>"><?php echo $text_reward; ?></a></li>
                                    <?php } ?>
                                    <li><a href="<?php echo $return; ?>"><?php echo $text_return; ?></a></li>
                                    <li><a href="<?php echo $transaction; ?>"><?php echo $text_transaction; ?></a></li>
                                </ul>
                            </div>
                            <h2><?php echo $text_my_newsletter; ?></h2>
                            <div class="content">
                                <ul>
                                    <li><a href="<?php echo $newsletter; ?>"><?php echo $text_newsletter; ?></a></li>
                                </ul>
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