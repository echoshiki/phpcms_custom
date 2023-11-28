<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-status-bar-style" content="black">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title><?php if(isset($SEO['title']) && !empty($SEO['title'])) { ?><?php echo $SEO['title'];?><?php } ?><?php echo $SEO['site_title'];?></title>
    <meta name="keywords" content="<?php echo $SEO['keyword'];?>">
    <meta name="description" content="<?php echo $SEO['description'];?>">
    <script src="https://cdn.tailwindcss.com"></script>
    <link href="<?php echo CSS_PATH;?>swiper.min.css" rel="stylesheet" type="text/css" >  
    <link href="<?php echo MY_PATH;?>public.css" rel="stylesheet" type="text/css" />
</head>

<body class="bg-gray-200">

    <div class="h-24 px-4 bg-white flex justify-between items-center">
        <div class="h-10">
            <a href="<?php echo $sitelist['1']['url'];?>"><img class="h-full" src="<?php echo MY_PATH;?>logo.png" alt="<?php echo $sitelist['1']['company_cn'];?>"></a>
        </div>
        
        <div class="w-6 h-6 group" id="open-menu">
            <svg xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-6 h-6">
                <path stroke-linecap="round" stroke-linejoin="round" d="M3.75 9h16.5m-16.5 6.75h16.5" />
            </svg>
        </div> 
        
        <div class="w-screen h-screen flex flex-col justify-center items-center bg-[var(--main-color)] opacity-90 fixed top-0 left-[-100%] z-50" id="menu">
            <ul class="w-1/2 mx-auto text-center">
                <li class="w-full">
                    <a class="text-slate-100 text-lg font-bold opacity-0 duration-500" href="/">首页</a>
                    <div class="w-0 h-px my-4 bg-gray-200 duration-500"></div>
                </li>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=d4b9fcce1375cacb7ce5e1c6ac8f3432&action=category&catid=0&num=20&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'20',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?> 
                <?php if($r[ismobilemenu] == 1) { ?>
                <?php $i++; ?>
                <li class="w-full">
                    <a class="text-slate-100 text-lg font-bold opacity-0 duration-[<?php echo 500+$i*100 ?>ms]" href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a>
                    <div class="w-0 h-px my-4 bg-gray-200 duration-[<?php echo 500+$i*100 ?>ms]"></div>
                </li>
                <?php } ?>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </ul>
            <button class="text-slate-100 my-10" id="close-menu">
                <svg xmlns="http://www.w3.org/2000/svg" fill="#ffffff" viewBox="0 0 24 24" stroke-width="1.5" stroke="currentColor" class="w-8 h-8"><path stroke-linecap="round" stroke-linejoin="round" d="M6 18L18 6M6 6l12 12" fill="#ffffff"/></svg>
            </button>  
        </div>
    </div>
    