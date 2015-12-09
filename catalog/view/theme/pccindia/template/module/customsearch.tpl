<div class="panel panel-default">
  <div class="panel-heading">
      Price 
      <?php // print_r($_SESSION['price_search']); ?>
  </div>
  <div class="panel-body">
       
  <div onclick="get_search('price_range','1000-5000');">  </div>
  <div class="listingP">
  <ul class="customsearch">
      <li onclick="get_search(this,'price_range','1000-5000');" class="<?php if($_SESSION['price_search']=="1000-5000") echo "selected";?>"> Rs 1,000 - Rs 5,000. </li>
      <li onclick="get_search(this,'price_range','5000-10000');" class="<?php if($_SESSION['price_search']=="5000-10000") echo "selected";?>"> Rs 5,000 - Rs 10,000. </li>
      <li onclick="get_search(this,'price_range','10000-20000');" class="<?php if($_SESSION['price_search']=="10000-20000") echo "selected";?>"> Rs 10,000 - Rs 20,000. </li>
      <li onclick="get_search(this,'price_range','20000-30000');" class="<?php if($_SESSION['price_search']=="20000-30000") echo "selected";?>"> Rs 20,000 - Rs 30,000. </li>
      <li onclick="get_search(this,'price_range','GT:50000');" class="<?php if($_SESSION['price_search']=="GT:50000") echo "selected";?>"> Rs 50,000 and above. </li>    
      <li onclick="reset_search(this,'price_range','price_search');"> SEE ALL </li>      
  </ul>
  </div>

  </div>
</div>



<?php 
function curPageURL() {
    $pageURL = 'http';
    if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
    $pageURL .= "://";
    if ($_SERVER["SERVER_PORT"] != "80") {
     $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
    } else {
     $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
    }
    $pageURL=str_replace('product/category','product/categorysearch',$pageURL); 
    
    return $pageURL;
}

echo "<input id='search_url' type='hidden' value='".curPageURL()."'>";

function curResetPageURL() {
    $pageURL = 'http';
    if ($_SERVER["HTTPS"] == "on") {$pageURL .= "s";}
    $pageURL .= "://";
    if ($_SERVER["SERVER_PORT"] != "80") {
     $pageURL .= $_SERVER["SERVER_NAME"].":".$_SERVER["SERVER_PORT"].$_SERVER["REQUEST_URI"];
    } else {
     $pageURL .= $_SERVER["SERVER_NAME"].$_SERVER["REQUEST_URI"];
    }
    $pageURL=str_replace('product/category','product/categorysearchreset',$pageURL); 
    
    return $pageURL;
}

echo "<input id='search_reset_url' type='hidden' value='".curResetPageURL()."'>";
?>


<script>    
function lookup( name,arr ) {

    for(var i = 0, len = arr.length; i < len; i++) {
        alert(arr[i].key+name);
        if( arr[i].key == name )            
            return true;
    }
    return false;
}

function getCookie(cname) {
   var name = cname + "=";
    var ca = document.cookie.split(';');
    for(var i=0; i<ca.length; i++) {
        var c = ca[i];
        while (c.charAt(0)==' ') c = c.substring(1);
        if (c.indexOf(name) == 0) 
            return c.substring(name.length, c.length);
    }
    return null;  
}


function createCookie(cname, cvalue, exdays) {
    var d = new Date();
    d.setTime(d.getTime() + (exdays*24*60*60*1000));
    var expires = "expires="+d.toUTCString();
    document.cookie = cname + "=" + cvalue + "; " + expires;
}


function setCookie(key_index, key_value) { 
    alert(key_index);
    var search_arr = getCookie('pcc-search-cookie');
    var jsonArray = eval('(' + search_arr + ')');
    var arr_index=key_index;    
 
    if( !lookup( arr_index ,ck_array ) ) {        
      jsonArray.push({'price_search':key_value});  
    }
    else{      
       jsonArray[arr_index]=key_value;
    }
    var json_str = JSON.stringify(jsonArray);    
    createCookie('pcc-search-cookie', json_str);    
}


var search_arr = [];
search_arr.push({search_mode:'ON'});
var json_str = JSON.stringify(search_arr);

    var myCookie = getCookie("pcc-search-cookie");
    if (myCookie == null) {
       createCookie('pcc-search-cookie', json_str);
    }
    else {
        // do cookie exists stuff
        //alert(getCookie('pcc-search-cookie'));
    }

   
    function get_search(thisobj,search_key,search_value)
    { 
      $(".customsearch li").removeClass('selected');
      $(thisobj).addClass('selected');
      var loc = $("#search_url").val()+"&"+search_key+"="+search_value;
      $.ajax({          
      url:loc,  
      success:function(data) 
      {
         $("#main_content").html(data);
      }
      });

    }
    
    
    function reset_search(thisobj,search_key,session_key){
        
      $(".customsearch li").removeClass('selected');
      $(thisobj).addClass('selected');
      var loc = $("#search_reset_url").val()+"&search_key="+session_key;
     
      $.ajax({          
      url:loc,  
      success:function(data) 
      {
        var u= window.location.href;
        window.location.href=u;
      }
      });
        
    }
</script>


<script type="text/javascript"><!--
$('#button-filter').bind('click', function() {
	filter = [];
	
	$('.box-filter input[type=\'checkbox\']:checked').each(function(element) {
		filter.push(this.value);
	});
	
	location = '<?php echo $action; ?>&filter=' + filter.join(',');
});
//--></script> 

<style>
    .customsearch{
        list-style: none;
    }
    
    .customsearch li{
        line-height: 30px;
        cursor: pointer;
    }
    .customsearch li.selected{
        color: #AF2018;
    }
</style>
