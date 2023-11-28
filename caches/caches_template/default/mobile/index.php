<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>

<div class="swiper-container px-2 mt-2" id="swiper-banner">
    <div class="swiper-wrapper">
        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3224730db8766527a68006f9cdaccd06&action=lists&catid=14&num=5&siteid=%24siteid&moreinfo=1&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'14','siteid'=>$siteid,'moreinfo'=>'1','order'=>'listorder ASC','limit'=>'5',));}?>
        <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
        <div class="swiper-slide h-[50vh] bg-cover bg-center overflow-hidden" style="background-image:url('<?php echo $r['thumb'];?>');">
            <div class="w-9/12 h-full flex flex-col justify-center mx-auto">
                <h2 class="text-2xl font-bold text-slate-100" data-swiper-parallax="1000"><?php echo $r['title'];?></h2>
                <div class="w-24 my-5 h-px bg-slate-50" data-swiper-parallax="2000"></div>
                <div class="text-sm leading-relaxed font-light text-justify text-slate-100" data-swiper-parallax="-1000">
                    <?php echo $r['content'];?>
                </div>    
            </div>
        </div>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
    </div>
    <div class="swiper-pagination swiper-pagination-white"></div>
</div>

<div class="px-2 mt-2">
    <div class="bg-slate-50 px-8 py-10">
        <div class="mb-6">
            <p class="text-xl font-bold text-slate-800"><span class="text-[var(--main-color)]">01.</span> 关于我们</p>
            <div class="w-12 h-1 bg-[var(--main-color)] my-3"></div>
        </div>
        <div class="text-sm text-justify leading-loose font-serif">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"block\" data=\"op=block&tag_md5=777600b67cd0a6a7eb9a3fa20416cd8f&pos=about\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">添加碎片</a>";}$block_tag = pc_base::load_app_class('block_tag', 'block');echo $block_tag->pc_tag(array('pos'=>'about',));?><?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <a href="<?php echo $CATEGORYS['1']['url'];?>" class="inline-block rounded text-sm font-medium text-white bg-[var(--main-color)] px-10 py-3"> 查看更多 </a>
    </div>
</div>

<div class="px-2 mt-2">
    <div class="bg-slate-50 px-8 py-10">
        <div class="mb-6 flex flex-col items-end">
            <p class="text-xl font-bold text-slate-800"><span class="text-[var(--main-color)]">02.</span> 产品中心</p>
            <div class="w-12 h-1 bg-[var(--main-color)] my-3"></div>
        </div>
        <div class="grid grid-cols-2 gap-4">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=4af97443493dcab096ab3792e9736649&action=lists&catid=2&num=10&moreinfo=1&thumb=1&order=listorder+asc\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'2','moreinfo'=>'1','thumb'=>'1','order'=>'listorder asc','limit'=>'10',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="h-50">
                <a class="relative overflow-hidden block bg-gray-200 rounded-lg h-0 p-0 pb-[90%]" title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>">
                    <img class="absolute object-cover w-full h-full align-middle" src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"  />
                </a>
                <p class="text-sm mt-4 font-serif w-full overflow-hidden text-ellipsis whitespace-nowrap"><a title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></p>
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
    </div>
</div>

<div class="px-2 mt-2">
    <div class="bg-slate-50 px-8 py-10">
        <div class="mb-6 flex flex-col">
            <p class="text-xl font-bold text-slate-800"><span class="text-[var(--main-color)]">03.</span> 新闻资讯</p>
            <div class="w-12 h-1 bg-[var(--main-color)] my-3"></div>
        </div>
        <div class="grid grid-cols-1 sm:grid-cols-2 sm:gap-2">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=f2c45e96b7be8cdad7d945180fc21e82&action=lists&catid=3&num=10&moreinfo=1&thumb=1&order=listorder+desc\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'3','moreinfo'=>'1','thumb'=>'1','order'=>'listorder desc','limit'=>'10',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="mb-10">
                <a class="relative overflow-hidden block bg-gray-200 rounded-lg h-0 p-0 pb-[50%]" title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>">
                    <img class="absolute object-cover w-full h-full align-middle" src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>" />
                </a>
                <p class="text-lg font-bold mt-4 font-serif w-full overflow-hidden text-ellipsis whitespace-nowrap"><a title="<?php echo $r['title'];?>" href="<?php echo $r['url'];?>"><?php echo date('m-d',$r[inputtime]);?> | <?php echo $r['title'];?></a></p>
                <p class="text-xs font-light text-slate-600 text-justify mt-2 font-serif leading-loose"><?php echo $r['description'];?></p>
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
    </div>
