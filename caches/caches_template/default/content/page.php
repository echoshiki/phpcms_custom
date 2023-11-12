<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>   

<?php
      if (empty($content)) {
          $childString = $CATEGORYS[$catid]['arrchildid'];
          $childArray = explode(',',$childString);
          $childId = $childArray[1];
          if ((count($childArray)>1)&&!empty($childId)) { header('Location:'.$CATEGORYS[$childId]['url']); }   
      }
?> 

<div class="mod page">
    <div class="rom">

        <?php include template("content","left"); ?> 

        <!-- 标题 & 面包屑 -->
        <div class="right-col right">

            <?php include template("content","bread"); ?>
        
    		    <div class="content-info"><?php echo $content;?></div>

        </div>
        <div class="clear"></div>
    </div>
</div>

<?php include template("content","footer"); ?>
