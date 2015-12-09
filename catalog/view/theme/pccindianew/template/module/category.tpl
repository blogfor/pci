<div class="panel-group" id="accordion">
      <?php //echo "<pre>"; print_r($all_categories);  ?>
  <!--<h3 class="widget_header"><?php echo $heading_title; ?></h3>-->

      <?php foreach ($categories as $category) { ?>
       <div class="panel panel-default">
          <div class="panel-heading">
        <?php if ($category['category_id'] == $category_id) { ?>
        <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne"><?php echo $category['name']; ?></a> </h4>
       
        <?php } else { ?>
        <h4 class="panel-title"> <a data-toggle="collapse" data-parent="#accordion" href="#collapseOne" class="collapsed">
        <?php echo $category['name']; ?>
        </a> 
        </h4>
        <?php } ?>
         </div>
           
        <?php if ($category['children']) { ?>
        <div id="collapseOne" class="panel-collapse collapse in">
             <ul class="list-group">
          <?php foreach ($category['children'] as $child) { ?>
          <li class="list-group-item">
             
            <?php if ($child['category_id'] == $child_id) { ?>
            <a href="<?php echo $child['href']; ?>" class="active"> - <?php echo $child['name']; ?></a>
            <?php } else { ?>
            <a href="<?php echo $child['href']; ?>"> - <?php echo $child['name']; ?>
            
            
                            <?php  
                            //SUB SUB CHILD DISPLAY
                             foreach ($all_categories as $child_category) { 
                                if($child_category['parent_id']==$child['category_id']){
                                $sub_cat_found=1;
                                break;
                                }
                             }
                             
                             if($sub_cat_found==1){ ?>
                             <div id="collapseOne" class="panel-collapse collapse in">
                                 <ul class="list-group">
                                 <?php foreach ($all_categories as $child_category) { 
                                     if($child_category['parent_id']==$child['category_id']){
                                     ?>                                  
                                        <li class="list-group-item">
                                        <a href="<?php echo $child_category['href']; ?>" class="active"> - <?php echo $child_category['name']; ?></a>                                   
                                        </li>
                                     <?php  
                                     }   
                                 }
                                 ?>
                                </ul>
                                </div>
                            <?php } ?>
                          
            
            
            </a>
            <?php } ?>
          </li>
          <?php } ?>
        </ul>
             </div>
        <?php } ?>
      </div>
      <?php } ?>
   
</div>