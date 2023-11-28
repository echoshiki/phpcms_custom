<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>   

<div class="page">
    <div class="container py-3">
        <?php include template("content","page_menu"); ?>  
        <div class="page_content py-5">
            <h5 class="page_title text-center">
                <?php echo $CATEGORYS[$catid]['catname'];?>
            </h5>
            <div class="page_inner">
                <?php echo $content;?>
            </div>
        </div>
    </div>
</div>

<?php include template("content","footer"); ?>
