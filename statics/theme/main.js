var wow = new WOW({
    boxClass: 'wow',
    animateClass: 'animated',
    offset: 300,
    live: true,
    mobile: true
});
// 初始化
wow.init();

var myBanner = new Swiper('#swiper-banner', {
    effect : 'slide',
    loop: true, 
    speed: 800,
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

layui.use(['element','layer'], function(){
    var element = layui.element;
    var layer = layui.layer;
    $('#ask').click(function(){
        layer.open({
              type: 2,
              title: '立即询价',
              shadeClose: true,
              shade: 0.8,
              area: ['500px','360px'],
              content: 'index.php?m=formguide&c=index&a=show&formid=16' //iframe的url
        });  
    });
});
