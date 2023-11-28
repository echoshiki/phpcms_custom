<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>

<div class="page">
    <div class="container py-3">

        <?php include template("content","page_menu"); ?>  

        <div class="page_list py-3 m-0">
            <div class="page_news_list row">
                <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=6409236ca5360973ea5db10dd75ab3bd&action=lists&catid=%24catid&order=id+DESC&page=%24page&num=12\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$pagesize = 12;$page = intval($page) ? intval($page) : 1;if($page<=0){$page=1;}$offset = ($page - 1) * $pagesize;$content_total = $content_tag->count(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));if(!defined('IN_ADMIN') && $page > 1 && ceil($content_total/$pagesize) < $page){ob_end_clean();header("HTTP/1.1 404 Not Found");header("Status: 404 Not Found");include template("content", "404");ob_end_flush();exit;}$pages = pages($content_total, $page, $pagesize, $urlrule);$data = $content_tag->lists(array('catid'=>$catid,'order'=>'id DESC','limit'=>$offset.",".$pagesize,'action'=>'lists',));}?>
                <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
                <div class="page_news_item col-4">
                    <div class="page_news_thumb">
                        <a href="<?php echo $r['url'];?>" title="<?php echo $r['title'];?>"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></a>
                    </div>
                    <div class="page_news_info">
                        <div class="page_news_title">
                            <a href="<?php echo $r['url'];?>" title="<?php echo $r['title'];?>"><?php echo $r['title'];?></a>
                        </div>
                        <div class="page_news_date ">
                            <span class=" d-flex align-items-center"><svg t="1700491375895" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="7948" width="200" height="200"><path d="M902.095238 438.857143v390.095238a73.142857 73.142857 0 0 1-73.142857 73.142857H195.047619a73.142857 73.142857 0 0 1-73.142857-73.142857V438.857143h780.190476z m-512 219.428571h-121.904762v73.142857h121.904762v-73.142857z m182.857143 0h-121.904762v73.142857h121.904762v-73.142857z m182.857143 0h-121.904762v73.142857h121.904762v-73.142857z m-365.714286-146.285714h-121.904762v73.142857h121.904762v-73.142857z m182.857143 0h-121.904762v73.142857h121.904762v-73.142857z m182.857143 0h-121.904762v73.142857h121.904762v-73.142857zM195.047619 170.666667h73.142857v121.904762h158.476191V170.666667H609.52381v121.904762h158.47619V170.666667H828.952381a73.142857 73.142857 0 0 1 73.142857 73.142857v121.904762H121.904762v-121.904762a73.142857 73.142857 0 0 1 73.142857-73.142857z m529.212952-48.761905v121.904762h-73.142857V121.904762h73.142857zM380.050286 121.904762v121.904762h-73.142857V121.904762h73.142857z" fill="#6c6c6c" p-id="7949"></path></svg><?php echo date('Y-m-d', $r[updatetime]);?></span>
                        </div>
                        <div class="page_news_description">
                            <p><?php echo $r['description'];?></p>
                        </div>
                    </div>
                </div>
                <?php $n++;}unset($n); ?>
                <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
            </div>
            <div id="pages" class=""><?php echo $pages;?></div>
        </div>
    </div>
</div>

<?php include template("content","footer"); ?>

