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
            <div class="col-lg-12 col-md-12 col-sm-12" style="min-height:300px;">
                
                <!-- Start form  -->
                <div class="recent-projects">
                    <h4 class="title"><?php echo $heading_title; ?></h4>
                    <div  id="contact-form" class="contatct-form"><!--row-->



                        <div class="page_content">

                            <?php echo $text_message; ?>
                            <p style="font-weight:bold;font-size:12px;line-height:18px;">Keep handy your address & ID proof at the time of delivery for verification</p>
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
<script>
	$(document).ready(function(){
	
		BootstrapDialog.show({
                                title: 'Payment Successful',
                                message: 'Your payment successful. Keep handy your address & ID proof at the time of delivery for verification',
                                buttons: [{
                                    id: 'btn-ok',   
                                    label: 'OK',
                                    cssClass: 'btn-primary', 
                                    autospin: false,
                                    action: function(dialogRef){    
                                        dialogRef.close();
                                    }
                                }]
                            });	
	});
</script>

<?php echo $footer; ?>