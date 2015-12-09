/* custom selects */
(function($) {  
  $(function() {  
    $('.header_currency select, #navigation select').styler();
    $('.jq-selectbox__trigger').append('<i class="fa fa-angle-down"></i>');
  });
})(jQuery)


jQuery(function($){

  $('html').removeClass('no-js'); 

  $('ul.styles > li').click(function(){
      var className = $(this).attr('class');
      $('body').removeClass('theme-style-0 theme-style-1 theme-style-2 theme-style-3');
      $('body').addClass(className);
    });


  /* placeholder js */
  $('[placeholder]').each(function(){
    if ($(this).val() === '') {
      var hint = $(this).attr('placeholder');
      $(this).val(hint).addClass('hint');
    }
  });

  $('[placeholder]').focus(function() {
    if ($(this).val() === $(this).attr('placeholder')) {
      $(this).val('').removeClass('hint');
    }
  }).blur(function() {
    if ($(this).val() === '') {
      $(this).val($(this).attr('placeholder')).addClass('hint');
    }
  });                    


  /* form validation */
  $('input.error, textarea.error').focus(function() {
    $(this).removeClass('error');
  });

  $('form :submit').click(function() {
    $(this).parents('form').find('input.hint, textarea.hint').each(function() {
      $(this).val('').removeClass('hint');
    });
    return true;
  });

   
  /* form styles */  
  $('.address_table form, .customer_address form').addClass('form-horizontal');


  /* alerts */
  $('.template-customers-login, #create_customer').find('.errors').addClass('alert').addClass('alert-danger');


  /* megamenu desktop */
  $('.sf-menu').superfish({
      animation: { height: 'show' },
      speed: 'fast'
  });

  var ismobile = navigator.userAgent.match(/(iPhone)|(iPod)|(android)|(webOS)/i)
  if(ismobile || $(window).width() < 1024){
    $('.sf-menu').sftouchscreen();
  };

  var path = window.location.pathname.split('/');
  path = path[path.length-1];
  if (path !== undefined) {
    $("ul.sf-menu > li").children("a[href$='" + path + "']").parents('li').children('a').addClass('active');
  };


  /* megamenu mobile */
  $(document).ready(function(){
    $(".megamenu_mobile h2").click(function(){
      $(".submenu__1").slideToggle("slow");
      $(this).toggleClass("active");
    });

    $(".submenu__1 > li > a > i").click(function(){
      $(this).parent().parent().find(".submenu__2").slideToggle("slow");
      $(this).parent().toggleClass("active");
      return false;
    });

    $(".submenu__2 > li > a > i").click(function(){
      $(this).parent().parent().find(".submenu__3").slideToggle("slow");
      $(this).parent().toggleClass("active");
      return false;
    });

    $('.megamenu_mobile h2').on('click touchstart', function(e){
      e.stopPropagation();
    });

    $(document).on('click', function(){
      $(".submenu__1").slideUp("slow");
      $(".megamenu_mobile").find("h2").removeClass("active");
    });
  });


  /* stick menu */
  $(document).ready(function(){
    $('#megamenu').tmStickUp({});
  });


  /* scroll animation */
  $(document).ready(function(){
    if (device.desktop() && !($.browser.msie && $.browser.version == 8.0) && $(window).width() >= 1200) {
      $('head').append('<link href="//cdn.shopify.com/s/files/1/0691/3777/t/2/assets/animate.css?16601" rel="stylesheet" type="text/css"  media="all"  />');
      new WOW().init();
    };
  });


  /* product listing carousel */
  $('.homepage_carousel').bxSlider({
    infiniteLoop: true,
    hideControlOnEnd: true,
    minSlides: 4,
    maxSlides: 4,
    moveSlides: 1,
    slideWidth: 270,
    slideMargin: 0,
    pager: false,
    prevText: '',
    nextText: '',
  });


  /* main product listing image change */
  $(document).ready(function(){
    if (device.desktop()) {
      $(".product_listing_main .product_img a").hover(function(){
          $(this).find(".img__2").stop().animate({"opacity": 1});
      },function(){
          $(this).find(".img__2").stop().animate({"opacity": 0});
      });
    };
  });


  /* split words in headings */
  $.fn.splitWords = function(index) {
      return this.each(function() {
          var el = $(this),
              i, first, words = el.text().split(/\s/);
          if (typeof index === 'number') {
              i = (index > 0) ? index : words.length + index;
          }
          else {
              i = Math.floor(words.length / 2);
          }
          first = words.splice(0, i);
          el.empty().
              append(makeWrapElem(1, first)).
              append(makeWrapElem(2, words));
      });
  };
  function makeWrapElem(i, wordList) {
      return $('<span class="wrap-' + i + '">' + wordList.join(' ') + ' </span>');
  }

  $('.template-index .page_heading').splitWords(1);





});