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

                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <h2><?php echo $text_your_details; ?></h2>
                                <div class="content">
                                    <table class="form">
                                        <tr>
                                            <td><span class="required">*</span> <?php echo $entry_firstname; ?></td>
                                            <td><input type="text" name="firstname" value="<?php echo $firstname; ?>" />
                                                <?php if ($error_firstname) { ?>
                                                <span class="error"><?php echo $error_firstname; ?></span>
                                                <?php } ?></td>
                                        </tr>
                                        <tr>
                                            <td><span class="required">*</span> <?php echo $entry_lastname; ?></td>
                                            <td><input type="text" name="lastname" value="<?php echo $lastname; ?>" />
                                                <?php if ($error_lastname) { ?>
                                                <span class="error"><?php echo $error_lastname; ?></span>
                                                <?php } ?></td>
                                        </tr>
                                        <tr>
                                            <td><span class="required">*</span> <?php echo $entry_email; ?></td>
                                            <td><input type="text" name="email" value="<?php echo $email; ?>" />
                                                <?php if ($error_email) { ?>
                                                <span class="error"><?php echo $error_email; ?></span>
                                                <?php } ?></td>
                                        </tr>
                                        <tr>
                                            <td><span class="required">*</span> <?php echo $entry_telephone; ?></td>
                                            <td><input type="text" name="telephone" value="<?php echo $telephone; ?>" />
                                                <?php if ($error_telephone) { ?>
                                                <span class="error"><?php echo $error_telephone; ?></span>
                                                <?php } ?></td>
                                        </tr>
                                        <tr>
                                            <td><?php echo $entry_fax; ?></td>
                                            <td><input type="text" name="fax" value="<?php echo $fax; ?>" /></td>
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