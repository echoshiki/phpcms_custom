<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>    <div class="footer py-4">
        <div class="container d-flex justify-content-between">
            <div class="footer_box">
                <h6>产品列表</h6>
                <div class="footer_list">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=f0f3dff46feb05cb6d9099253694a7ec&action=category&catid=19&num=6&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'19','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'6',));}?>
                    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                    <div class="footer_item"><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></div>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                </div>
            </div>
            <div class="footer_box">
                <h6>网站导航</h6>
                <div class="footer_list">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=70f0453b28d3b62324557276e5c8c8f2&action=category&catid=0&num=5&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">修改</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'5',));}?>
                    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                    <div class="footer_item"><a href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></div>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                </div>
            </div>
            <div class="footer_box">
                <h6>关注我们</h6>
                <div class="footer_qrcode">
                    <img src="<?php echo $CATEGORYS['13']['image'];?>" alt="扫一扫">
                </div>
            </div>
            <div class="footer_box">
                <h6>联系我们</h6>
                <div class="footer_list">
                    <div class="footer_item">手机：<?php echo $sitelist['1']['mobile'];?></div>
                    <div class="footer_item">座机：<?php echo $sitelist['1']['tel'];?></div>
                    <div class="footer_item">邮箱：<?php echo $sitelist['1']['email'];?></div>
                    <div class="footer_item">地址：<?php echo $sitelist['1']['address'];?></div>
                    <div class="footer_item">备案号：<a rel="nofollow" href="http://beian.miit.gov.cn/"><?php echo $sitelist['1']['icp'];?></a></div>
                </div>
            </div>
        </div>
    </div>

    <div class="copyright">
        <div class="container">
            <p class="mb-0">版权所有：<?php echo $sitelist['1']['company_cn'];?>&nbsp;&nbsp;&nbsp;&nbsp;Copyright @ <?php echo date('Y', time());?>&nbsp;&nbsp;<?php echo $sitelist['1']['company_en'];?>&nbsp;&nbsp;All rights reserved.&nbsp;&nbsp;&nbsp;&nbsp;技术支持：<a href="https://www.yzypwl.com/" title="云铺网络">云铺网络</a></p>
        </div>
    </div>

    <script type="text/javascript" src="<?php echo JS_PATH;?>jquery.min.js"></script>
    <script type="text/javascript" src="<?php echo JS_PATH;?>layui/layui.js"></script>
    <script type="text/javascript" src="<?php echo JS_PATH;?>swiper.min.js"></script>
    <script type="text/javascript" src="<?php echo JS_PATH;?>wow.min.js"></script>
    <script type="text/javascript" src="<?php echo MY_PATH;?>main.js"></script>

    <script>
        $(document).ready(function(){
            $('.extra_item').hover(function(){
                $(this).siblings().removeClass('extra_item_on');
                $(this).addClass('extra_item_on');
            });
        });   
    </script>
    
</body>
</html>