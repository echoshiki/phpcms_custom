<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","_header"); ?>

<div class="product py-5 bg-gray">
    <div class="container">
        <div class="main-title">
            <h4>主营产品 <span class="font-main-color"> PRODUCT</span></h4>
            <p>产品广泛应用于各个行业，并提供相应的解决方案</p>
        </div>
        <div class="product_list">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=a56b2c286183fa618fa0d82db2a00aad&action=lists&catid=2&num=6&siteid=%24siteid&order=listorder+DESC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'2','siteid'=>$siteid,'order'=>'listorder DESC','limit'=>'6',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="product_item mb-4">
                <div class="product_thumb">
                    <a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></a>
                    <div class="product_info">
                        <a href="<?php echo $r['url'];?>">
                            <h2><?php echo $r['title'];?></h2>
                            <p><?php echo $r['description'];?></p>
                            <svg t="1700383499085" class="product_info_icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4807" width="200" height="200"><path d="M635.733333 512l-149.333333-149.333333L426.666667 422.4l89.6 89.6-89.6 89.6 59.733333 59.733333 149.333333-149.333333zM170.666667 512c0 187.733333 153.6 341.333333 341.333333 341.333333s341.333333-153.6 341.333333-341.333333-153.6-341.333333-341.333333-341.333333-341.333333 153.6-341.333333 341.333333z m85.333333 0c0-140.8 115.2-256 256-256s256 115.2 256 256-115.2 256-256 256-256-115.2-256-256z" fill="#e6e6e6" p-id="4808"></path></svg>
                        </a>
                    </div>
                </div>      
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <a href="<?php echo $CATEGORYS['19']['url'];?>" class="readmore">
            查看更多 Read More >>
        </a>
    </div>
</div>


<div class="about py-5">
    <div class="container">
        <div class="main-title">
            <h4>关于我们 <span class="font-main-color"> ABOUT</span></h4>
            <p>产品广泛应用于各个行业，并提供相应的解决方案</p>
        </div>
        <div class="d-flex justify-content-center  ">
            <div class="about_content">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"block\" data=\"op=block&tag_md5=777600b67cd0a6a7eb9a3fa20416cd8f&pos=about\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">添加碎片</a>";}$block_tag = pc_base::load_app_class('block_tag', 'block');echo $block_tag->pc_tag(array('pos'=>'about',));?><?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </div>
            <div class="about_img"><img src="<?php echo MY_PATH;?>about_img.jpg" alt=""></div>
        </div>
    </div>
</div>

