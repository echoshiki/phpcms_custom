<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><div class="page_menu">
    <div class="container d-flex p-0">

        <?php if(!$CATEGORYS[$top_parentid][type]) { ?>
        <div class="page_menu_item <?php if($catid == $top_parentid) { ?> active <?php } ?>">
            <a href="<?php echo $CATEGORYS[$top_parentid]['url'];?>" title="<?php echo $CATEGORYS[$top_parentid]['catname'];?>">全部</a>
        </div>
        <?php } ?>

        <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=cc7f48f6aeceac86c9a27f60838f2d0b&action=category&catid=%24top_parentid&num=8&siteid=%24siteid&order=listorder+ASC\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'category')) {$data = $content_tag->category(array('catid'=>$top_parentid,'siteid'=>$siteid,'order'=>'listorder ASC','limit'=>'8',));}?>
        <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
        <div class="page_menu_item <?php if($catid == $r[catid]) { ?> active <?php } ?>">
            <a href="<?php echo $r['url'];?>" title="<?php echo $r['catname'];?>"><?php echo $r['catname'];?></a>
        </div>
        <?php $n++;}unset($n); ?>
        <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>

    </div>
</div>