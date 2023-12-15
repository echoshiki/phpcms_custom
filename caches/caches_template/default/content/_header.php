<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="cn">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=Edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?php if(isset($SEO['title']) && !empty($SEO['title'])) { ?><?php echo $SEO['title'];?><?php } ?><?php echo $SEO['site_title'];?></title>
    <meta name="keywords" content="<?php echo $SEO['keyword'];?>">
    <meta name="description" content="<?php echo $SEO['description'];?>">
    <link rel="stylesheet" type="text/css" href="<?php echo CSS_PATH;?>bootstrap/bootstrap-reboot.css">
    <link rel="stylesheet" type="text/css" href="<?php echo CSS_PATH;?>bootstrap/bootstrap-grid.css">
    <link rel="stylesheet" type="text/css" href="<?php echo CSS_PATH;?>animate.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo CSS_PATH;?>swiper.min.css">
    <link rel="stylesheet" type="text/css" href="<?php echo JS_PATH;?>layui/css/layer.css">
    <link rel="stylesheet" type="text/css" href="<?php echo MY_PATH;?>public.css">
    <link rel="stylesheet" type="text/css" href="<?php echo MY_PATH;?>base.css">
    <link rel="stylesheet" type="text/css" href="<?php echo MY_PATH;?>home.css">
</head>

<body>
    <div class="header">
        <div class="header_layout px-5 d-flex justify-content-between align-items-center">
            <a class="header_logo" href="<?php echo siteurl($siteid);?>"><img id="pc_logo" src="<?php echo MY_PATH;?>logo.png" alt="<?php echo $SEO['site_title'];?>"></a>
            <div class="header_navgation d-flex justify-content-between">
                <div class="header_navgation_item"><a class="header_navgation_font" href="<?php echo siteurl($siteid);?>">首页</a></div>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=522dcf79f84779c8c187ca374072cc0d&action=category&catid=0&num=8&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'8',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="header_navgation_item">
                    <a class="header_navgation_font" href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a>
                    <div class="header_navgation_child_list">
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=eae254431107b6381e0adc9282538993&action=category&catid=%24r%5Bcatid%5D&num=20&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$r[catid],'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'20',));}?>
                        <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
                        <div class="header_navgation_child_item">
                            <a class="header_navgation_child_font" href="<?php echo $v['url'];?>">
                                <?php echo $v['catname'];?>
                            </a>
                        </div>
                        <?php $n++;}unset($n); ?>
                        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    </div>
                </div>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </div>
        </div>
    </div>

    <?php if(!$catid) { ?>

    <div class="swiper-container" id="swiper-banner">
        <div class="swiper-wrapper">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=3224730db8766527a68006f9cdaccd06&action=lists&catid=14&num=5&siteid=%24siteid&moreinfo=1&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'14','siteid'=>$siteid,'moreinfo'=>'1','order'=>'listorder ASC','limit'=>'5',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="swiper-slide" style="background:url('<?php echo $r['thumb'];?>') center center; height: 25rem;">
                <div class="swiper_info_middle">
                    <h2 class="swiper_title" data-swiper-parallax="-6000"><?php echo $r['title'];?></h2>
                    <div class="swiper_content" data-swiper-parallax="6000">
                        <?php echo $r['content'];?>
                    </div>    
                </div>
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
        <div class="swiper-pagination swiper-pagination-white"></div>
        <div class="swiper-button-prev swiper-button-white"></div>
        <div class="swiper-button-next swiper-button-white"></div>
    </div>

    <?php } else { ?>
    
    <div class="page-banner" style="background:url('<?php echo $CATEGORYS[$top_parentid]['image'];?>') center center; height: 14rem;">
        <h4 class="mb-3"><?php echo $CATEGORYS[$top_parentid]['catname'];?></h4>
        <p><span><svg t="1584180627420" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2926" width="18" height="18"><path d="M511.983627 1022.005576c-177.413666 0-356.430852-48.131207-356.430852-155.653059 0-83.935668 122.605386-135.997394 236.549507-148.835793l6.237051-0.718361L240.863766 464.627063c-5.077645-9.096169-9.868765-18.74697-14.093996-28.512381l-4.1536-8.400321-0.652869-3.360538c-13.843286-35.848463-20.852934-73.371054-20.852934-111.49842 0-171.404812 139.484821-310.86098 310.917262-310.86098 171.427324 0 310.887586 139.456169 310.887586 310.86098 0 38.164205-7.024997 75.670423-20.906146 111.49842l-2.082428 5.38873 0.194428 0-1.603521 3.300162c-4.535293 10.694573-9.552563 20.965497-15.000646 30.699186L511.853667 914.597311l-64.345494-105.092523-2.430352 0.211824c-104.22783 8.933463-170.69873 37.702694-188.130751 53.720505l-3.148713 2.898003 3.148713 2.914376c22.738887 21.12411 110.175285 54.535057 248.78825 55.520501l12.375865 0.020466-0.016373-0.020466c138.357138-0.969071 225.969545-34.304294 248.898767-55.385425l3.229554-2.967588-3.284813-2.898003c-12.722766-11.271718-59.075467-33.511231-130.370233-46.566572l54.754045-87.675852c114.248044 25.745361 177.125093 74.360592 177.125093 137.074935 0 107.527992-179.017186 155.653059-356.453365 155.653059L511.983627 1022.004553zM511.977487 145.159054c-73.081459 0-132.527362 59.488883-132.527362 132.598994 0 73.05076 59.440787 132.48029 132.527362 132.48029 73.132624 0 132.62253-59.429531 132.62253-132.48029C644.600017 204.647937 585.110111 145.159054 511.977487 145.159054L511.977487 145.159054zM511.977487 145.159054" p-id="2927" fill="#fff"></path></svg>&nbsp;&nbsp;您现在的位置：<a href="<?php echo siteurl($siteid);?>">首页</a> > <?php echo catpos($catid);?></span></p>
    </div>

    <?php } ?>
