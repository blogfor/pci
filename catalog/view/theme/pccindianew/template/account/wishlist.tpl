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

                            <?php if ($products) { ?>
                            <div class="wishlist-info table-responsive">
                                <table class="table table-striped">
                                    <thead>
                                        <tr>
                                            <td class="image"><?php echo $column_image; ?></td>
                                            <td class="name"><?php echo $column_name; ?></td>
                                            <td class="model"><?php echo $column_model; ?></td>
                                            <td class="stock"><?php echo $column_stock; ?></td>
                                            <td class="price"><?php echo $column_price; ?></td>
                                            <td class="action"><?php echo $column_action; ?></td>
                                        </tr>
                                    </thead>
                                    <?php foreach ($products as $product) { ?>
                                    <tbody id="wishlist-row<?php echo $product['product_id']; ?>">
                                        <tr>
                                            <td class="image"><?php if ($product['thumb']) { ?>
                                                <a href="<?php echo $product['href']; ?>"><img src="<?php echo $product['thumb']; ?>" alt="<?php echo $product['name']; ?>" title="<?php echo $product['name']; ?>" /></a>
                                                <?php } ?></td>
                                            <td class="name"><a href="<?php echo $product['href']; ?>"><?php echo $product['name']; ?></a></td>
                                            <td class="model"><?php echo $product['model']; ?></td>
                                            <td class="stock"><?php echo $product['stock']; ?></td>
                                            <td class="price"><?php if ($product['price']) { ?>
                                                <div class="price">
                                                    <?php if (!$product['special']) { ?>
                                                    <?php echo $product['price']; ?>
                                                    <?php } else { ?>
                                                    <s><?php echo $product['price']; ?></s> <b><?php echo $product['special']; ?></b>
                                                    <?php } ?>
                                                </div>
                                                <?php } ?></td>
                                            <td class="action"><img src="catalog/view/theme/default/image/cart-add.png" alt="<?php echo $button_cart; ?>" title="<?php echo $button_cart; ?>" onclick="addToCart('<?php echo $product['product_id']; ?>');" />&nbsp;&nbsp;<a href="<?php echo $product['remove']; ?>"><img src="catalog/view/theme/default/image/remove.png" alt="<?php echo $button_remove; ?>" title="<?php echo $button_remove; ?>" /></a></td>
                                        </tr>
                                    </tbody>
                                    <?php } ?>
                                </table>
                            </div>
                            <div class="buttons">
                                <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
                            </div>
                            <?php } else { ?>
                            <div class="content"><?php echo $text_empty; ?></div>
                            <div class="buttons">
                                <div class="right"><a href="<?php echo $continue; ?>" class="btn"><?php echo $button_continue; ?></a></div>
                            </div>
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