<div class="extra">
    <div class="container">
        <div class="d-flex justify-content-around align-items-center">
            <div class="extra_item extra_item_on">
                <div class="extra_item_icon"><svg t="1648107534980" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4170" width="500" height="500"><path d="M662.624 671.776a31.968 31.968 0 1 0-45.248 45.248l112 112a31.968 31.968 0 1 0 45.248-45.248l-112-112z" p-id="4171" fill="#0043a3"></path><path d="M712.896 571.616a247.36 247.36 0 0 0-334.112-269.568 31.968 31.968 0 0 0-11.008 52.448l97.824 97.824a31.968 31.968 0 0 1 0 45.248l-31.328 31.328a31.968 31.968 0 0 1-45.248 0L290.88 430.752a32 32 0 0 0-52.384 10.848 247.36 247.36 0 0 0 268 335.456l145.824 145.824a145.6 145.6 0 1 0 205.92-205.92l-145.344-145.344z m100.096 306.016a81.6 81.6 0 0 1-115.392 0l-170.336-170.336-17.28 4a183.36 183.36 0 0 1-224.032-194.944l57.824 57.824a96 96 0 0 0 135.776 0l31.328-31.328a96 96 0 0 0 0-135.776l-57.248-57.248a183.36 183.36 0 0 1 193.472 225.024l-4.096 17.376 170.016 170.016c31.808 31.872 31.808 83.52-0.032 115.392z" p-id="4172" fill="#0043a3"></path><path d="M944.672 423.328l-363.2-363.2a96.096 96.096 0 0 0-135.776 0l-363.2 363.2a96.032 96.032 0 0 0 15.104 148.064V896c0 52.928 43.072 96 96 96h320a32 32 0 1 0 0-64h-320c-17.632 0-32-14.336-32-32V551.744c0-13.664-8.672-25.824-21.6-30.272a32 32 0 0 1-12.256-52.896l363.2-363.2a32.064 32.064 0 0 1 45.28 0l363.2 363.232c6.048 6.016 9.376 14.048 9.376 22.624a31.808 31.808 0 0 1-21.6 30.24 32.032 32.032 0 0 0-21.632 30.272v76.544a32 32 0 1 0 64 0v-56.864a95.456 95.456 0 0 0 43.232-80.192c0-25.664-9.984-49.792-28.128-67.904z" p-id="4173" fill="#0043a3"></path></svg></div>
                <div class="extra_item_title">匠心呈现</div>
                <div class="extra_item_subtitle">专注于各型号离心机设备的研究、制造和销售</div>
            </div>
            <div class="extra_item">
                <div class="extra_item_icon"><svg t="1648107606458" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4568" width="500" height="500"><path d="M782.208 530.72L724.288 448l57.92-82.72a32 32 0 0 0-20.672-49.856l-99.456-17.536-17.536-99.456a32 32 0 0 0-49.856-20.672L512 235.712l-82.72-57.92a32 32 0 0 0-49.856 20.672l-17.536 99.456-99.456 17.504a32 32 0 0 0-20.672 49.856L299.712 448l-57.92 82.72a32 32 0 0 0 20.672 49.856l99.456 17.536 17.536 99.456a32 32 0 0 0 49.856 20.672L512 660.288l82.72 57.92a32 32 0 0 0 49.856-20.672l17.536-99.456 99.456-17.536a31.968 31.968 0 0 0 20.64-49.824z m-123.2-64.352l41.952 59.904-72.032 12.704a32 32 0 0 0-25.952 25.952l-12.704 72.032-59.904-41.952a32 32 0 0 0-36.704 0l-59.904 41.952-12.704-72.032a32 32 0 0 0-25.952-25.952l-72.032-12.704 41.952-59.904a32 32 0 0 0 0-36.704l-41.952-59.904 72.032-12.704a32 32 0 0 0 25.952-25.952l12.704-72.032 59.904 41.952a32 32 0 0 0 36.704 0l59.904-41.952 12.704 72.032a32 32 0 0 0 25.952 25.952l72.032 12.704-41.952 59.904a32 32 0 0 0 0 36.704z" p-id="4569" fill="#0043a3"></path><path d="M512 34.912c-243.008 0-440 196.992-440 440a438.72 438.72 0 0 0 133.344 315.552 32 32 0 1 0 44.608-45.888 374.752 374.752 0 0 1-113.952-269.664c0-207.648 168.352-376 376-376s376 168.352 376 376c0 99.136-38.496 192.096-106.144 261.824a32 32 0 1 0 45.92 44.576 438.56 438.56 0 0 0 124.224-306.4c0-243.008-196.992-440-440-440z" p-id="4570" fill="#0043a3"></path><path d="M704 761.088a32 32 0 0 0-32 32v107.104l-142.24-94.848-0.064-0.032a32 32 0 0 0-11.552-4.736c-2.048-0.416-4.096-0.032-6.144-0.032s-4.096-0.352-6.144 0.032c-4.096 0.8-8 2.4-11.552 4.736l-0.064 0.032L352 900.224V800a32 32 0 0 0-64 0v160c0 0.992 0.48 1.856 0.576 2.848a32.256 32.256 0 0 0 3.712 12.224c0.48 0.864 0.544 1.856 1.088 2.688 0.576 0.896 1.504 1.344 2.176 2.144a31.36 31.36 0 0 0 21.472 11.488c1.024 0.096 1.92 0.608 2.976 0.608 0.992 0 1.856-0.48 2.848-0.576a32.256 32.256 0 0 0 12.256-3.712c0.864-0.48 1.856-0.544 2.688-1.088L512 870.464l174.24 116.16c14.688 9.792 34.56 5.824 44.384-8.864a31.584 31.584 0 0 0 4.768-21.664c0.096-1.056 0.608-1.952 0.608-3.04v-159.968a32 32 0 0 0-32-32z" p-id="4571" fill="#0043a3"></path></svg></div>
                <div class="extra_item_title">研发不止</div>
                <div class="extra_item_subtitle">注重消化吸收国内外良好的制造技术和工艺</div>
            </div>
            <div class="extra_item">
                <div class="extra_item_icon"><svg t="1648107481222" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2398" width="500" height="500"><path d="M601.024 99.584a32 32 0 0 0-8.064 63.488 380.384 380.384 0 0 1 175.68 69.952c-115.744 26.336-150.944 106.048-158.336 175.008-10.72 99.68 60.224 151.968 107.168 186.56 16.48 12.16 41.376 30.528 42.528 39.104 0.16 1.248-0.992 5.408-6.56 12.416-61.056 76.96-83.808 140.832-67.552 189.952 4.96 14.912 15.296 32.896 36.288 47.84A381.856 381.856 0 0 1 544 928c-3.008 0-5.952-0.352-8.96-0.416 40.096-67.392 25.728-118.304 3.424-151.104-54.08-79.488-134.912-104.128-211.04-64.192-5.28 2.848-9.6 1.696-34.4-21.632-24.448-23.04-63.232-58.944-120.032-48.32-5.024-19.2-8.992-38.88-11.04-59.2a32.128 32.128 0 0 0-35.072-28.64c-17.568 1.792-30.4 17.472-28.64 35.072A446.496 446.496 0 0 0 544 992c247.04 0 448-200.96 448-448 0-225.024-168.064-416.064-390.976-444.416zM195.072 704.32c18.368 0.704 33.12 13.216 54.08 32.928 24 22.624 60.352 56.672 108 31.712 63.328-33.28 107.616 12.992 128.384 43.488 8.128 11.936 28.896 42.592-22.432 106.752a381.856 381.856 0 0 1-268.032-214.88z m589.344 138.656c-20.992-6.016-33.824-15.072-37.824-27.072-8.544-25.76 12.736-74.368 56.928-129.984 15.872-20 22.56-40.416 19.872-60.672-4.736-35.52-35.456-58.176-68-82.144-43.392-32-88.288-65.056-81.504-128.192 5.536-51.264 28.288-118.336 156.704-126.112A383.232 383.232 0 0 1 928 544c0 120.768-56.16 228.544-143.584 298.976z" p-id="2399" fill="#0043a3"></path><path d="M266.464 599.68a32 32 0 0 0 43.072 0C456.544 466.016 528 358.816 528 272 528 139.648 420.352 32 288 32S48 139.648 48 272c0 86.816 71.456 194.016 218.464 327.68zM288 96c97.056 0 176 78.944 176 176 0 43.872-31.232 124.128-176 260.416C143.232 396.128 112 315.872 112 272 112 174.944 190.944 96 288 96z" p-id="2400" fill="#0043a3"></path><path d="M288 272m-80 0a80 80 0 1 0 160 0 80 80 0 1 0-160 0Z" p-id="2401" fill="#0043a3"></path></svg></div>
                <div class="extra_item_title">应用广泛</div>
                <div class="extra_item_subtitle">产品应用于多个行业，畅销分布全国二十多个省市</div>
            </div>
            <div class="extra_item">
                <div class="extra_item_icon"><svg t="1648107662080" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="4768" width="500" height="500"><path d="M892.224 117.024c-83.936-83.936-231.648-81.12-387.616-3.84-155.936-77.28-303.68-80.096-387.616 3.84-69.76 69.76-79.488 183.552-36.64 309.344a95.776 95.776 0 0 0 12.992 122.528c-55.936 136.896-53.472 266.176 23.68 343.328 83.936 83.936 231.712 81.152 387.776 3.776 152.8 75.68 302.016 81.632 387.424-3.776 85.44-85.44 79.424-234.72 3.68-387.584 75.744-152.896 81.76-302.176-3.68-387.616z m-45.248 729.952c-96.416 96.416-332.64 29.408-523.36-161.344a31.968 31.968 0 1 0-45.248 45.248 913.056 913.056 0 0 0 157.376 126.304c-117.248 47.904-219.104 44.128-273.472-10.24-55.776-55.776-56.544-158.368-10.656-271.808 2.816 0.256 5.504 0.864 8.384 0.864a96 96 0 0 0 96-96c0-21.024-6.944-40.288-18.4-56.096a870.592 870.592 0 0 1 86.016-100.288 31.968 31.968 0 1 0-45.248-45.248 933.6 933.6 0 0 0-93.472 109.344A92.928 92.928 0 0 0 160 384a95.68 95.68 0 0 0-24.736 3.616c-28.704-96.448-19.776-178.56 27.008-225.344 62.368-62.368 187.264-58.176 326.112 14.24a31.008 31.008 0 0 0 16.544 3.04 31.104 31.104 0 0 0 16.032-3.104c138.816-72.352 263.648-76.544 326.016-14.176 56 56 56.544 159.2 10.048 273.216a879.36 879.36 0 0 0-67.584-92.48c6.528-11.584 10.56-24.768 10.56-39.008a80 80 0 1 0-80 80c6.368 0 12.48-0.928 18.4-2.336a795.968 795.968 0 0 1 85.408 122.944c-31.52 56.672-73.984 114.08-126.176 168.352-3.2-0.384-6.336-0.96-9.632-0.96a80 80 0 1 0 65.792 34.624 901.056 901.056 0 0 0 103.232-132.864c46.464 113.984 45.952 217.216-10.048 273.216z" p-id="4769" fill="#0043a3"></path><path d="M512 384a128 128 0 1 0 0 256 128 128 0 0 0 0-256z m0 192a64 64 0 1 1 0.032-128.032A64 64 0 0 1 512 576z" p-id="4770" fill="#0043a3"></path></svg></div>
                <div class="extra_item_title">售后完善</div>
                <div class="extra_item_subtitle">通过及时的售后服务与客户建立了长期稳定的协作关系</div>
            </div>
        </div>
    </div>
