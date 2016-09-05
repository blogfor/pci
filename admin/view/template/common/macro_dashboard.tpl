<?php echo $header; ?>
<div id="content">
  <?php if ($error_install) { ?>
  <div class="warning"><?php echo $error_install; ?></div>
  <?php } ?>
  <?php if ($error_image) { ?>
  <div class="warning"><?php echo $error_image; ?></div>
  <?php } ?>
  <?php if ($error_image_cache) { ?>
  <div class="warning"><?php echo $error_image_cache; ?></div>
  <?php } ?>
  <?php if ($error_cache) { ?>
  <div class="warning"><?php echo $error_cache; ?></div>
  <?php } ?>
  <?php if ($error_download) { ?>
  <div class="warning"><?php echo $error_download; ?></div>
  <?php } ?>
  <?php if ($error_logs) { ?>
  <div class="warning"><?php echo $error_logs; ?></div>
  <?php } ?>
  
  
  <div class="dashboard-wrapper">
	<div class="dashboard-title">
    	<h2><?php echo $heading_title; ?></h2>
        <?php if($stores) { ?>
         <form name="thisForm" id="thisForm" method="post" action="">
        <div class="dash-select-store">
        	<?php echo $text_select_a_store; ?>
            <select name="macro_dashboard_store" id="macro_dashboard_store" onChange="this.form.submit();">
            	<option value="">All</option>
                <option value="<?php echo $config_store_id; ?>" <?php if ($macro_dashboard_store!='' && $config_store_id == $macro_dashboard_store) { ?> selected="selected" <?php } ?>><?php echo $config_store; ?></option>
                <?php foreach ($stores as $store) { ?>
                    <?php if ($store['store_id'] == $macro_dashboard_store) { ?>
                    <option value="<?php echo $store['store_id']; ?>" selected="selected"><?php echo $store['name']; ?></option>
                    <?php } else { ?>
                    <option value="<?php echo $store['store_id']; ?>"><?php echo $store['name']; ?></option>
                    <?php } ?>
                  </div>
                <?php } ?>
            </select>
        </div>
        </form>
        <?php } ?>
    </div>
    <div class="dashboard-main">
    	<div class="dash-2column-col1">
        	<h3><?php echo $text_sales; ?></h3>
            <div class="dash-data"><span><?php echo $total_sale; ?></span> <?php echo $text_total_sales; ?></div>
            <div class="dash-data"><span><?php echo $total_sale_year; ?></span> <?php echo $text_this_year; ?></div>
            <div class="dash-data"><span><?php echo $total_sale_month; ?></span> <?php echo $text_this_month; ?></div>
            <div class="dash-data"><span><?php echo $total_sale_today; ?></span> <?php echo $text_today; ?></div>
            <div class="clear"></div>
        </div>
        <div class="dash-2column-col2">
        	<h3><?php echo $text_statistics; ?></h3>
            <div class="dash-data"><span><?php echo $total_pending_order; ?> / <?php echo $total_order; ?></span> <?php echo $text_orders; ?></div>
            <div class="dash-data"><span><?php echo $total_customer_approval; ?> / <?php echo $total_customer; ?></span> <?php echo $text_customer; ?></div>
            <div class="dash-data"><span><?php echo $total_pending_review; ?> / <?php echo $total_review; ?></span> <?php echo $text_reviews; ?></div>
            <div class="dash-data"><span><?php echo $total_affiliate_approval; ?> / <?php echo $total_affiliate; ?></span> <?php echo $text_affiliates; ?></div>
            <div class="clear"></div>
        </div>
        <div class="clear xtramargin"></div>
        <div class="dash-2column-col1">
        	<h3><?php echo $text_sales_chart; ?></h3>
            <!-- Sales chart code -->
            <div class="statistic">
                <div class="range"><?php echo $entry_range; ?>
                  <select id="range" onChange="getSalesChart(this.value);">
                    <option value="day"><?php echo $text_day; ?></option>
                    <option value="week"><?php echo $text_week; ?></option>
                    <option value="month"><?php echo $text_month; ?></option>
                    <option value="year"><?php echo $text_year; ?></option>
                  </select>
                </div>
                <div class="dashboard-heading"><?php echo $text_statistics; ?></div>
                <div class="dashboard-content">
                  <div id="report" style="width: 100%; height: 170px; margin: auto;"></div>
                </div>
            </div>
        </div>
        <div class="dash-2column-col2">
        	<h3><?php echo $text_last_orders; ?></h3>
            <table class="dash-table">
            	<tr>
                	<th><?php echo $text_order_id; ?></th>
                    <th><?php echo $text_customer; ?></th>
                    <th><?php echo $text_status; ?></th>
                    <th><?php echo $text_order_date; ?></th>
                    <th><?php echo $text_total; ?></th>
                </tr>
                <?php if ($orders) { ?>
                    <?php foreach ($orders as $order) { ?>
                        <tr>
                            <td>
                            <?php foreach ($order['action'] as $action) { ?>
                                <?php if($action['text'] == "View") {?>
                                    <a href="<?php echo $action['href']; ?>">
                                <?php } ?>
                            <?php } ?>
                            <?php echo $order['order_id']; ?></a></td>
                            <td><?php echo $order['customer']; ?></td>
                            <td><?php echo $order['status']; ?></td>
                            <td><?php echo $order['date_added']; ?></td>
                            <td><?php echo $order['total']; ?></td>
                        </tr>
                    <?php } ?>
                <?php } else { ?>
                    <tr>
                        <td class="noresults" colspan="5"><?php echo $text_no_results; ?></td>
                    </tr>
                <?php } ?>
            </table>
        </div>
        <div class="clear xtramargin"></div>
        <div class="dash-2column-col1">
        	<h3><?php echo $text_best_sellers; ?></h3>
            <!-- Pie Chart Code -->
            <?php if ($sellers) { ?>
            <link class="include" rel="stylesheet" type="text/css" href="view/stylesheet/pie/jquery.jqplot.min.css" />
            <div id="chart1" style="height:300px; width:100%;"></div>
            <script type="text/javascript">
            $(document).ready(function(){
              var data = [
              <?php $i = 1; ?>
                                <?php foreach($sellers as $seller) { ?>
                                    ["<?php echo $seller['name'] ?>", <?php echo $seller['quantity'] ?>]<?php if($i != count($sellers)) { ?>,<?php } ?>
                                    <?php $i++; ?>
                                <?php } ?>
              ];
              var plot1 = jQuery.jqplot ('chart1', [data], 
                { 
				  shadow: false,
                  seriesDefaults: {
                    // Make this a pie chart.
                    renderer: jQuery.jqplot.PieRenderer, 
					fillAndStroke: true,
					showLine: true,
					color: '#ffffff',
                    rendererOptions: {
                      // Put data labels on the pie slices.
                      // By default, labels show the percentage of the slice.
                      showDataLabels: true,  sliceMargin: 1, shadowDepth: 0
                    }
                  }, 
                  legend: { show:true, location: 'e', xoffset: 12, },
				  grid: { drawGridLines: true,gridLineColor: '#cccccc', shadow: false, borderWidth: 0, background:'#ffffff' },
				  seriesColors: [ "#058dc7", "#50b432", "#ed561b", "#24cbe5", "#edef00", "#64e572"],
                }
              );
            });
            </script>
            <script class="include" type="text/javascript" src="view/javascript/pie/jquery.jqplot.min.js"></script>
            <script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.pieRenderer.min.js"></script>
            <?php } else { ?>
                <div class="chartnoresults"><?php echo $text_no_results; ?></div>
            <?php } ?>
        </div>
        <div class="dash-2column-col2">
        	<h3><?php echo $text_category_inventory; ?></h3>
            <div class="dash-data-3"><span><?php echo $total_categories; ?></span> <?php echo $text_total_categories; ?></div>
            <div class="dash-data-3"><span><?php echo $active_categories; ?></span> <?php echo $text_active_categories; ?></div>
            <div class="dash-data-3"><span><?php echo $total_products; ?></span> <?php echo $text_total_products; ?></div>
            <div class="dash-data-3"><span><?php echo $active_products; ?></span> <?php echo $text_active_products; ?></div>
            <div class="dash-data-3"><span><?php echo $in_stock; ?></span> <?php echo $text_in_stock; ?></div>
            <div class="dash-data-3 outofstock"><span><?php echo $out_of_stock; ?></span> <?php echo $text_out_of_stock; ?></div>
            <div class="dash-data-3"><span><?php echo $downloadable; ?></span> <?php echo $text_downloadable; ?></div>
            <div class="clear"></div>
        </div>
    </div>
    <div class="clear"></div>
</div>

</div>
<!--[if IE]>
<script type="text/javascript" src="view/javascript/jquery/flot/excanvas.js"></script>
<![endif]--> 
<script type="text/javascript" src="view/javascript/jquery/flot/jquery.flot.js"></script> 
<script type="text/javascript"><!--
function getSalesChart(range) {
	$.ajax({
		type: 'get',
		url: 'index.php?route=common/macro_dashboard/chart&token=<?php echo $token; ?>&store_id=<?php echo $macro_dashboard_store; ?>&range=' + range,
		dataType: 'json',
		async: false,
		success: function(json) {
			var option = {	
				shadowSize: 0,
				lines: { 
					show: true,
					fill: true,
					lineWidth: 1
				},
				grid: {
					backgroundColor: '#FFFFFF'
				},	
				xaxis: {
            		ticks: json.xaxis
				}
			}

			$.plot($('#report'), [json.order, json.customer], option);
		}
	});
}

getSalesChart($('#range').val());
//--></script> 
<?php echo $footer; ?>