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
                <?php if ($error_warning) { ?>
                <div class="warning"><?php echo $error_warning; ?></div>
                <?php } ?>
                <!-- Start form  -->
                <div class="recent-projects">
                    <h4 class="title"><?php echo $heading_title; ?></h4>
                    <div  id="contact-form" class="contatct-form"><!--row-->



                        <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                            <p><?php echo $text_email; ?></p>
                            <h2><?php echo $text_your_email; ?></h2>
                            <div class="content">
                                <table class="form">
                                    <tr>
                                        <td><?php echo $entry_email; ?></td>
                                        <td><input type="text" name="email" value="" /></td>
                                    </tr>
                                </table>
                            </div>
                            <div class="buttons">
                                <div class="left"><a href="<?php echo $back; ?>" class="btn"><?php echo $button_back; ?></a></div>
                                <div class="right">
                                    <input type="submit" value="<?php echo $button_continue; ?>" class="btn" />
                                </div>
                            </div>
                        </form>

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