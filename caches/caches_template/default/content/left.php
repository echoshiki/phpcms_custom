<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><div class="left-col left">
    <div class="category-tab">
        <div class="tab-tt"><i class="layui-icon layui-icon-app"></i>&nbsp;&nbsp;&nbsp;<span><?php echo $CATEGORYS[$top_parentid]['catname'];?></span></div>
        <div class="tab-list-1">
            <?php if(!$CATEGORYS[$top_parentid][child]) { ?>
                <div class="item"><a href="javascript:void(0);"><i class="layui-icon layui-icon-triangle-r"></i>&nbsp;&nbsp;全部</a></div>
            <?php } else { ?>
                <?php $n=1;if(is_array(subcat($top_parentid,$CATEGORYS[$top_parentid][type],0,$siteid))) foreach(subcat($top_parentid,$CATEGORYS[$top_parentid][type],0,$siteid) AS $r) { ?>
                <div class="item">
                    <?php if(!$CATEGORYS[$r[catid]][child]) { ?>
                        <a href="<?php echo $CATEGORYS[$r['catid']]['url'];?>"><i class="layui-icon layui-icon-triangle-r"></i>&nbsp;&nbsp;<?php echo $CATEGORYS[$r['catid']]['catname'];?></a>
                    <?php } else { ?>
                        <a href="<?php echo $CATEGORYS[$r['catid']]['url'];?>"><i class="layui-icon layui-icon-triangle-d"></i>&nbsp;&nbsp;<?php echo $CATEGORYS[$r['catid']]['catname'];?></a>
                        <?php $n=1;if(is_array(subcat($r[catid],0,0,$siteid))) foreach(subcat($r[catid],0,0,$siteid) AS $v) { ?>
                            <div class="citem"><a href="<?php echo $CATEGORYS[$v['catid']]['url'];?>"><i class="layui-icon layui-icon-triangle-r"></i>&nbsp;&nbsp;<?php echo $CATEGORYS[$v['catid']]['catname'];?></a></div>
                        <?php $n++;}unset($n); ?>
                    <?php } ?>                  
                </div>
                <?php $n++;}unset($n); ?>
            <?php } ?>
        </div>
    </div>
    <div class="product-tab">
        <div class="tab-tt layui-bg-black"><i class="layui-icon layui-icon-template-1"></i>&nbsp;&nbsp;&nbsp;<span>最新产品</span></div>
        <div class="tab-list-2">
            <?php if(defined('IN_ADMIN')  && !defined('HTML')) {echo "<div class=\"admin_piao\" pc_action=\"content\" data=\"op=content&tag_md5=d748d3832d1d646bbe47afdac727a3af&action=lists&catid=13&order=listorder+DESC&num=4\"><a href=\"javascript:void(0)\" class=\"admin_piao_edit\">编辑</a>";}$content_tag = pc_base::load_app_class("content_tag", "content");if (method_exists($content_tag, 'lists')) {$data = $content_tag->lists(array('catid'=>'13','order'=>'listorder DESC','limit'=>'4',));}?>
            <?php $n=1;if(is_array($data)) foreach($data AS $r) { ?>
            <div class="item">
                <div class="pic">
                    <a href="<?php echo $r['url'];?>"><img src="<?php echo $r['thumb'];?>" alt="<?php echo $r['title'];?>"></a>
                </div>
                <a href="<?php echo $r['url'];?>" class="tt"><?php echo $r['title'];?></a>
            </div>
            <?php $n++;}unset($n); ?>
            <?php if(defined('IN_ADMIN') && !defined('HTML')) {echo '</div>';}?>
        </div>
    </div>
    <div class="contact-tab">
        <div class="tab-tt"><i class="layui-icon layui-icon-cellphone"></i>&nbsp;&nbsp;&nbsp;<span>联系方式</span></div>
        <div class="tab-list-3">
            <?php if($sitelist[1][tel]) { ?>
            <?php $tel = explode(',', $sitelist[1]['tel']); ?>
            <div class="item">
                <div class="tt">电 话：</div>
                <div class="value">
                    <?php foreach ($tel as $key => $value): ?>
                    <p><?php echo $value;?></p>
                    <?php endforeach ?>
                </div>
            </div>
            <?php } ?>
            <?php if($sitelist[1][mobile]) { ?>
            <?php $mobile = explode(',', $sitelist[1]['mobile']); ?>
            <div class="item">
                <div class="tt">手 机：</div>
                <div class="value">
                    <?php foreach ($mobile as $key => $value): ?>
                    <p><?php echo $value;?></p>
                    <?php endforeach ?>
                </div>
            </div>
            <?php } ?>
            <?php if($sitelist[1][email]) { ?>
            <div class="item">
                <div class="tt">邮 箱：</div>
                <div class="value"><?php echo $sitelist['1']['email'];?></div>
            </div>
            <?php } ?>
            <?php if($sitelist[1][address]) { ?>
            <div class="item">
                <div class="tt">地 址：</div>
                <div class="value"><?php echo $sitelist['1']['address'];?></div>
            </div>
            <?php } ?>
        </div>
    </div> 
</div>

