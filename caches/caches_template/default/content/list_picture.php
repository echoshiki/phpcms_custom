<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","_header"); ?>

<div class="page">
    <div class="container py-3">

        <?php include template("content","_page_menu"); ?>  

        <div class="page_list">
            <div class="page_picture_list row layer-photos">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=6409236ca5360973ea5db10dd75ab3bd&action=lists&catid=%24catid&order=id+DESC&page=%24page&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 12;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));if(!defined('IN_ADMIN') && $page > 1 && ceil($content_total/$pagesize) < $page){ob_end_clean();header("HTTP/1.1 404 Not Found");header("Status: 404 Not Found");include template("content", "404");ob_end_flush();exit;}$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="page_product_item col-lg-3 col-xl-3 mt-3">
                    <div class="page_product_thumb">
                        <a href="javascript:void(0);" title="<?php echo $r['title'];?>"><img layer-src="<?php echo $r['thumb'];?>" src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></a>
                    </div>
                </div>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </div>
            <div id="pages" class=""><?php echo $pages;?></div>
        </div>
    </div>
</div>

<?php include template("content","_footer"); ?>