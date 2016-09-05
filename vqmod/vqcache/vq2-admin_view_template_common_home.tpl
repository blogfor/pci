<?php echo $header; ?>
<div id="content">
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>

			<div id="breadcrumb-plus">
			<span id="statistics"><a title="<?php echo $text_jump_to_statistics; ?>" id="link-to-statistics" href="<?php echo $home; ?>#this-year"><?php echo $text_menu_statistics; ?></a></span>
			<span id="calendar-date"><?php echo date("F j, Y"); ?></span>
			</div>
            
    <?php } ?>
  </div>
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
  <div class="box">
    <div class="heading">
      <h1><img src="view/image/flat-image/home.png" alt="" /><?php echo $heading_title; ?></h1>
			<p><?php echo $logged; ?></p>
			
    </div>

			<div id="overview-buttons">
			    <ul>
					<li id="orders"><?php echo $text_orders; ?> <span><?php echo $total_order; ?></span> <a href="<?php echo $link_to_sale; ?>"><?php echo $text_view; ?></a></li>
					<li id="sales-today"><?php echo $text_today_sale; ?><span><?php echo $total_sale_today; ?></span> <a href="<?php echo $link_to_sale; ?>&filter_date_added=<?php echo date("Y-m-d"); ?>"><?php echo $text_view; ?></a></li>
					<li id="sales-week"><?php echo $text_week_sale; ?><span><?php echo $total_sale_week; ?></span> <a href="<?php echo $link_to_sale; ?>"><?php echo $text_view; ?></a></li>
					<li id="sales-month"><?php echo $text_month_sale; ?><span><?php echo $total_sale_month; ?></span> <a href="<?php echo $link_to_sale; ?>"><?php echo $text_view; ?></a></li>
					<li id="sales"><?php echo $text_year_sale; ?> <span><?php echo $total_sale_year; ?></span> <a href="<?php echo $link_to_sale; ?>"><?php echo $text_view; ?></a></li>
					<li id="new-affiliates" <?php if ($total_affiliate_approval > 0) { echo "class='evidence'"; } ?>><?php echo $text_new_affiliates; ?> <span><?php echo $total_affiliate_approval; ?></span> <a href="<?php echo $link_to_affiliates; ?>&filter_approved=0"><?php echo $text_view; ?></a></li>
					<li id="new-reviews" <?php if ($total_review_approval > 0) { echo "class='evidence'"; } ?>><?php echo $text_new_reviews; ?> <span><?php echo $total_review_approval; ?></span> <a href="<?php echo $link_to_reviews; ?>&sort=r.status&order=ASC"><?php echo $text_view; ?></a></li>
					<li id="pending-orders" <?php if ($total_pending_order > 0) { echo "class='evidence'"; } ?>><?php echo $text_pending_orders; ?> <span><?php echo $total_pending_order; ?></span> <a href="<?php echo $link_to_sale; ?>&filter_order_status_id=1"><?php echo $text_view; ?></a></li>
					<li id="awaiting-customers" <?php if ($total_customer_approval > 0) { echo "class='evidence'"; } ?>><?php echo $text_awaiting_customers; ?> <span><?php echo $total_customer_approval; ?></span> <a href="<?php echo $link_to_customers; ?>&filter_approved=0"><?php echo $text_view; ?></a></li>
					<li id="customers"><?php echo $text_new_customers; ?> <span><?php echo $total_customer; ?></span> <a href="<?php echo $link_to_customers; ?>"><?php echo $text_view; ?></a></li>
				</ul>
			</div>
			
    <div class="content">
      






































      
			
			<div class="latest">
        <div class="dashboard-heading"><?php echo $text_latest_10_orders; ?></div>
        <div class="dashboard-content">
          <table class="list">
            <thead>
              <tr>
                <td class="right"><?php echo $column_order; ?></td>
                <td class="left"><?php echo $column_customer; ?></td>
                <td class="left"><?php echo $column_status; ?></td>
                <td class="left"><?php echo $column_date_added; ?></td>
                <td class="right"><?php echo $column_total; ?></td>
                <td class="right"><?php echo $column_action; ?></td>
              </tr>
            </thead>
            <tbody>
              <?php if ($orders) { ?>
              <?php foreach ($orders as $order) { ?>
              <tr>
                <td class="right"><?php echo $order['order_id']; ?></td>
                <td class="left"><?php echo $order['customer']; ?></td>
                <td class="left"><?php echo $order['status']; ?></td>
                <td class="left"><?php echo $order['date_added']; ?></td>
                <td class="right"><?php echo $order['total']; ?></td>
                <td class="right"><?php foreach ($order['action'] as $action) { ?>
                  <a class="action-link" href="<?php echo $action['href']; ?>"><?php echo $action['text']; ?></a>
                  <?php } ?></td>
              </tr>
              <?php } ?>
              <?php } else { ?>
              <tr>
                <td class="center" colspan="6"><?php echo $text_no_results; ?></td>
              </tr>
              <?php } ?>
            </tbody>
          </table>
        </div>
      </div>
			
			
			
			<div class="statistic" id="this-year">
        <div class="range"><?php echo $text_year; ?>
          <select id="range" onchange="getSalesChart(this.value)">
		  <option value="year"><?php echo $text_year; ?></option>
          </select>
        </div>
        <div class="dashboard-heading"><?php echo $text_statistics; ?>: <?php echo $text_year; ?></div>
        <div class="dashboard-content">
          <div id="report"></div>
        </div>
      </div>
	  
	  
	  
	  
	  <div class="statistic" id="day-statistic">
        <div class="range"><?php echo $text_day; ?>
          <select id="ranged" onchange="getSalesChart(this.value)">
		  <option value="day"><?php echo $text_day; ?></option>
          </select>
        </div>
        <div class="dashboard-heading"><?php echo $text_statistics; ?>: <?php echo $text_day; ?></div>
        <div class="dashboard-content">
          <div id="reportd"></div>
        </div>
      </div>
	  
	  
	  
	  
	  <div class="statistic" id="week-statistic">
        <div class="range"><?php echo $text_week; ?>
          <select id="rangew" onchange="getSalesChart(this.value)">
		  <option value="week"><?php echo $text_week; ?></option>
          </select>
        </div>
        <div class="dashboard-heading"><?php echo $text_statistics; ?>: <?php echo $text_week; ?></div>
        <div class="dashboard-content">
          <div id="reportw"></div>
        </div>
      </div>
	  

	   <div class="statistic" id="month-statistic">
        <div class="range"><?php echo $text_month; ?>
          <select id="rangem" onchange="getSalesChart(this.value)">
		  <option value="month"><?php echo $text_month; ?></option>
          </select>
        </div>
        <div class="dashboard-heading"><?php echo $text_statistics; ?>: <?php echo $text_month; ?></div>
        <div class="dashboard-content">
          <div id="reportm"></div>
        </div>
      </div>
	  
	  
	  
	  
			













      
			
			<div class="additional-statistics">
					<div class="dashboard-heading"><?php echo $bestsellers_title; ?></div>
					<div class="dashboard-content">
					<p><a href="<?php echo $report_product_purchased; ?>"><?php echo $text_view_all; ?></a></p>
						<div id="bestsellers"></div>

					<script type="text/javascript">
							$(document).ready(function(){
								var datab = [
                                <?php $bs = "0"; if (!empty ($sellers)) { foreach($sellers as $seller) { 
									$bs++;   
									if($bs <= "5") {
								?>
								["<?php echo $seller['name'] ?> <?php echo $seller['model']; ?><span class=\"additional\"><?php echo $seller['quantity']; if ($seller['quantity'] == "1" ){ echo $item; } else { echo $items; } ?> = <?php echo $seller['total'] ?></span>", <?php echo $seller['quantity'] ?>] <?php if($bs != "5") { ?>,<?php } ?>
										<?php } else { 
										break; 
										}
									}
								}
								?>
								];
							
									<?php if (!empty ($sellers)) { ?>
									var plot2 = $.jqplot ('bestsellers', [datab], 
									<?php } else { ?>
									var plot2 = $.jqplot ('bestsellers', [[null]],
									<?php } ?>
			  
									{ 
									
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
colors: ["#81a8d2", "#bb9d9c"],
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#058dc7", "#b99dc5", "#94a7b4", "#bdc197", "#a4c197", "#ed561b", "#9accc7", "#edef00", "#64e572"],
									}
								);

						});
						</script>

					</div>		
				</div>		
			
			<!-- -->
	
				<div class="additional-statistics" id="most-viewed-container">
					<div class="dashboard-heading"><?php echo $viewed_products_title; ?></div>
					<div class="dashboard-content">
					<p><a href="<?php echo $report_product_viewed; ?>"><?php echo $text_view_all; ?></a></p>
						<div id="most-viewed"></div>

						<script type="text/javascript">
							$(document).ready(function(){
								var data = [
								<?php $mv = "0"; if (!empty ($products)) { foreach ($products as $product) {
									$mv++;   
										if($mv <= "5") {
										?>
                                    ["<?php echo $product['name'] ?> <?php echo $product['model']; ?> <span class=\"additional\"><?php echo $product['viewed']; if ($product['viewed'] == "1" ){ echo $time; } else { echo $times; } ?></span>", <?php echo $product['viewed'] ?>]<?php if($mv != "5") { ?>,<?php } ?>
								<?php } else { 
										break; 
										}
									}
								}
								?>
								];
							
							
									<?php if (!empty ($products)) { ?>
									var plot1 = $.jqplot ('most-viewed', [data],  
									<?php } else { ?>
									var plot1 = $.jqplot ('most-viewed', [[null]], 
									<?php } ?>
							
									{ 
									
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
colors: ["#81a8d2", "#bb9d9c"],
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#058dc7", "#b99dc5", "#94a7b4", "#bdc197", "#a4c197", "#ed561b", "#9accc7", "#edef00", "#64e572"],
									}
								);

						});
						</script>
					</div>		
				</div>		

				<!-- -->
				
				<div class="additional-statistics">
					<div class="dashboard-heading"><?php echo $top_customers_title; ?></div>
					<div class="dashboard-content">
					<p><a href="<?php echo $report_customer_order; ?>"><?php echo $text_view_all; ?></a></p>
						<div id="topcustomers"></div>

						<script type="text/javascript">
							$(document).ready(function(){
								var datac = [
								<?php $bc = "0"; if (!empty ($customers)) { foreach($customers as $customer) {
									$bc++;   
									if($bc <= "5") {
									?>
                                    ["<?php echo $customer['customer'] ?> <span class=\"additional\"><?php echo $customer['orders']; if ($customer['orders'] == "1" ){ echo $number_order; } else { echo $number_orders; }?> = <?php echo $customer['total'] ?></span>", <?php echo $customer['orders']; ?>]<?php if($bc != "5") { ?>,<?php } ?>
									<?php } else { 
										break; 
										}
									}
								}
							
								?>
                           
								];
							
									<?php if (!empty ($customers)) { ?>
									var plot3 = $.jqplot ('topcustomers', [datac],   
									<?php } else { ?>
									var plot3 = $.jqplot ('topcustomers', [[null]], 
									<?php } ?>

									{ 
									
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
colors: ["#81a8d2", "#bb9d9c"],
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#058dc7", "#b99dc5", "#94a7b4", "#bdc197", "#a4c197", "#ed561b", "#9accc7", "#edef00", "#64e572"],
									}
								);

						});
						</script>
					</div>		
				</div>		
				
				<!-- -->
				
				<div class="additional-statistics" id="top-coupon">
					<div class="dashboard-heading"><?php echo $top_coupon_title; ?></div>
					<div class="dashboard-content">
					<p><a href="<?php echo $coupon ?>"><?php echo $text_view_all; ?></a></p>
					<link class="include" rel="stylesheet" type="text/css" href="view/stylesheet/pie/jquery.jqplot.min.css" />
						<div id="topcoupon"></div>

						<script type="text/javascript">
							$(document).ready(function(){
								var datar = [
								<?php $mr = "0"; if (!empty ($coupons)) { foreach($coupons as $coupon) {
									$mr++;
									if($mr <= "5") {
									?>
                                    ["<?php echo $coupon['name'] ?> <span class=\"additional\"><?php echo $coupon['orders']; if ($coupon['orders'] == "1" ){ echo $number_order; } else { echo $number_orders; }?> = <?php echo $coupon['total']; ?></span>", <?php echo $coupon['orders']; ?>]<?php if($mr != "5") { ?>,<?php } ?>
									<?php } else { 
										break; 
										}
									}
								}
								?>
                           
								];
							
									<?php if (!empty ($coupons)) { ?>
									var plot4 = $.jqplot ('topcoupon', [datar], 
									<?php } else { ?>
									var plot4 = $.jqplot ('topcoupon', [[null]], 
									<?php } ?>
									
			  
									{ 
									
									shadow: false,
									seriesDefaults: {
										renderer:$.jqplot.DonutRenderer,
										rendererOptions: {
											sliceMargin: 1,
											startAngle: -90,
											showDataLabels: true,
											shadowDepth: 0
											}
										}, 
										legend: { show:true, location: 'e', xoffset: 12, },
colors: ["#81a8d2", "#bb9d9c"],
										grid: { shadow: false, borderWidth: 0, background:'#ffffff' },
										seriesColors: [ "#058dc7", "#b99dc5", "#94a7b4", "#bdc197", "#a4c197", "#ed561b", "#9accc7", "#edef00", "#64e572"],
									}
								);
						});
						</script>
						<script class="include" type="text/javascript" src="view/javascript/pie/jquery.jqplot.min.js"></script>
						<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.pieRenderer.min.js"></script>
						<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.donutRenderer.min.js"></script>
						<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.highlighter.min.js"></script>
						<script class="include" language="javascript" type="text/javascript" src="view/javascript/pie/jqplot.dateAxisRenderer.min.js"></script>

					</div>		
				</div>		
			
			




































    </div>
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
					url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
					dataType: 'json',
					async: false,
					success: function(json) {
					
						var plot = $.plot("#report", [json.order, json.customer],
						{
							series: {
								lines: {
									show: true,
									fill: true,
									lineWidth: 1
								},
								points: {
									show: true
								}
							},
							colors: ["#81a8d2", "#bb9d9c"],
							grid: {
								borderWidth: 0,
								hoverable: true,
								clickable: true,
								backgroundColor: '#FFF'
							},	
							xaxis: {
								ticks: json.xaxis
							}
						});
						
						
						

						
						function showTooltip(x, y, contents) {
					$('<div id="tooltip">' + contents + '</div>').css({
						position: 'absolute',
						display: 'none',
						top: y - 25,
						left: x + 5,
						color: '#FFF',
						border: '1px solid #333',
						padding: '1px 5px',
						'background-color': '#666'
					}).appendTo("body").fadeIn(1000);
				}
	
			var previousPoint = null;
				$("#report").bind("plothover", function (event, pos, item) {
					if (item) {
						if (previousPoint != item.dataIndex) {
							previousPoint = item.dataIndex;

							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(0),
								y = item.datapoint[1].toFixed(0);

							showTooltip(item.pageX, item.pageY, y);
						}
					}
					else {
						$("#tooltip").fadeOut(800);
						previousPoint = null;
					}
				});	
			}
		});
	}

	getSalesChart($('#range').val());

	//--></script> 
	 




































			
			<script type="text/javascript"><!--
			function getSalesChart(range) {
				$.ajax({
					type: 'get',
					url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
					dataType: 'json',
					async: false,
					success: function(json) {
					
						var plot = $.plot("#reportd", [json.order, json.customer],
						{
							series: {
								lines: {
									show: true,
									fill: true,
									lineWidth: 1
								},
								points: {
									show: true
								}
							},
colors: ["#81a8d2", "#bb9d9c"],
							grid: {
								borderWidth: 0,
								hoverable: true,
								clickable: true,
								backgroundColor: '#FFF'
							},	
							xaxis: {
								ticks: json.xaxis
							}
						});
						
						
						function showTooltip(x, y, contents) {
							$('<div id="tooltip">' + contents + '</div>').css({
								position: 'absolute',
								display: 'none',
								top: y - 25,
								left: x + 5,
								color: '#FFF',
								border: '1px solid #333',
								padding: '1px 5px',
								'background-color': '#666'
							}).appendTo("body").fadeIn(1000);
						}
	

						var previousPoint = null;
							$("#reportd").bind("plothover", function (event, pos, item) {
								if (item) {
									if (previousPoint != item.dataIndex) {
										previousPoint = item.dataIndex;

										$("#tooltip").remove();
										var x = item.datapoint[0].toFixed(0),
											y = item.datapoint[1].toFixed(0);

										showTooltip(item.pageX, item.pageY, y);
									}
								}
								else {
									$("#tooltip").fadeOut(800);
									previousPoint = null;
								}
							});	
						}
					});
	
				}

			getSalesChart($('#ranged').val());

		//--></script> 


		<script type="text/javascript"><!--
		function getSalesChart(range) {
			$.ajax({
				type: 'get',
				url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
				dataType: 'json',
				async: false,
				success: function(json) {
				
					var plot = $.plot("#reportw", [json.order, json.customer],
					{
						series: {
							lines: {
								show: true,
								fill: true,
								lineWidth: 1
							},
							points: {
								show: true
							}
						},
colors: ["#81a8d2", "#bb9d9c"],
						grid: {
							borderWidth: 0,
							hoverable: true,
							clickable: true,
							backgroundColor: '#FFF'
						},	
						xaxis: {
							ticks: json.xaxis
						}
					});
					
					
					

					
					function showTooltip(x, y, contents) {
				$('<div id="tooltip">' + contents + '</div>').css({
					position: 'absolute',
					display: 'none',
					top: y - 25,
					left: x + 5,
					color: '#FFF',
					border: '1px solid #333',
					padding: '1px 5px',
					'background-color': '#666'
				}).appendTo("body").fadeIn(1000);
			}
	

			var previousPoint = null;
				$("#reportw").bind("plothover", function (event, pos, item) {
					if (item) {
						if (previousPoint != item.dataIndex) {
							previousPoint = item.dataIndex;

							$("#tooltip").remove();
							var x = item.datapoint[0].toFixed(0),
								y = item.datapoint[1].toFixed(0);

							showTooltip(item.pageX, item.pageY, y);
						}
					}
					else {
						$("#tooltip").fadeOut(800);
						previousPoint = null;
					}
					});	
				}
			});
		}

	getSalesChart($('#rangew').val());

	//--></script> 



	<script type="text/javascript"><!--
	function getSalesChart(range) {
		$.ajax({
			type: 'get',
			url: 'index.php?route=common/home/chart&token=<?php echo $token; ?>&range=' + range,
			dataType: 'json',
			async: false,
			success: function(json) {
			
				var plot = $.plot("#reportm", [json.order, json.customer],
				{
					series: {
						lines: {
							show: true,
							fill: true,
							lineWidth: 1
						},
						points: {
							show: true
						}
					},
colors: ["#81a8d2", "#bb9d9c"],
					grid: {
						borderWidth: 0,
						hoverable: true,
						clickable: true,
						backgroundColor: '#FFF'
					},	
					xaxis: {
						ticks: json.xaxis
					}
				});
				
			
				function showTooltip(x, y, contents) {
					$('<div id="tooltip">' + contents + '</div>').css({
						position: 'absolute',
						display: 'none',
						top: y - 25,
						left: x + 5,
						color: '#FFF',
						border: '1px solid #333',
						padding: '1px 5px',
						'background-color': '#666'
					}).appendTo("body").fadeIn(1000);
				}
	

				var previousPoint = null;
					$("#reportm").bind("plothover", function (event, pos, item) {
						if (item) {
							if (previousPoint != item.dataIndex) {
								previousPoint = item.dataIndex;

								$("#tooltip").remove();
								var x = item.datapoint[0].toFixed(0),
									y = item.datapoint[1].toFixed(0);

								showTooltip(item.pageX, item.pageY, y);
							}
						}
						else {
							$("#tooltip").fadeOut(800);
							previousPoint = null;
						}
					});	
				}
			});
		}

		getSalesChart($('#rangem').val());

		//--></script> 
		
<?php echo $footer; ?>