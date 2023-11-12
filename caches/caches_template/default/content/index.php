<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>

<div class="mod product">
    <div class="rom">
        <div class="main-tt">
            <h1>产品中心 /<span> PRODUCT</span></h1>
            <p>产品广泛应用于各个行业，并提供相应的解决方案</p>
            <div class="line"></div>
        </div>
        <div class="cate-list">
            <ul>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=51a42dd9ad8bd381864b65d7a544881e&action=category&catid=13&num=8&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'13','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'8',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <li><a href="<?php echo $r['url'];?>" title="<?php echo $r['catname'];?>"><?php echo $r['catname'];?></a></li>
                <?php $n++;}unset($n); ?>    
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                <div class="clear"></div>
            </ul>
        </div>
        <div class="product-list">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=ff4402fee25ef04cab30288521c63db2&action=lists&catid=13&order=listorder+DESC&num=8\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'13','order'=>'listorder DESC','limit'=>'8',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="item">
                <div class="pic">
                    <a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></a>
                </div>
                <a href="<?php echo $r['url'];?>" class="tt"><?php echo $r['title'];?></a>
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            <div class="clear"></div>
        </div>
        <a href="<?php echo $CATEGORYS['6']['url'];?>" class="more">查看更多</a>
    </div>
</div>

<div class="mod about">
    <div class="rom">
        <div class="box_01">
            <div class="title">关于我们 <span>ABOUT US</span></div>
            <div class="line"></div>
            <div class="info"><?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"block\" data=\"op=block&tag_md5=777600b67cd0a6a7eb9a3fa20416cd8f&pos=about\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">添加碎片</a>";}$block_tag = pc_base::load_app_class('block_tag', 'block');echo $block_tag->pc_tag(array('pos'=>'about',));?><?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?></div>
            <a href="<?php echo $CATEGORYS['1']['url'];?>" class="more"> MORE >> </a>
        </div>
        <div class="box_02">
            <div class="about_img"><img src="<?php echo MY_PATH;?>about_img.jpg" alt=""></div>
        </div>
        <div class="clear"></div>
    </div>
</div>

<div class="mod honor">
    <div class="rom">
        <div class="list" id="scroll-mod">
            <div id="scroll-rom">
                <div id="scroll-rom-1">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=01284a6f1b56a9658432b00f44719282&action=lists&catid=29&order=listorder+DESC&num=30\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'29','order'=>'listorder DESC','limit'=>'30',));}?>  
                    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                    <div class="item"><a href="<?php echo $r['thumb'];?>" data-rel="lightcase:myPhotos" title="<?php echo $r['title'];?>" data-lc-caption="<?php echo $r['description'];?>">
                        <div class="thumb"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></div>
                        <div class="focus">
                            <h1><?php echo $r['title'];?></h1>
                            <p><?php echo $CATEGORYS[$r['catid']]['catname'];?></p>
                        </div>
                    </a></div>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <div class="clear"></div>
                </div>
                <div id="scroll-rom-2"></div>
            </div>
        </div>
    </div>
</div>

<script>
    var speed = 20;
    var tab  = document.getElementById("scroll-mod");
    var tab1 = document.getElementById("scroll-rom-1");
    var tab2 = document.getElementById("scroll-rom-2");
    tab2.innerHTML = tab1.innerHTML;
    function Marquee(){
        if(tab2.offsetWidth-tab.scrollLeft<=0) {
            tab.scrollLeft-=tab1.offsetWidth
        } else {
            tab.scrollLeft++;
        }
    }
    var MyMar=setInterval(Marquee,speed);
    tab.onmouseover = function() { clearInterval(MyMar) };
    tab.onmouseout = function() { MyMar=setInterval(Marquee,speed) };
</script>

<style>

</style>


