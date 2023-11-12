<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><html lang="cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php if(isset($SEO['title']) && !empty($SEO['title'])) { ?><?php echo $SEO['title'];?><?php } ?><?php echo $SEO['site_title'];?></title>
    <meta name="keywords" content="<?php echo $SEO['keyword'];?>">
    <meta name="description" content="<?php echo $SEO['description'];?>">
    <link rel="stylesheet" href="<?php echo MY_PATH;?>bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="<?php echo CSS_PATH;?>animate.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo JS_PATH;?>layui/css/layui.css">
    <link rel="stylesheet" href="<?php echo JS_PATH;?>swiper/css/swiper.min.css">
    <link type="text/css" href="<?php echo JS_PATH;?>lightcase/css/lightcase.css" rel="stylesheet" media="screen" />
    <link rel="stylesheet" type="text/css" href="<?php echo MY_PATH;?>base.css">
    <link rel="stylesheet" type="text/css" href="<?php echo MY_PATH;?>variable.css">
    <link rel="stylesheet" type="text/css" href="<?php echo MY_PATH;?>home.css">
    <script type="text/javascript" src="<?php echo JS_PATH;?>jquery.min.js"></script>
</head>

<body>

    <nav class="nav justify-content-between align-items-center px-2 container-xxl ">
        <a href="<?php echo siteurl($siteid);?>" class="d-block logo"><img src="<?php echo MY_PATH;?>logo.png" alt="<?php echo $SEO['site_title'];?>"></a>
        <ul class="d-flex justify-content-around">
            <li class="nav-item bg-light"><a class="nav-link active" href="<?php echo siteurl($siteid);?>" style="font-family: 'Poppins';">Poppins</a></li>
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=522dcf79f84779c8c187ca374072cc0d&action=category&catid=0&num=8&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'8',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <li class="nav-item"><a class="nav-link active" href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a></li>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </ul>
    </nav>

    <div class="swiper-container" id="swiper-banner">
        <div class="swiper-wrapper">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3fdd153de0451a86e7bd33b01076820e&action=lists&catid=21&num=5&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'21','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'5',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="swiper-slide" style="background:url(<?php echo $r['thumb'];?>) center top; height: 500px;">
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <div class="swiper-pagination swiper-pagination-white"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
    </div>
