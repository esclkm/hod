$(document).ready(function () {

	$('form input[type="text"]').live("keypress", function (e) {
		/* ENTER PRESSED*/
		if (e.keyCode == 13) {
			/* FOCUS ELEMENT */
			var inputs = $(this).parents("form").eq(0).find(':input[type="text"]');
			var idx = inputs.index(this);

			if (idx == inputs.length - 1) {
				inputs[0].select()
			} else {
				inputs[idx + 1].focus(); //  handles submit buttons
				inputs[idx + 1].select();
			}
			return false;
		}
	});

	$(window).scroll(function () {
		if ($(this).scrollTop() != 0) {
			$('#toTop').show();
		} else {
			$('#toTop').hide();
		}
	});
	$('#toTop').click(function () {
		$('body,html').animate({scrollTop: 0}, 800);
		return false;
	});
	$('.toBottom').click(function () {
		$('body,html').animate({scrollTop: $(document).height()}, 800);
		return false;
	});
	
	$('input[name="rcb_phone"]').mask('+7 (000) 000-00-00');
});



$(window).load(function () {

	var $container = $('.maansorygal');
	// hide initial items
//  var $initialItems = $container.find('.item').hide();

	var $container = $container.masonry({
		itemSelector: '.grid-sizer',
		columnWidth: '.grid-sizer'
	});



});



$(document).ready(function () {
	$('.indexslider').slick({
		infinite: true,
		autoplay: true,
		arrows: true,
		autoplaySpeed: 5000,
		speed: 300,
		slidesToShow: 3,
		slidesToScroll: 1,
		responsive: [
			{
				breakpoint: 1000,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 800,
				settings: {
					slidesToShow: 2,
					slidesToScroll: 1
				}
			},
			{
				breakpoint: 480,
				settings: {
					slidesToShow: 1,
					slidesToScroll: 1
				}
			}
		]
	});
	$('.mainslider').slick({
		infinite: true,
		autoplay: true,
		arrows: false,
		autoplaySpeed: 4000,
		speed: 500,
		slidesToShow: 1,
		slidesToScroll: 1
	});
	$("a[href]").filter(function () {
		return /\.(jpg|jpeg|png|gif)$/i.test(this.href);
	}).attr("data-gallery", "gallery").addClass("fancybox");
	$(".fancybox").each(function (index, element) {
		var gal_title = $(this).find('img').attr('title');
		var gal_alt = $(this).find('img').attr('alt');
		var gal_id = 'lightGallery_id' + index;
		if (gal_title != undefined)
		{
			$(this).attr('data-sub-html', '#' + gal_id).before('<div id="' + gal_id + '" style="display:none"><h4>' + gal_alt + '</h4><p>' + gal_title + '</p></div>');
		}

		// console.log(index,index_title);
		//  $( this ).addClass( "foo" );
	});
	$('body').lightGallery({
		selector: '.fancybox',
		preload: 2,
		download: false,
		thumbnail: false,
		youtubePlayerParams: {
			modestbranding: 1,
			showinfo: 0,
			rel: 0
					//  controls: 0
		}
	});

	$('[name=pageform]').submit(function () {
		var x_form_count = $('[name=rpagetitle]').length;
		if (x_form_count > 0 && $('[name=rpagetitle]').val() == '')
		{
			alert("заполните поле Заголовок");
			return false;
		}
	});
});

var wow = new WOW(
  {
    boxClass:     'wow',      // animated element css class (default is wow)
    animateClass: 'animated', // animation css class (default is animated)
    offset:       0,          // distance to the element when triggering the animation (default is 0)
    mobile:       true,       // trigger animations on mobile devices (default is true)
    live:         true,       // act on asynchronously loaded content (default is true)
    scrollContainer: null // optional scroll container selector, otherwise use window
  }
);
wow.init();

$(window).scroll(function(){
  var sticky = $('.navbar'),
      scroll = $(window).scrollTop();

  if (scroll >= 100) sticky.addClass('navbar-scrolled');
  else sticky.removeClass('navbar-scrolled');
});

// картинки бэкграунда
$(function() {
	var backgrImages = [];
	$('.slider_images img').each(function(){
	  backgrImages.push({ src: $(this).attr('src')});
	});
    $('body.indexpage').vegas({
        slides: backgrImages,
		transition: 'blur',
		animation: 'random',
		transitionDuration: 4000,
		animationDuration: 6500,
		delay: 8000,
		timer: false
    });
	
	//анимация заголовка
	setInterval(function () {
		$('.indexpage h1').addClass('animated flash').one('webkitAnimationEnd mozAnimationEnd MSAnimationEnd oanimationend animationend', function(){$(this).removeClass('animated flash');});}, 5000
	);
	
	//$('.video_overlay').vide();
	
	// правильные переходы
	$('#nav').onePageNav({
		currentClass: 'active',
		changeHash: true,
		scrollSpeed: 750,
		scrollThreshold: 0.3,
		filter: ':not(.external)',
		easing: 'swing',
	});
	
	$('.video_overlay').vide({
		
		webm: 'themes/landing/video/video.webm', 
		mp4: 'themes/landing/video/video.mp4', 
		poster: 'themes/landing/video/video.jpg'
	  }, {
		muted: true,
		loop: true,
		autoplay: true,
		position: '50% 50%' // Similar to the CSS `background-position` property.
	  });

	  	//calling jPreLoader
	$('body.indexpage').jpreLoader({
		splashID: "#jSplash",
		loaderVPos: '70%',
		autoClose: true,
		closeBtnText: "",
		splashFunction: function() {  
			//passing Splash Screen script to jPreLoader
			$('#jSplash').children('section').not('.selected').hide();
			$('#jSplash').hide().fadeIn(800);

		}
	}, function() {	//callback function

		$('#footer')
		.animate({"bottom":0}, 500);
		$('#header')
		.animate({"top":0}, 800, function() {
			$('#wrapper').fadeIn(1000);
		});
	});
	  
	$('.sameh').matchHeight({
		byRow: true,
		property: 'height',
		target: null,
		remove: false
	});
	$('.sameh2').matchHeight({
		byRow: true,
		property: 'height',
		target: null,
		remove: false
	});
	$('.hiddenports_').click(function(){
		$('.hiddenports').slideDown('slow');
		$('.hiddenports_').hide();
		return false;
	});
});