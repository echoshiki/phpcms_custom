<?php 
defined('IN_ADMIN') or exit('No permission resources.');
include $this->admin_tpl('header', 'admin');
?>
<div class="pad-lr-10">
<form name="myform" action="?m=formguide&c=formguide_info&a=delete" method="post">
<div class="table-list">
    <table width="100%" cellspacing="0">
        <thead>
            <tr>
            <th width="35" align="center"><input type="checkbox" value="" id="check_box" onclick="selectall('did[]');"></th>
			<th align="center">昵称</th>
			<th align="center">手机号码</th>
			<th align="center">微信</th>
			<th align="center">邮箱</th>
			<th align="center">留言日期</th>
			<th align="center">IP</th>
			<th width="300" align="center">留言内容</th>
			<th align="center">操作</th>
            </tr>
        </thead>
    	<tbody>
		<?php 
		 	if(is_array($datas)) { foreach($datas as $d) { ?>   
				<tr>
					<td align="center"><input type="checkbox" name="did[]" value="<?php echo $d['dataid']?>"></td>
					<td align="center"><?php echo $d['nickname']?></td>
					<td align="center"><?php echo $d['phone']; ?></td>
					<td align="center"><?php echo $d['wechat']; ?></td>
					<td align="center"><?php echo $d['email']; ?></td>
					<td align="center"><?php echo date('Y-m-d', $d['datetime'])?></td>
					<td align="center"><?php echo $d['ip']; ?></td>
					<td align="center"><?php echo str_cut($d['content'],60); ?></td>
					<td align="center"><a href="javascript:check('<?php echo $formid?>', '<?php echo $d['dataid']?>', '<?php echo safe_replace($d['username'])?>');void(0);">查看详细</a> | <a href="?m=formguide&c=formguide_info&a=public_delete&formid=<?php echo $formid?>&did=<?php echo $d['dataid']?>" onClick="return confirm('<?php echo L('confirm', array('message' => L('delete')))?>')"><?php echo L('del')?></a></td>
				</tr>
		<?php   } }  ?>
		</tbody>
	</table>
  
    <div class="btn"><label for="check_box"><?php echo L('selected_all')?>/<?php echo L('cancel')?></label>
		<input name="submit" type="submit" class="button" value="<?php echo L('remove_all_selected')?>" onClick="document.myform.action='?m=formguide&c=formguide_info&a=public_delete&formid=<?php echo $formid?>';return confirm('<?php echo L('affirm_delete')?>')">&nbsp;&nbsp;</div>  </div>
 <div id="pages"><?php echo $pages;?></div>
</form>
</div>
</body>
</html>
<script type="text/javascript">
function check(id, did, title) {
	window.top.art.dialog({id:'check'}).close();
	window.top.art.dialog({title:'<?php echo L('check')?>--'+title+'<?php echo L('submit_info')?>', id:'edit', iframe:'?m=formguide&c=formguide_info&a=public_view&formid='+id+'&did='+did ,width:'700px',height:'500px'}, function(){window.top.art.dialog({id:'check'}).close()});
}
</script>