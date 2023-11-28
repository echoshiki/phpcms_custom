<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>    <div class="bg-slate-900 py-12 text-center text-white text-sm leading-loose mt-5">
        <p>© <?php echo date('Y');?> <?php echo $sitelist['1']['company_cn'];?> All Rights Reserved.</p>
        <p>备案号：<a class="text-inherit" href="https://beian.miit.gov.cn/#/Integrated/index"><?php echo $sitelist['1']['icp'];?></a></p>
        <p>Mobile Verison Powered By <a class="text-inherit" href="https://www.yzypwl.com/" target="_blank">云铺网络</a></p>
    </div>

    <script type="text/javascript" src="<?php echo JS_PATH;?>jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo JS_PATH;?>swiper.min.js"></script>
    <script>

    var myBanner = new Swiper('#swiper-banner', {
        effect : 'fade',
        loop: true, 
        speed: 1500,
        parallax: true,
        autoplay: {
            delay: 3000,
        },
        pagination: {
            el: '.swiper-pagination',
            type: 'custom',
            renderCustom: function (swiper, current, total) {
                var style = 'inline-block h-1 w-3 mx-1';
                var html = '';
                for (i = 0; i < total; i++) {
                    if (i == (current - 1)) {
                        html += '<span class="' + style + ' bg-slate-200"></span>';
                    } else {
                        html += '<span class="' + style + ' bg-slate-800"></span>';;
                    }    
                }
                return html;
            }  
        },
        navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
        },
    });

    var myProduct = new Swiper('#swiper-product', {
        loop: true,
        speed: 1000,
        autoplay: {
            delay: 3000,
        },
        navigation: {
            nextEl: '.swiper-button-next',
            prevEl: '.swiper-button-prev',
        },
    });

    $(document).ready(function(){

        $('#open-menu').click(function() {
            $('#menu').animate({ left: '0' }, 500);
            $('#menu li a').animate({ opacity: 1 });
            $('#menu li div').animate({ width: '100%' });
        });

        $('#close-menu').click(function() {
            $('#menu').animate({ left: '-100%' }, 800);
            $('#menu li a').animate({ opacity: 0 });
            $('#menu li div').animate({ width: '0%' });
        });

    });

    </script>

</body>
</html>


