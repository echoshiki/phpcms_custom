<?php defined('IN_ADMIN') or exit('No permission resources.'); ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=<?php echo CHARSET;?>" />
	<meta http-equiv="X-UA-Compatible" content="IE=EmulateIE7" />
	<title>云铺网络智能管理平台 CloudS Copyright 2019</title>
	<link rel="stylesheet" href="<?php echo JS_PATH?>layui/css/layui.css">
	<link rel="stylesheet" href="<?php echo JS_PATH?>layui/mod/css/admin.css">
	<link rel="stylesheet" href="<?php echo JS_PATH?>layui/mod/css/login.css">

	<div class="layadmin-user-login layadmin-user-display-show" id="LAY-user-login" style="display: none;">
		<div class="layadmin-user-login-main">
			<div class="layadmin-user-login-box layadmin-user-login-header">
				<h2>CloudS+</h2>
				<p>云铺网络建站管理平台</p>
			</div>
			<form action="index.php?m=admin&c=index&a=login&dosubmit=1" method="post" name="myform">
			<div class="layadmin-user-login-box layadmin-user-login-body layui-form">
				<div class="layui-form-item">
					<label class="layadmin-user-login-icon layui-icon layui-icon-username" for="LAY-user-login-username"></label>
					<input type="text" name="username" id="LAY-user-login-username" lay-verify="required" placeholder="用户名" class="layui-input">
				</div>
				<div class="layui-form-item">
					<label class="layadmin-user-login-icon layui-icon layui-icon-password" for="LAY-user-login-password"></label>
					<input type="password" name="password" id="LAY-user-login-password" lay-verify="required" placeholder="密码" class="layui-input">
				</div>
				<?php if ($is_verification_code == 1) { ?>
				<div class="layui-form-item">
					<div class="layui-row">
						<div class="layui-col-xs7">
							<label class="layadmin-user-login-icon layui-icon layui-icon-vercode" for="LAY-user-login-vercode"></label>
							<input type="text" name="vercode" id="LAY-user-login-vercode" lay-verify="required" placeholder="图形验证码" class="layui-input">
						</div>
						<div class="layui-col-xs5">
							<div style="margin-left: 10px;">
								<div id="yzm" class="yzm"><?php echo form::checkcode('code_img')?></div>
							</div>
						</div>
					</div>
				</div>
				<?php } ?>
				<div class="layui-form-item" style="margin-bottom: 20px;">
					<input type="checkbox" name="remember" lay-skin="primary" title="记住密码">
					<a href="javascript:void(0);" lay-filter="forget" id="forget" class="layadmin-user-jump-change layadmin-link" style="margin-top: 7px;">忘记密码？</a>
				</div>
				<div class="layui-form-item">
					<button class="layui-btn layui-btn-fluid" lay-submit lay-filter="LAY-user-login-submit">登 入</button>
				</div>
			</div>
			</form>
		</div>

		<div class="layui-trans layadmin-user-login-footer">

			<p>© 2019 <a href="http://www.yzypwl.com/" target="_blank">yzypwl.com 云铺网络 CloudS+ Co.,Ltd.</a></p>
			<p>
				<span><a href="/" target="_blank">回到首页</a></span>
				<span><a href="http://www.yzypwl.com/" target="_blank">前往官网</a></span>
			</p>
		</div>

	</div>

	<script src="<?php echo JS_PATH?>layui/layui.js"></script> 
	<script src="<?php echo JS_PATH?>jquery.min.js"></script>  
	<script>
	//JavaScript代码区域
	layui.use(['layer', 'element', 'form'], function(){
		var element = layui.element;
		var form = layui.form;
		var layer = layui.layer;
		$('#forget').click(function(){
			layer.msg('请联系技术人员获取密码');
		})

	});
	</script>
</html>