</div>

<div class="px-2 mt-2">
    <div class="bg-[var(--main-color)] px-8 py-10">
        <div class="mb-6 flex flex-col">
            <p class="text-xl font-bold text-white"><span class="text-white">04.</span> 联系我们</p>
            <div class="w-12 h-1 bg-white my-3"></div>
        </div>
        <div class="w-36 mb-8">
            <img src="<?php echo $CATEGORYS['13']['image'];?>" alt="" class="w-full">
        </div>
        <div class="text-white">
            <?php if($sitelist[1][mobile]) { ?>
            <p class="flex items-center my-3"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3" />
            </svg>手机：<a href="tel:<?php echo $sitelist['1']['mobile'];?>"><?php echo $sitelist['1']['mobile'];?></a></p>
            <?php } ?>
            <?php if($sitelist[1][tel]) { ?>
            <p class="flex items-center my-3"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M2.25 6.75c0 8.284 6.716 15 15 15h2.25a2.25 2.25 0 002.25-2.25v-1.372c0-.516-.351-.966-.852-1.091l-4.423-1.106c-.44-.11-.902.055-1.173.417l-.97 1.293c-.282.376-.769.542-1.21.38a12.035 12.035 0 01-7.143-7.143c-.162-.441.004-.928.38-1.21l1.293-.97c.363-.271.527-.734.417-1.173L6.963 3.102a1.125 1.125 0 00-1.091-.852H4.5A2.25 2.25 0 002.25 4.5v2.25z" />
            </svg>电话：<a href="tel:<?php echo $sitelist['1']['tel'];?>"><?php echo $sitelist['1']['tel'];?></a></p>
            <?php } ?>
            <?php if($sitelist[1][email]) { ?>
            <p class="flex items-center my-3"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M10.5 1.5H8.25A2.25 2.25 0 006 3.75v16.5a2.25 2.25 0 002.25 2.25h7.5A2.25 2.25 0 0018 20.25V3.75a2.25 2.25 0 00-2.25-2.25H13.5m-3 0V3h3V1.5m-3 0h3m-3 18.75h3" />
            </svg>邮箱：<a href="mailto:<?php echo $sitelist['1']['email'];?>"><?php echo $sitelist['1']['email'];?></a></p>
            <?php } ?>
            <?php if($sitelist[1][contact]) { ?>
            <p class="flex items-center my-3"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M15.75 6a3.75 3.75 0 11-7.5 0 3.75 3.75 0 017.5 0zM4.501 20.118a7.5 7.5 0 0114.998 0A17.933 17.933 0 0112 21.75c-2.676 0-5.216-.584-7.499-1.632z" />
            </svg>联系人：<?php echo $sitelist['1']['contact'];?></p>
            <?php } ?>
            <?php if($sitelist[1][address]) { ?>
            <p class="flex items-center my-3"><svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-5 h-5 mr-2">
                <path stroke-linecap="round" stroke-linejoin="round" d="M15 10.5a3 3 0 11-6 0 3 3 0 016 0z" />
                <path stroke-linecap="round" stroke-linejoin="round" d="M19.5 10.5c0 7.142-7.5 11.25-7.5 11.25S4.5 17.642 4.5 10.5a7.5 7.5 0 1115 0z" />
            </svg>地址：<?php echo $sitelist['1']['address'];?></p>
            <?php } ?>
        </div>
    </div> 

</div>

<?php include template("content","footer"); ?>
