<?php echo $header; ?>
<?php if ($success) { ?>
<div class="success"><?php echo $success; ?></div>
<?php } ?>
<?php if ($error_warning) { ?>
<div class="warning"><?php echo $error_warning; ?></div>
<?php } ?>

<div id="main" role="main">
<div class="container"> <?php echo $content_top; ?>
  <ul class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <li><a href="<?php echo $breadcrumb['href']; ?>"><span class="page-title"><?php echo $breadcrumb['text']; ?></span></a></li>
    <?php } ?>
  </ul>
  <div class="row sidebar_left ">
    <div class="column_center">
      <div id="main_content" class="col-sm-9">
        <div class="collection-scope">
          <div class="page_header">
            <h1 class="page_heading"><?php echo $heading_title; ?></h1>
          </div>
          <div class="page_content">                
              
                <?php if ($products) { ?>
                 <div class="wishlist-info">
                   <table>
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
          <?php echo $content_bottom; ?> </div>
      </div>
    </div>
    <?php echo $column_left; ?> 
  </div>
</div>

</div>
<?php echo $footer; ?>