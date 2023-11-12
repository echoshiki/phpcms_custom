<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>    

<div class="mod page">
    <div class="rom">

        <?php include template("content","left"); ?> 

        <!-- 标题 & 面包屑 -->
        <div class="right-col right">

            <?php include template("content","bread"); ?>

            <div class="content-info">
                <div class="news-list">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=bcddcefd9aaf7ce27b29bf304f8b9f5c&action=lists&catid=%24catid&order=id+DESC&page=%24page&num=20\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 20;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));if(!defined('IN_ADMIN') && $page > 1 && ceil($content_total/$pagesize) < $page){ob_end_clean();header("HTTP/1.1 404 Not Found");header("Status: 404 Not Found");include template("content", "404");ob_end_flush();exit;}$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="item">
                    <div class="thumb left"><a href="<?php echo $r['url'];?>"><img src="<?php if($r[thumb]) { ?><?php echo $r['thumb'];?><?php } else { ?><?php echo MY_PATH;?>no-news-pic.jpg<?php } ?>" alt="<?php echo $r['title'];?>"></a></div>
                    <div class="information left">
                        <div class="tt"><a href="<?php echo $r['url'];?>"><?php echo $r['title'];?></a></div>
                        <div class="date"><i class="layui-icon layui-icon-date"></i>&nbsp;&nbsp;发布日期：<?php echo date('Y-m-d',$r['inputtime']);?></div>
                        <div class="description"><?php echo $r['description'];?></div>
                    </div>
                    <div class="clear"></div>
                </div>
                <div class="line"></div>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?> 
                </div>
                <br>
                <div id="pages" class="text-c"><?php echo $pages;?></div>
            </div>

        </div>
        <div class="clear"></div>
    </div>
</div>

<?php include template("content","footer"); ?>
