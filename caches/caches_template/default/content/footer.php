<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>    <div class="mod footer">
        <div class="rom">
            <div class="box qrcode left">
                <div class="footer-tt">
                    <div class="tt">QRCODE</div>
                    <div class="line"></div>
                </div>
                <div class="info">
                    <div class="item">
                        <img src="<?php echo $CATEGORYS['24']['image'];?>" alt="扫一扫" />
                        <p>微信二维码</p>
                    </div>
                    <div class="clear"></div>
                </div>  
            </div>
            <div class="box contact-footer left">
                <div class="footer-tt">
                    <div class="tt">CONTACT</div>
                    <div class="line"></div>
                </div>
                <div class="info">
                    <h2><?php echo $sitelist['1']['company_cn'];?></h2>
                    <p>地址：<?php echo $sitelist['1']['address'];?></p>
                    <p>邮箱：<?php echo $sitelist['1']['email'];?></p>
                    <p>网址：<?php echo $sitelist['1']['domain'];?></p>
                </div>
            </div>
            <div class="box service-footer left">
                <div class="footer-tt">
                    <div class="tt">SERVICE</div>
                    <div class="line"></div>
                </div>
                <div class="info">
                    <div class="icon left"><svg t="1584373137837" class="icon" viewBox="0 0 1026 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7976" width="60" height="60"><path d="M704.512 387.072q21.504 25.6 46.08 52.224 20.48 23.552 45.568 52.224t51.712 58.368q33.792 38.912 55.808 69.632t34.816 56.32 17.408 47.104 4.608 43.008l0 66.56q0 30.72-10.24 55.296t-28.16 42.496-40.96 27.648-48.64 9.728l-631.808 0q-27.648 0-52.736-9.216t-44.032-26.112-30.208-40.448-11.264-53.248l0-78.848q0-24.576 4.608-47.104t16.896-47.104 33.792-52.736 54.272-61.952q26.624-28.672 54.784-57.856t50.688-52.736q26.624-27.648 51.2-53.248l375.808 0zM512 775.168q26.624 0 50.176-10.24t40.96-27.648 27.648-41.472 10.24-50.688-10.24-50.176-27.648-40.96-40.96-27.648-50.176-10.24-50.688 10.24-41.472 27.648-27.648 40.96-10.24 50.176 10.24 50.688 27.648 41.472 41.472 27.648 50.688 10.24zM1025.024 263.168l0 64.512q0 26.624-18.944 45.056t-45.568 18.432l-128 0q-26.624 0-45.056-18.432t-18.432-45.056l0-64.512-513.024 0 0 64.512q0 26.624-18.432 45.056t-45.056 18.432l-128 0q-26.624 0-45.568-18.432t-18.944-45.056l0-64.512 0-2.048q0-12.288 6.144-20.992t15.36-15.872 20.48-12.8 22.528-12.8q11.264-6.144 50.688-27.136t99.328-43.52 136.192-39.936 162.304-17.408q98.304 0 175.616 17.408t134.144 39.936 91.136 43.52 46.592 27.136q12.288 7.168 23.552 12.8t20.48 12.8 14.848 15.872 5.632 20.992l0 2.048z" p-id="7977" fill="#2854b5"></path></svg></div>
                    <div class="intro left">
                        <p>座机：<?php echo $sitelist['1']['tel'];?></p>
                        <p>手机：<?php echo $sitelist['1']['mobile'];?></p>
                    </div>
                    <div class="clear"></div>
                </div>
                <a href="<?php echo $CATEGORYS['17']['url'];?>" class="more">查看更多</a>   
            </div>  
            <div class="clear"></div>  
        </div>
    </div>

    <div class="mod bottom">
        <div class="rom">
            <p>Copyright.&nbsp;&nbsp;&nbsp;&nbsp;<?php echo date('Y', time());?>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $sitelist['1']['company_cn'];?> All Rights Reserved.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;备案号：<a rel="nofollow" href="http://www.beian.miit.gov.cn/"><?php echo $sitelist['1']['icp'];?></a></p>
        </div>
    </div>

    <script src="<?php echo MY_PATH;?>bootstrap/js/bootstrap.min.js"></script>
    <script src="<?php echo JS_PATH;?>layui/layui.js"></script>
    <script src="<?php echo JS_PATH;?>swiper/js/swiper.min.js"></script>
    <script src="<?php echo JS_PATH;?>wow.min.js"></script>
    <script src="<?php echo JS_PATH;?>lightcase/js/lightcase.js"></script> 
    <script src="<?php echo MY_PATH;?>main.js"></script>
    <script>

        var myProduct = new Swiper('#swiper-pro', {
            slidesPerView: 4,
            spaceBetween: 0,
            autoplay: {
                delay: 2000,
                stopOnLastSlide: false,
                disableOnInteraction: true,
            },
            loop: true,
            navigation: {
                nextEl: '.swiper-button-next',
                prevEl: '.swiper-button-prev',
            },
        });

        $(document).ready(function(){
            $('a[data-rel="lightcase:myPhotos"]').lightcase({
                transition: 'elastic',
                showSequenceInfo: false,
            });
        });
        
    </script>

    <?php include template("content","qa"); ?>
</body>
</html>