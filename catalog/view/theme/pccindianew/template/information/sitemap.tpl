<?php echo $header; ?>
<div class="hr1 margin-top"><!-- Divider --></div>

<style>
.sitemap-ul{
}

.sitemap-ul li ul{
	padding-left:15px;
	
}
</style>




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
                
            <div class="sitemap-info">
            <div class="col-lg-6 col-md-6 col-sm-6">
            	<ul class="sitemap-ul">
                <?php foreach ($categories as $category_1) { ?>
                <li><a href="<?php echo $category_1['href']; ?>"><?php echo $category_1['name']; ?></a>
                  <?php if ($category_1['children']) { ?>
                  <ul>
                    <?php foreach ($category_1['children'] as $category_2) { ?>
                    <li><a href="<?php echo $category_2['href']; ?>"><?php echo $category_2['name']; ?></a>
                      <?php if ($category_2['children']) { ?>
                      <ul>
                        <?php foreach ($category_2['children'] as $category_3) { ?>
                        <li><a href="<?php echo $category_3['href']; ?>"><?php echo $category_3['name']; ?></a></li>
                        <?php } ?>
                      </ul>
                      <?php } ?>
                    </li>
                    <?php } ?>
                  </ul>
                  <?php } ?>
                </li>
                <?php } ?>
              </ul>
            </div>
            <div class="class="col-lg-6 col-md-6 col-sm-6"">
            	<ul>
                <li><a href="<?php echo $special; ?>"><?php echo $text_special; ?></a></li>
                <li><a href="<?php echo $account; ?>"><?php echo $text_account; ?></a>
                  <ul>
                    <li><a href="<?php echo $edit; ?>"><?php echo $text_edit; ?></a></li>
                    <li><a href="<?php echo $password; ?>"><?php echo $text_password; ?></a></li>
                    <li><a href="<?php echo $address; ?>"><?php echo $text_address; ?></a></li>
                    <li><a href="<?php echo $history; ?>"><?php echo $text_history; ?></a></li>
                    <li><a href="<?php echo $download; ?>"><?php echo $text_download; ?></a></li>
                  </ul>
                </li>
                <li><a href="<?php echo $cart; ?>"><?php echo $text_cart; ?></a></li>
                <li><a href="<?php echo $checkout; ?>"><?php echo $text_checkout; ?></a></li>
                <li><a href="<?php echo $search; ?>"><?php echo $text_search; ?></a></li>
                <li><?php echo $text_information; ?>
                  <ul>
                    <?php foreach ($informations as $information) { ?>
                    <li><a href="<?php echo $information['href']; ?>"><?php echo $information['title']; ?></a></li>
                    <?php } ?>
                    <li><a href="<?php echo $contact; ?>"><?php echo $text_contact; ?></a></li>
                  </ul>
                </li>
              </ul>
            </div>
            </div>
            
            <!-- Divider -->
            <div class="hr1" style="margin-bottom:30px;"></div>

            </div>
        </div>
    </div>
</section>
<?php echo $footer; ?>