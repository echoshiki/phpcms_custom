<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>    

<div class="mod page">
    <div class="rom">

        <?php include template("content","left"); ?> 

        <!-- 标题 & 面包屑 -->
        <div class="right-col right">

            <?php include template("content","bread"); ?>

            <div class="content-info product-col">
                <div class="product-list">
                    <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=6409236ca5360973ea5db10dd75ab3bd&action=lists&catid=%24catid&order=id+DESC&page=%24page&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 12;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));if(!defined('IN_ADMIN') && $page > 1 && ceil($content_total/$pagesize) < $page){ob_end_clean();header("HTTP/1.1 404 Not Found");header("Status: 404 Not Found");include template("content", "404");ob_end_flush();exit;}$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
                    <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                    <div class="item">
                        <a href="<?php echo $r['thumb'];?>" data-rel="lightcase:myPhotos" title="<?php echo $r['title'];?>" data-lc-caption="<?php echo $r['description'];?>">
                            <div class="pic"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['description'];?>"></div>
                            <div class="tt"><?php echo $r['title'];?></div>
                            <div class="line"></div>
                        </a>
                    </div>
                    <?php $n++;}unset($n); ?>
                    <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
                    <div class="clear"></div> 
                </div>
                <br>
                <div id="pages" class="text-c"><?php echo $pages;?></div>
            </div>

        </div>
        <div class="clear"></div>
    </div>
</div>

<?php include template("content","footer"); ?>


