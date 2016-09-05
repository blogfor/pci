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

                            <h2><?php echo $text_address_book; ?></h2>
                            <?php foreach ($addresses as $result) { ?>
                            <div class="content address-row">
                                <table style="width: 100%;">
                                    <tr>
                                        <td><?php echo $result['address']; ?></td>
                                        <td style="text-align: right;"><a href="<?php echo $result['update']; ?>" class="btn"><?php echo $button_edit; ?></a> &nbsp; <a href="<?php echo $result['delete']; ?>" class="btn"><?php echo $button_delete; ?></a></td>
                                    </tr>
                                </table>
                            </div>
                            <?php } ?>
                            <div class="hr1" style="margin-bottom:30px;"></div>
                            <div class="buttons">
                                <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
                                <div class="right"><a href="<?php echo $insert; ?>" class="btn"><?php echo $button_new_address; ?></a></div>
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