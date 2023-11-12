<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?>
<?php 
	$qq = explode(',', $sitelist[1]['qq']); 
	$tel = explode(',', $sitelist[1]['tel']);
	$mobile = explode(',', $sitelist[1]['mobile']);
?>

<div class="qa-mod">
	<div id="qa-window">
		<div class="qa-qq">
			<?php foreach ($qq as $key => $value): ?>
				<div class="item"><a target="_blank" href="tencent://message/?uin=<?php echo $value;?>=yes"><img src="<?php echo MY_PATH;?>qq-btn.gif" alt=""></a></div>
			<?php endforeach ?>
		</div>	
		<div class="line"></div>
		<div class="qa-qrcode">
			<img src="<?php echo $CATEGORYS['24']['image'];?>" alt="二维码">
		</div>
		<div class="qa-hotline">
			<div class="tt">24小时服务热线</div>
			<?php foreach ($tel as $key => $value): ?>
			<div class="item"><?php echo $value;?></div>
			<?php endforeach ?>
			<?php foreach ($mobile as $key => $value): ?>
			<div class="item"><?php echo $value;?></div>
			<?php endforeach ?>
		</div>
		<div class="line"></div>

	</div>
</div>

<script>
layui.use('layer', function(){
  	var layer = layui.layer;
  	layer.open({
		type: 1,
		title:  ['<svg t="1644979449649" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2412" width="20" height="20"><path d="M468.3 83.2c-198.7 19.6-360.5 178.2-384 376.5-14.3 120.8 21.9 232.7 89.6 318.5l-24.4 125.9c-2.6 13.3 10.2 24.4 23 20l120.8-41.6c78.7 46.5 173.1 69.3 273.8 56.6 197.9-25 355.3-187.6 373.7-386.2C965.9 281.8 739.6 56.5 468.3 83.2z m302.5 525.6c0 12-9.7 21.7-21.7 21.7h-80.5c-12 0-21.7-9.7-21.7-21.7V491.7c0-10.9 8.1-19.5 18.5-21.1-13.5-65.9-72-115.7-141.8-115.7-69.9 0-128.3 49.7-141.8 115.7 10.4 1.6 18.5 10.2 18.5 21.1v117.1c0 12-9.7 21.7-21.7 21.7H365c3 48.1 39.2 86.9 86.2 93.8 2.5-6.4 8.7-11 16.1-11H534c9.6 0 17.4 7.8 17.4 17.4V767c0 9.6-7.8 17.4-17.4 17.4h-67c-8 0-14.4-5.5-16.5-12.9-72.5-7.4-129.4-67.3-132.5-140.9h-20.2c-12 0-21.7-9.7-21.7-21.7V491.7c0-12 9.7-21.7 21.7-21.7h1.9C314.4 359.4 409 273.7 523.5 273.7s209.1 85.6 223.8 196.2h1.9c12 0 21.7 9.7 21.7 21.7v117.2z" fill="#ffffff" p-id="2413"></path></svg>&nbsp;在线客服', 'background: #2980B9; background: -webkit-linear-gradient(to left, #6DD5FA, #6DD5FA, #2980B9); background: linear-gradient(to left, #6DD5FA, #6DD5FA, #2980B9); color: #fff; border-bottom: none; padding: 0 50px 0 12px; display: flex; align-items: center; height: 52px; line-height: 52px;'],
		area: ['160px'], //宽高
		shade: 0,
		offset: 'rb',
		content: $('.qa-mod'),
		cancel: function(index, layero){ 
		    $('.qa-mod').remove();
		    layer.close(index);
		  	return false; 
		}  
	});
});  
</script>
