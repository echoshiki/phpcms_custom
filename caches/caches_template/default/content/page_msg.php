<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>    

<div class="mod page">
    <div class="rom">
        
        <?php include template("content","left"); ?>

        <!-- 标题 & 面包屑 -->
        <div class="right-col right">
        	
            <?php include template("content","bread"); ?>
 
		    <div class="content-info">
                <div class="content-info"><?php echo $content;?></div>
				<script language='javascript' src='<?php echo APP_PATH;?>index.php?m=formguide&c=index&a=show&formid=15&action=js&siteid=1'></script>
		    </div>
	    </div>
        
        <div class="clear"></div>

    </div>
</div>

<?php include template("content","footer"); ?>