<div class="mod ex_01">
    <div class="rom">
        <h1>0514-88558498 13952547783<br>
        欢迎新老客户致电垂询</h1>
        <div class="info">
            <div class="it">
                <div class="icon"><svg t="1644914208480" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2113" width="50" height="50"><path d="M724.8 314.2c2.8 1.6 5.5 3.2 8.2 5.1l8.2 5.6 0.1 9.8c0.4 28.5-3 52.6-10.4 71.1-6.9 17-17.1 29.7-30.7 37.3-9.3 33.1-20.2 63.8-35.6 89.6-17.8 29.7-41.2 52.5-74.4 64.8-14.8 5.4-52.7 8-89.1 7.4-35.2-0.5-70.5-4-84.5-10.5-30.1-13.9-51.3-37.2-67.4-66.3-13.8-24.8-23.6-53.7-32.1-84.2-14.1-7.4-24.7-20-31.8-37.1-7.8-18.7-11.4-43.2-10.9-72.2l0.1-9.9 8.2-5.5c2.1-1.4 4.2-2.7 6.3-3.9-9.2-114.1-5.7-156.3 36.6-204.5 82.6-67.7 272-65.3 355.7-3.9 57 53.8 61 114.1 43.5 207.3zM551.3 644.1l1.2 26.1-15.5 25.6 21.6 141.8L647 647.5l134.7-4.6c69.6 65.8 114.2 220.8 103.2 321.9H134.2c1.9-88.8 18.2-240.4 106.6-317.6l121.7 1.1 114 188 21.4-140.6-15.5-25.5 1.2-26.1c29.5-1.6 38.2-1.6 67.7 0zM652 273.7c-53.5 10.5-133.2 19.6-196.2-15.8-24.2-13.6-59.7 14.3-88.7 11.4-9 17.8-15.7 37.3-19.6 58l-3.2 17.1-17.2-1.7c-3.2-0.3-6.5 0.1-10 1.3-1.6 0.5-3.1 1.1-4.7 1.9 0.5 19 3.1 34.7 8 46.5 4.3 10.4 10.4 17.1 18.2 19.6l10.1 3.1 2.8 10.1c8.4 31.3 17.9 60.8 31.2 84.8 12.3 22.3 28.1 40 50 50.1 9.2 4.2 38.4 6.6 69 7.1 32.5 0.5 64.9-1.3 75.6-5.2 24.1-8.9 41.4-26.1 54.9-48.6 14.5-24.2 24.8-54.9 33.8-88.6l2.6-9.6 9.6-3.3c7.6-2.7 13.5-9.6 17.6-20 4.7-11.7 7.3-27.2 7.7-45.8-1.4-0.7-2.8-1.3-4.2-1.7-3.4-1.1-6.6-1.7-9.7-1.5l-16.8 1.1-3.1-16.5c-3.8-19.2-9.7-37.2-17.7-53.8z m0 0" p-id="2114" fill="#ffffff"></path></svg></div>
                <div class="font">秉持以人为本</div>
            </div>
            <div class="it">
                <div class="icon"><svg t="1641955798528" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1974" width="50" height="50"><path d="M860.693447 938.666661 163.306553 938.666661C133.694432 938.666661 109.661407 914.633636 109.661407 885.021516L109.661407 138.978474C109.661407 109.366353 133.694432 85.333328 163.306553 85.333328L860.693447 85.333328C890.305568 85.333328 914.338593 109.366353 914.338593 138.978474L914.338593 885.021516C914.338593 914.633636 890.305568 938.666661 860.693447 938.666661ZM860.693447 192.033523 163.306553 192.033523 163.306553 885.343386 860.693447 885.343386 860.693447 192.033523ZM807.048302 618.673367 216.951698 618.673367 216.951698 245.356798 807.048302 245.356798 807.048302 618.673367ZM530.185704 466.696669 424.772993 361.927699C423.968316 360.747506 424.236542 359.138152 423.217284 358.118894 417.852769 352.808025 410.8789 350.715864 403.851386 351.037735 396.877517 350.715864 389.903648 352.808025 384.539134 358.118894 383.466231 359.138152 383.788102 360.747506 382.929779 361.927699L277.517068 466.696669C267.485426 476.728311 267.485426 492.929145 277.517068 502.907142 287.602355 512.88514 303.91048 512.88514 313.942122 502.907142L403.851386 413.53433 493.814296 502.907142C503.845938 512.88514 520.154062 512.88514 530.185704 502.907142 540.270992 492.929145 540.270992 476.728311 530.185704 466.696669ZM746.161061 307.424231C745.570965 306.619554 745.83919 305.493006 745.088158 304.741974 743.586094 303.23991 741.386643 303.561781 739.616353 302.488878 739.616353 302.488878 739.562708 302.488878 739.562708 302.488878 737.738773 301.46962 735.914838 300.718588 733.876323 300.128492 733.876323 300.128492 733.876323 300.128492 733.822678 300.128492 733.769033 300.128492 733.769033 300.128492 733.715387 300.128492 731.408646 299.48475 729.101905 298.680073 726.580583 298.680073 726.097777 298.680073 725.722261 298.894653 725.293099 298.948298 724.649358 298.948298 724.112906 298.572782 723.415519 298.680073L619.290291 298.680073C604.484231 298.680073 592.467719 310.589295 592.467719 325.34171 592.467719 340.094125 606.898263 350.340348 646.112864 352.003347L661.133505 352.003347 545.742797 466.696669C535.711154 476.728311 535.711154 492.929145 545.742797 502.907142 555.828084 512.88514 572.136208 512.88514 582.167851 502.907142L699.75801 386.01437 699.75801 431.827324C699.75801 446.68703 711.774523 458.649897 726.580583 458.649897 741.386643 458.649897 753.403156 446.68703 753.403156 431.827324L753.403156 325.502645C753.403156 325.449 753.403156 325.449 753.403156 325.395355 753.403156 325.395355 753.403156 325.34171 753.403156 325.34171 753.403156 321.80113 752.652124 318.475131 751.36464 315.471003 750.345383 312.896036 748.736028 310.803876 747.019383 308.711715 746.697513 308.282554 746.536577 307.799747 746.161061 307.424231ZM592.467719 725.319917 216.951698 725.319917 216.951698 671.996642 592.467719 671.996642 592.467719 725.319917ZM753.403156 832.020112 216.951698 832.020112 216.951698 778.643192 753.403156 778.643192 753.403156 832.020112Z" p-id="1975" fill="#ffffff"></path></svg></div>
                <div class="font">注重科技创新</div>
            </div>
            <div class="it">
                <div class="icon"><svg t="1644914248519" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3082" width="50" height="50"><path d="M620.992 452.608 620.992 452.224 584.256 400.512C583.68 399.36 582.912 398.336 582.144 397.44L580.032 394.496l-0.448 0.64c-2.112-1.408-4.48-2.304-6.976-2.304-8 0-14.464 8.128-14.464 18.24 0 3.264 0.704 6.272 1.792 8.896L559.744 420.224l19.712 27.968L378.24 448.192 397.504 420.48 397.056 419.968c1.216-2.624 1.856-5.632 1.856-8.896 0-10.048-6.464-18.24-14.464-18.24-2.56 0-4.928 0.832-6.976 2.304L376.96 394.496 374.784 397.568C373.952 398.528 373.312 399.552 372.672 400.64L336.064 453.312l0 0.192C333.696 456.704 332.16 461.056 332.16 465.856s1.536 9.152 3.968 12.352l0 0.384 36.672 51.712C373.376 531.456 374.08 532.48 374.912 533.376L377.024 536.32l0.448-0.64c2.176 1.472 4.48 2.304 6.976 2.304 8 0 14.464-8.192 14.464-18.304 0-3.2-0.64-6.208-1.792-8.832l0.256-0.384L377.6 482.624l201.216 0-19.2 27.712L560 510.848C558.848 513.536 558.144 516.544 558.144 519.744c0 10.112 6.464 18.304 14.464 18.304 2.56 0 4.928-0.832 6.976-2.304l0.576 0.64 2.112-3.136c0.832-0.896 1.536-1.92 2.112-3.008l36.608-52.672L620.992 477.312C623.36 474.112 624.96 469.76 624.96 464.96S623.36 455.808 620.992 452.608z" p-id="3083" fill="#ffffff"></path><path d="M643.264 607.296c-26.944-19.904-54.912 35.008-90.048 68.928-35.008 33.92-30.4 28.032-109.888-15.168C363.84 617.792 283.136 511.424 255.104 468.096 227.008 424.832 242.176 408.448 242.176 408.448S312.32 352.384 328.768 336c16.384-16.384 11.648-26.88 11.648-26.88l-114.56-169.408C204.8 135.04 168.512 144.192 111.296 190.976c-57.344 46.784-78.4 154.368 29.184 352 107.584 197.632 309.824 294.656 432.64 333.312 122.752 38.592 203.456-54.976 222.144-92.352 18.752-37.44 11.712-76.032 11.712-76.032S670.144 627.136 643.264 607.296z" p-id="3084" fill="#ffffff"></path><path d="M959.232 448.384c0 0-74.432-43.904-89.152-54.72-14.656-10.816-29.888 19.072-48.96 37.504-19.072 18.496-16.576 15.296-59.84-8.256-43.328-23.552-87.168-81.408-102.528-104.96C643.648 294.4 651.904 285.44 651.904 285.44s38.272-30.528 47.104-39.424 6.4-14.656 6.4-14.656l-62.464-92.224C631.488 136.704 611.84 141.632 580.608 167.104 549.44 192.576 538.048 251.136 596.48 358.656c58.624 107.52 168.704 160.384 235.456 181.376 66.88 20.992 110.72-29.952 120.96-50.304C963.136 469.376 959.232 448.384 959.232 448.384z" p-id="3085" fill="#ffffff"></path></svg></div>
                <div class="font">24小时热线</div>
            </div>
            
        </div>
    </div>
