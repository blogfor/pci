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



                        <div class="page_content">

                            <p><?php echo $text_description; ?></p>
                            <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
                                <table class="form">
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_to_name; ?></td>
                                        <td><input type="text" name="to_name" value="<?php echo $to_name; ?>" />
                                            <?php if ($error_to_name) { ?>
                                            <span class="error"><?php echo $error_to_name; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_to_email; ?></td>
                                        <td><input type="text" name="to_email" value="<?php echo $to_email; ?>" />
                                            <?php if ($error_to_email) { ?>
                                            <span class="error"><?php echo $error_to_email; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_from_name; ?></td>
                                        <td><input type="text" name="from_name" value="<?php echo $from_name; ?>" />
                                            <?php if ($error_from_name) { ?>
                                            <span class="error"><?php echo $error_from_name; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_from_email; ?></td>
                                        <td><input type="text" name="from_email" value="<?php echo $from_email; ?>" />
                                            <?php if ($error_from_email) { ?>
                                            <span class="error"><?php echo $error_from_email; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_theme; ?></td>
                                        <td><?php foreach ($voucher_themes as $voucher_theme) { ?>
                                            <?php if ($voucher_theme['voucher_theme_id'] == $voucher_theme_id) { ?>
                                            <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" checked="checked" />
                                            <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
                                            <?php } else { ?>
                                            <input type="radio" name="voucher_theme_id" value="<?php echo $voucher_theme['voucher_theme_id']; ?>" id="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>" />
                                            <label for="voucher-<?php echo $voucher_theme['voucher_theme_id']; ?>"><?php echo $voucher_theme['name']; ?></label>
                                            <?php } ?>
                                            <br />
                                            <?php } ?>
                                            <?php if ($error_theme) { ?>
                                            <span class="error"><?php echo $error_theme; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                    <tr>
                                        <td><?php echo $entry_message; ?></td>
                                        <td><textarea name="message" cols="40" rows="5"><?php echo $message; ?></textarea></td>
                                    </tr>
                                    <tr>
                                        <td><span class="required">*</span> <?php echo $entry_amount; ?></td>
                                        <td><input type="text" name="amount" value="<?php echo $amount; ?>" size="5" />
                                            <?php if ($error_amount) { ?>
                                            <span class="error"><?php echo $error_amount; ?></span>
                                            <?php } ?></td>
                                    </tr>
                                </table>
                                <div class="buttons">
                                    <div class="right"><?php echo $text_agree; ?>
                                        <?php if ($agree) { ?>
                                        <input type="checkbox" name="agree" value="1" checked="checked" />
                                        <?php } else { ?>
                                        <input type="checkbox" name="agree" value="1" />
                                        <?php } ?>
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