</div>

<div class="photo py-5">
    <div class="container">
        <div class="main-title">
            <h4>厂容厂貌 <span class="font-main-color"> PHOTOS</span></h4>
            <p>产品广泛应用于各个行业，并提供相应的解决方案</p>
        </div>
        <div class="photo_list swiper-container layer-photos" id="swiper-photo">
            <div class="swiper-wrapper">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=1420002c5f3a249ddba897011a502521&action=lists&catid=9&order=listorder+DESC&num=50\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'9','order'=>'listorder DESC','limit'=>'50',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="swiper-slide photo_item">
                    <a href="javacript:void(0);" title="<?php echo $r['title'];?>">
                        <img layer-src="<?php echo $r['thumb'];?>" src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>">
                    </a>
                </div>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </div>
        </div>
        <a class="btn-more mt-5 mx-auto" href="<?php echo $CATEGORYS['9']['url'];?>">查看更多</a>
    </div>
</div>

<div class="news bg-gray py-5">
    <div class="container">
        <div class="main-title">
            <h4>新闻资讯 <span class="font-main-color"> NEWS</span></h4>
            <p>掌握国内外业界前沿资讯与技术</p>
        </div>
        <div class="news_list">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=6d87856cc7fb996df3c8d680f17a51f6&action=lists&catid=3&order=listorder+DESC&num=6\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'3','order'=>'listorder DESC','limit'=>'6',));}?>  
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="news_item">
                <a href="<?php echo $r['url'];?>" class="news_thumb"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></a>
                <p class="news_title"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></p>
                <p class="news_date"><?php echo date('M d,Y',$r[inputtime]);?></p>
                <p class="news_description"><?php echo str_cut($r[description],300);?></p>
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <a class="btn-more mx-auto mt-2" href="<?php echo $CATEGORYS['6']['url'];?>">更多资讯</a>
    </div>
</div>

<?php include template("content","_footer"); ?>