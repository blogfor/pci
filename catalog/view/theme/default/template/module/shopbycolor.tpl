<div class="box">
  <div class="box-heading"><?php echo $heading_title; ?></div>
  <div class="box-content" style="text-align: center;">

    <div class="sbc">
      <?php foreach ( $colors as $key => $link ) { 
      /* 
      0: rgb color (background)
      1: name (title)
      2: search (href)
      */ 
      ?>
      <a href="index.php?route=product/search&amp;search=<?php echo $link[2].$link_cat; ?>" title="<?php echo $link[1]; ?>" style="background:<?php echo $link[0]; ?>; "></a>
      <?php } // foreach ?>
    	<div class="sbc_clear"></div>
    </div>

  </div>
</div>