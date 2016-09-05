</div>
<div id="footer"><?php //echo $text_footer; ?></div>

			<a href="#" class="scrollup">Scroll up</a>
			
			<script type="text/javascript">
			jQuery("document").ready(function($){
				var nav = $('.heading');
    
				$(window).scroll(function () {
					if ($(this).scrollTop() > 139) {
						nav.addClass("fixed-heading");
					} else {
						nav.removeClass("fixed-heading");
					}
				});
				
				
				
				
				$(window).load(function() {
					$("#status").fadeOut();
					$("#preloader").delay(350).fadeOut("slow");
				})
				
				
				
				
				/* Scroll to Top */
				$(document).ready(function(){ 
					$(window).scroll(function(){
						if ($(this).scrollTop() > 400) {
							$('.scrollup').fadeIn();
						} else {
							$('.scrollup').fadeOut();
						}
					}); 
							
					$('.scrollup').click(function(){
					$("html, body").animate({ scrollTop: 0 }, 1200);
					return false;
					});
					
					/**/
					
					$("#link-to-statistics").click(function() {
						$('html, body').animate({
						scrollTop: $("#this-year").offset().top -200
						}, 1500);
					});
					
					
				});
				
			});
			</script>
			
</body></html>