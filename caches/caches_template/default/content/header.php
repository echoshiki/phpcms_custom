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
    <div class="header container d-flex justify-content-between align-items-center">
        <a class="header_logo" href="<?php echo siteurl($siteid);?>"><img src="<?php echo MY_PATH;?>logo.png" alt="<?php echo $SEO['site_title'];?>"></a>
        <div class="header_phone d-flex">
            <svg t="1700231310288" class="header_phone_icon me-2" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="12155" id="mx_n_1700231310290" width="64" height="64"><path d="M984.674458 317.324167c-26.014374-62.108118-63.132054-117.59265-111.577026-166.389601-48.220986-48.604962-103.321542-85.59465-165.781639-111.321042-62.332104-25.822386-127.544028-38.685582-195.923755-38.685582-67.99575 0-132.983689 12.895194-195.283795 38.87757-62.524092 26.014374-117.59265 63.100056-165.621649 111.129054-47.869008 47.645022-84.762702 102.905568-110.745078 165.781639-26.174364 63.068058-39.261546 128.119993-39.261546 195.283795 0 58.972314 8.927442 113.880882 26.942316 164.085745 17.982876 50.39685 44.349228 95.290044 79.51503 134.583589 7.19955 8.383476 14.431098 14.815074 21.470658 19.102806 7.03956 4.447722 13.663146 6.687582 19.710768 6.687582 1.91988 0 4.895694-0.575964 8.607462-1.407912 3.903756-0.95994 8.607462-2.495844 14.271108-4.255734-44.509218-56.252484-76.7952-109.209174-96.281982-159.382039-19.742766-50.23686-29.502156-103.321542-29.502156-159.414037 0-61.532154 11.935254-120.664458 35.51778-177.908881 23.646522-57.244422 57.43641-107.801262 101.209674-151.702519 43.965252-43.805262 94.298106-77.59515 151.382539-101.209674 56.988438-23.614524 116.376726-35.549778 178.292857-35.549778 62.140116 0 121.496406 11.67927 177.940879 35.133804s106.649334 57.404412 150.934567 101.59365c43.99725 43.965252 77.75514 94.330104 101.59365 151.350541 23.83851 57.052434 35.741766 116.376726 35.741766 178.132867 0 61.148178-11.935254 120.280482-35.741766 177.716893s-57.628398 107.83326-101.59365 151.382539c-43.965252 43.965252-94.330104 77.75514-151.542529 101.59365s-116.440722 35.709768-177.364915 35.709768c-74.811324 0-134.743579-11.871258-179.668771-35.933754-45.085182-24.030498-67.547778-55.644522-67.547778-94.55409 0-8.415474 1.567902-16.606962 4.447722-24.574464 3.135804-8.031498 8.031498-16.414974 15.071058-25.566402 6.815574 6.463596 12.895194 11.103306 18.590838 14.23911 5.407662 3.103806 10.335354 4.543716 14.623086 4.543716 6.847572 0 17.182926-5.91963 31.454034-17.630898 14.047122-11.935254 28.126242-26.974314 42.173364-45.341166 11.551278-15.583026 21.27867-33.213924 29.470158-52.892694 8.223486-19.550778 12.31923-31.998 12.31923-37.533654 0-3.231798-4.895694-10.655334-14.431098-22.206612-9.75939-11.551278-14.687082-23.070558-14.687082-35.005812 0-15.615024 4.447722-36.31773 13.43916-61.852134 8.991438-25.75839 21.854634-56.47647 39.069558-91.99425 19.934754-40.061496 35.933754-68.15574 48.444972-84.378726 12.31923-16.222986 25.022436-26.55834 38.109618-31.070058 2.943816-1.183926 7.9995-2.175864 14.815074-2.975814 22.494594-2.335854 39.293544-12.095244 50.39685-29.086182 10.143366-17.150928 19.102806-39.229548 26.750328-66.203862 7.647522-26.750328 11.487282-49.564902 11.487282-68.347728 0-15.263046-2.335854-25.534404-7.19955-30.846072-4.671708-5.27967-14.623086-8.031498-30.046122-8.031498-23.9985 0-44.349228 1.791888-61.148178 5.11968-16.79895 3.487782-29.470158 8.351478-38.301606 15.007062-10.71933 7.647522-27.742266 26.206362-51.164802 56.092494-23.454534 29.694144-47.485032 63.67602-71.899506 101.75364-44.541216 69.75564-81.242922 144.118993-109.785138 223.058059-28.702206 79.131054-42.973314 138.327355-42.973314 177.908881 0 7.83951 1.75989 15.83901 5.087682 24.414474 3.487782 8.671458 9.567402 19.966752 18.334854 34.013874-11.903256 14.87907-20.702706 29.662146-26.366352 44.15724-5.663646 14.431098-8.607462 29.086182-8.607462 43.965252 0 49.212924 26.590338 89.402412 79.51503 120.664458 53.084682 31.230048 123.03231 46.845072 209.938879 46.845072 66.811824 0 131.671771-13.087182 194.963815-39.293544 63.068058-25.950378 118.744578-62.87607 166.773577-110.681082 48.028998-48.028998 85.146678-103.545528 111.129054-166.421599 26.174364-62.87607 39.261546-128.119993 39.261546-195.667771 0-67.611774-12.895194-132.439723-38.845572-194.579839l0 0zM650.839323 353.033935c10.207362 2.55984 18.174864 3.871758 24.254484 3.871758 15.615024 0 30.686082-14.431098 45.341166-43.51728 14.431098-28.894194 21.726642-58.39635 21.726642-88.666458 0-17.374914-4.511718-31.070058-13.727142-40.79745-9.183426-9.75939-28.126242-19.934754-56.604462-30.686082 0 37.085682-5.27967 71.707518-15.423036 103.929504-10.367352 32.189988-24.990438 60.124242-44.125242 83.770764 15.583026 5.247672 28.446222 9.375414 38.55759 12.063246l0 0zM454.755578 672.213987c-8.031498 32.413974-21.27867 62.07612-40.253484 89.050434-18.974814 26.782326-42.781326 50.748828-71.83551 71.707518 13.43916 8.79945 25.182426 15.423036 35.549778 20.126742 10.335354 4.447722 18.782826 6.815574 25.214424 6.815574 21.310668 0 43.773264-15.83901 67.35579-47.453034 23.83851-31.614024 35.549778-59.164302 35.549778-82.39485 0-8.79945-3.551778-17.214924-10.55934-25.406412-7.007562-8.223486-20.702706-18.942816-41.021436-32.413974l0 0z" fill="#dd6b20" p-id="12156"></path></svg>
            <div class="header_phone_font d-flex flex-column justify-content-center">
                <span><?php echo $sitelist['1']['mobile'];?></span>
                <span><?php echo $sitelist['1']['tel'];?></span>
            </div>         
        </div>
    </div>

    <div class="navgation">
        <div class="container">
            <div class="navgation_list d-flex justify-content-between ">
                <div class="navgation_item"><a class="navgation_font" href="<?php echo siteurl($siteid);?>">首页</a></div>
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=522dcf79f84779c8c187ca374072cc0d&action=category&catid=0&num=8&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>'0','siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'8',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="navgation_item">
                    <a class="navgation_font" href="<?php echo $r['url'];?>"><?php echo $r['catname'];?></a>
                    <div class="navgation_child_list">
                        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=fb7bc78d0d7e09b1eb00d7d2cd6b61b8&action=category&catid=%24r%5Bcatid%5D&num=8&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$r[catid],'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'8',));}?>
                        <?php $n=1;if(is_array($data)) foreach($data AS $v) { ?>
                        <div class="navgation_child_item">
                            <a class="navgation_child_font" href="<?php echo $v['url'];?>"><?php echo $v['catname'];?></a>
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