</div>

<div class="mod news">
    <div class="rom">
        <div class="main-tt">
            <h1>新闻资讯 /<span> NEWS</span></h1>
            <p>我们紧跟时代潮流，了解行业动态</p>
            <div class="line"></div>
        </div>
        <div class="news_layout">
            <div class="conl">
                <div class="pic"><img src="<?php echo MY_PATH;?>news_pic.jpg" alt=""></div>
            </div>
            <div class="conr">
                <div class="list">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=e8284c10e8de1a9d8c2c9e7c3b7391b8&action=lists&catid=6&order=listorder+DESC&num=3\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'6','order'=>'listorder DESC','limit'=>'3',));}?>
                    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                    <?php $j++; ?>
                    <div class="item">
                        <div class="date"><?php echo date('Y-m-d',$r['inputtime']);?>&nbsp;&nbsp;&nbsp;<span><?php echo $CATEGORYS[$r['catid']]['catname'];?></span></div>
                        <div class="tt"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></div>
                        <div class="des"><?php echo str_cut($r[description],160);?></div>
                    </div>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <div class="clear"></div>
                </div>
            </div>
            <div class="clear"></div>
        </div>
        <a href="<?php echo $CATEGORYS['6']['url'];?>" class="more">查看更多</a>
    </div>
</div>


<?php include template("content","footer"); ?>