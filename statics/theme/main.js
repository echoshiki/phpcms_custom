// var wow = new WOW({
//     boxClass: 'wow',
//     animateClass: 'animated',
//     offset: 300,
//     live: true,
//     mobile: true
// });
// wow.init();

layui.use(['layer'], function(){
    var layer = layui.layer;
    layer.photos({
        photos: '.layer-photos',
        anim: 5
    });
});

var myProduct = new Swiper('#swiper-product', {
    effect : 'slide',
    loop: true, 
    speed: 800,
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
});

var myBanner = new Swiper('#swiper-banner', {
    effect : 'slide',
    loop: true, 
    speed: 800,
    parallax: true,
    autoplay: {
        delay: 3000,
    },
    pagination: {
      el: '.swiper-pagination',
    },
    navigation: {
      nextEl: '.swiper-button-next',
      prevEl: '.swiper-button-prev',
    },
});

var myPhoto = new Swiper('#swiper-photo', {
    loop: true, 
    speed: 1200,
    slidesPerView: 6,
    spaceBetween: 10,
    centeredSlides : true,
	watchSlidesProgress : true,
    on: {
	    setTranslate: function(){
			slides = this.slides
			for(i=0; i< slides.length; i++) {
				slide = slides.eq(i)
				progress = slides[i].progress
                slide.css({'opacity': '','background': ''});
                slide.transform('');//清除样式
                slide.transform('scale('+(1 - Math.abs(progress)/8)+')'); 	
            }	
		},
		setTransition: function(transition) {
			for (var i = 0; i < this.slides.length; i++) {
				var slide = this.slides.eq(i)
				slide.transition(transition);
			}
		},
    },
    autoplay: {
        delay: 2000,
    }
});