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

                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <div class="content">
                                    <table class="form">
                                        <tr>
                                            <td><?php echo $entry_newsletter; ?></td>
                                            <td><?php if ($newsletter) { ?>
                                                <input type="radio" name="newsletter" value="1" checked="checked" />
                                                <?php echo $text_yes; ?>&nbsp;
                                                <input type="radio" name="newsletter" value="0" />
                                                <?php echo $text_no; ?>
                                                <?php } else { ?>
                                                <input type="radio" name="newsletter" value="1" />
                                                <?php echo $text_yes; ?>&nbsp;
                                                <input type="radio" name="newsletter" value="0" checked="checked" />
                                                <?php echo $text_no; ?>
                                                <?php } ?></td>
                                        </tr>
                                    </table>
                                </div>
                                <div class="buttons">
                                    <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
                                    <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="btn" /></div>
                                </div>
                            </form>


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