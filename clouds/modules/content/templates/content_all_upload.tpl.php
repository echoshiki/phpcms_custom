<?php
	defined('IN_ADMIN') or exit('No permission resources.');
	include $this->admin_tpl('header','admin');
?>
<script type="text/javascript">
	var charset = '<?php echo CHARSET;?>';
	var uploadurl = '<?php echo pc_base::load_config('system','upload_url')?>';
</script>
<link href="<?php echo CSS_PATH?>dialog.css" rel="stylesheet" type="text/css"/>
<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>dialog.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>content_addtop.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>colorpicker.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>hotkeys.js"></script>
<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>cookie.js"></script>
<script type="text/javascript">var catid=<?php echo $catid;?></script>

<script type="text/javascript" src="<?php echo JS_PATH?>ckeditor4/ckeditor.js"></script>
<script type="text/javascript" src="<?php echo JS_PATH?>uploadifive/handlers.js"></script>
<style type="text/css">
	.content { border: none !important; }
	#dosubmit { background: #009688; width:75px; line-height: 28px; color: #fff; border: none; border-radius: 3px; cursor: pointer; }
</style>
<form name="myform" id="myform" action="?m=content&c=content&a=uploads" method="post" enctype="multipart/form-data">
    <div class="col-auto">
    	<div class="content pad-6">
			<table width="100%" cellspacing="0" class="table_form">
				<tbody>	
				<tr>
			      	<th width="80"><font color="red">*</font>栏目</th>
			      	<td><input type="hidden" name="info[catid]" value="<?php echo $_GET['catid']; ?>"><?php echo $this->categorys[$_GET['catid']]['catname'] ?></td>
			    </tr>
				<tr>
			      <th width="80">组图</th>
			      <td><input name="info[pic]" type="hidden" value="1">
					<fieldset class="blue pad-10">
			        <legend>图片列表</legend><center><div class="onShow" id="nameTip">您最多可以同时上传 <font color="red">50</font> 张</div></center><div id="pic" class="picList"></div>
					</fieldset>
					<div class="bk10"></div>
					<?php 
						$isselectimage = 0;
						$upload_number = 50;
						$upload_allowext = 'gif|jpg|jpeg|png|bmp';
						$authkey = upload_key("{$upload_number},{$upload_allowext},$isselectimage,0,0,"); 
					?>
					<div class="picBut cu"><a href="javascript:void(0);" onclick="javascript:h5upload('pics_images', '附件上传','pic',change_images,'<?php echo $upload_number ?>,<?php echo $upload_allowext ?>,<?php echo $isselectimage ?>,0,0,','content','2','<?php echo $authkey ?>')"> 选择图片 </a></div>  </td>
			    </tr>
			    </tbody>
			</table>
        </div>
    </div> 
   	<input type="submit" type="submit" name="dosubmit" id="dosubmit" >  
</body>
</html>
