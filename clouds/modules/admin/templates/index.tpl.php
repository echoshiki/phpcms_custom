<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>CloudS+ Content Mangement System - Copyright 2019 云铺网络智能管理平台</title>
	<link rel="stylesheet" href="<?php echo JS_PATH?>layui/css/layui.css">
	<link href="<?php echo CSS_PATH?>dialog.css" rel="stylesheet" type="text/css" />
	<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>dialog.js"></script>
	<script type="text/javascript">
		var pc_hash = '<?php echo $hash; ?>';
		function iFrameHeight() {
		  var ifm = document.getElementById("iframepage");
		  var subWeb = document.frames ? document.frames["iframepage"].document : ifm.contentDocument;
		  if(ifm != null && subWeb != null) {
		    var h = (subWeb.body.scrollHeight < '300') ? "600" : subWeb.body.scrollHeight;
		    ifm.height = h ? h : "600" ;
		  }
		}
	</script>
	<style type="text/css">
		.layui-layout-admin .layui-logo { text-align: left; padding-left: 20px; }
		.layui-layout-admin .layui-footer { font-size: 12px; bottom: -5px; }
	</style>

	<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>jquery.min.js"></script>
	<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>admin_common.js"></script>
	<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>styleswitch.js"></script>
	<?php if(isset($show_validator)) { ?>
	<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>formvalidator.js" charset="UTF-8"></script>
	<script language="javascript" type="text/javascript" src="<?php echo JS_PATH?>formvalidatorregex.js" charset="UTF-8"></script>
	<?php } ?>
	<script type="text/javascript">
		window.focus();
		var pc_hash = '<?php echo $_SESSION['pc_hash'];?>';
		<?php if(!isset($show_pc_hash)) { ?>
			window.onload = function(){
			var html_a = document.getElementsByTagName('a');
			var num = html_a.length;
			for(var i=0;i<num;i++) {
				var href = html_a[i].href;
				if(href && href.indexOf('javascript:') == -1) {
					if(href.indexOf('?') != -1) {
						html_a[i].href = href+'&pc_hash='+pc_hash;
					} else {
						html_a[i].href = href+'?pc_hash='+pc_hash;
					}
				}
			}

			var html_form = document.forms;
			var num = html_form.length;
			for(var i=0;i<num;i++) {
				var newNode = document.createElement("input");
				newNode.name = 'pc_hash';
				newNode.type = 'hidden';
				newNode.value = pc_hash;
				html_form[i].appendChild(newNode);
			}
		}
	<?php } ?>
	</script>
</head>
<body class="layui-layout-body">
	<div class="layui-layout layui-layout-admin">
		<div class="layui-header">
			<div class="layui-logo">云铺管理平台</div>
			<!-- 头部区域（可配合layui已有的水平导航） -->
			<ul class="layui-nav layui-layout-left">
				<li class="layui-nav-item"><a href="?m=admin&c=category&a=init&module=admin&pc_hash=<?php echo $hash;?>" target="right"><i class="layui-icon layui-icon-console"></i></a></li>
				<li class="layui-nav-item"><a href="?m=admin&c=site&a=edit&siteid=1&pc_hash=<?php echo $hash;?>" target="right"><i class="layui-icon layui-icon-set"></i></a></li>
				<li class="layui-nav-item"><a href="?m=admin&c=cache_all&a=init&pc_hash=<?php echo $hash;?>" target="right"><i class="layui-icon layui-icon-refresh"></i></a></li>
				<li class="layui-nav-item"><a href="/" target="_blank"><i class="layui-icon layui-icon-home"></i></a></li>
			</ul>
			<ul class="layui-nav layui-layout-right">
				<li class="layui-nav-item">
					<a href="javascript:;">
						<i class="layui-icon layui-icon-username"></i>&nbsp;&nbsp;<?php echo $admin_username; ?>&nbsp;
					</a>
					<dl class="layui-nav-child">
						<dd><a href="?m=admin&c=admin_manage&a=public_edit_pwd" target="right">修改密码</a></dd>
					</dl>
				</li>
				<li class="layui-nav-item"><a href="?m=admin&c=index&a=public_logout">注销</a></li>
			</ul>
		</div>
		
		<?php if ($_SESSION['roleid'] == '2' || $_SESSION['roleid'] == '7') { $status = 'hidden'; } ?>
		<style>
			.hidden { display: none !important; }
		</style>

		<div class="layui-side layui-bg-black">
			<div class="layui-side-scroll">
				<!-- 左侧导航区域（可配合layui已有的垂直导航） -->
				<ul class="layui-nav layui-nav-tree" lay-filter="test" lay-shrink="all">
					<li class="layui-nav-item layui-nav-itemed">
						<a class="" href="javascript:;"><i class="layui-icon layui-icon-console"></i>&nbsp;&nbsp;内容管理</a>
						<dl class="layui-nav-child">
							<dd><a href="?m=admin&c=category&a=init&modelid=19&pc_hash=<?php echo $hash;?>" target="right">产品管理</a></dd>
							<dd><a href="?m=admin&c=category&a=init&modelid=20&pc_hash=<?php echo $hash;?>" target="right">新闻管理</a></dd>
							<dd><a href="?m=admin&c=category&a=init&modelid=21&pc_hash=<?php echo $hash;?>" target="right">案例管理</a></dd>
							<dd><a href="?m=admin&c=category&a=init&modelid=0&pc_hash=<?php echo $hash;?>" target="right">单页管理</a></dd>
							<dd><a href="?m=block&c=block_admin&a=init&pc_hash=<?php echo $hash;?>" target="right">碎片管理</a></dd>
							<dd><a href="?m=admin&c=category&a=init&modelid=22&pc_hash=<?php echo $hash;?>" target="right">广告管理</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;"><i class="layui-icon layui-icon-refresh"></i>&nbsp;&nbsp;缓存更新</a>
						<dl class="layui-nav-child">
							<dd><a href="?m=content&c=create_html&a=public_index&pc_hash=<?php echo $hash;?>" target="right">生成首页</a></dd>
							<dd><a href="?m=content&c=create_html&a=category&pc_hash=<?php echo $hash;?>" target="right">更新栏目页</a></dd>
							<dd><a href="?m=content&c=create_html&a=show&pc_hash=<?php echo $hash;?>" target="right">更新详情页</a></dd>
							<dd><a href="?m=content&c=create_html&a=update_urls&pc_hash=<?php echo $hash;?>" target="right">更新URL</a></dd>
							<dd><a href="?m=attachment&c=address&a=init&pc_hash=<?php echo $hash;?>" target="right">替换附件地址</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;"><i class="layui-icon layui-icon-diamond"></i>&nbsp;&nbsp;互动管理</a>
						<dl class="layui-nav-child">
							<dd><a href="?m=formguide&c=formguide_info&a=init&formid=15&pc_hash=<?php echo $hash;?>" target="right">留言管理</a></dd>
							<dd><a href="?m=formguide&c=formguide_info&a=init&formid=16&pc_hash=<?php echo $hash;?>" target="right">询价管理</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item">
						<a href="javascript:;"><i class="layui-icon layui-icon-set"></i>&nbsp;&nbsp;相关设置</a>
						<dl class="layui-nav-child">
							<dd><a href="?m=admin&c=admin_manage&a=public_edit_pwd&pc_hash=<?php echo $hash;?>" target="right">修改密码</a></dd>
							<dd><a href="?m=admin&c=site&a=edit&siteid=1&pc_hash=<?php echo $hash;?>" target="right">站点设置</a></dd>
							<dd><a href="?m=admin&c=position&a=init&pc_hash=<?php echo $hash;?>" target="right">推荐位</a></dd>
							<dd><a href="?m=link&c=link&a=init&pc_hash=<?php echo $hash;?>" target="right">友情链接</a></dd>
						</dl>
					</li>
					<li class="layui-nav-item <?php echo $status; ?>">
						<a href="javascript:;"><i class="layui-icon layui-icon-user"></i>&nbsp;&nbsp;用户中心</a>
						<dl class="layui-nav-child">
							<dd><a href="?m=member&c=member&a=manage&pc_hash=<?php echo $hash;?>" target="right">会员管理</a></dd>
							<dd><a href="?m=member&c=member_verify&a=manage&s=0&pc_hash=<?php echo $hash;?>" target="right">审核会员</a></dd>
							<dd><a href="?m=member&c=member_group&a=manage&pc_hash=<?php echo $hash;?>" target="right">会员组</a></dd>
							<dd><a href="?m=member&c=member_model&a=manage&pc_hash=<?php echo $hash;?>" target="right">会员模型</a></dd>
							<dd><a href="?m=member&c=member_setting&a=manage&pc_hash=<?php echo $hash;?>" target="right">模块配置</a></dd>
						</dl>
					</li>
					<?php if ($_SESSION['userid'] == '1'): ?>
					<li class="layui-nav-item <?php echo $status; ?>">
						<a href="javascript:;"><i class="layui-icon layui-icon-app"></i>&nbsp;&nbsp;高级扩展</a>
						<dl class="layui-nav-child">
							<dd><a href="?m=admin&c=database&a=export&pc_hash=<?php echo $hash; ?>" target="right">数据备份</a></dd>
							<dd><a href="?m=admin&c=admin_manage&a=init&pc_hash=<?php echo $hash; ?>" target="right">管理员设置</a></dd>
							<dd><a href="?m=admin&c=role&a=init&pc_hash=<?php echo $hash; ?>" target="right">角色设置</a></dd>
							<dd><a href="?m=content&c=sitemodel&a=init&pc_hash=<?php echo $hash; ?>" target="right">模型管理</a></dd>
							<dd><a href="?m=admin&c=setting&a=init&&tab=1&pc_hash=<?php echo $hash; ?>" target="right">资源配置</a></dd>
							<dd><a href="?m=admin&c=setting&a=init&&tab=4&pc_hash=<?php echo $hash; ?>" target="right">邮箱配置</a></dd>
							<dd><a href="?m=admin&c=setting&a=init&&tab=2&pc_hash=<?php echo $hash; ?>" target="right">安全配置</a></dd>
							<dd><a href="?m=formguide&c=formguide&a=init&pc_hash=<?php echo $hash; ?>" target="right">表单向导</a></dd>
							<dd><a href="?m=admin&c=linkage&a=init&pc_hash=<?php echo $hash; ?>" target="right">联动菜单</a></dd>
							<dd><a href="?m=scan&c=index&a=init&pc_hash=<?php echo $hash; ?>" target="right">木马查杀</a></dd>
							<dd><a href="?m=admin&c=googlesitemap&a=set&pc_hash=<?php echo $hash; ?>" target="right">Sitemaps</a></dd>
							<dd><a href="?m=admin&c=ipbanned&a=init&pc_hash=<?php echo $hash; ?>" target="right">ip禁止</a></dd>
							<dd><a href="?m=admin&c=urlrule&a=init&pc_hash=<?php echo $hash; ?>" target="right">url规则</a></dd>
							<dd><a href="?m=admin&c=log&a=init&pc_hash=<?php echo $hash; ?>" target="right">操作日志</a></dd>
						</dl>
					</li>
					<?php endif ?>
				</ul>
			</div>
		</div>
		
		<div class="layui-body">
			<!-- 内容主体区域 -->
			<div style="padding: 15px;">
				<iframe name="right" target="right" id="iframepage" src="?m=admin&c=category&a=init&module=admin&pc_hash=<?php echo $_SESSION['pc_hash'];?>" frameborder="false" scrolling="no" style="border:none; margin-bottom:30px" width="100%" allowtransparency="true" onLoad="iFrameHeight()"></iframe>
			</div>
		</div>
		
		<div class="layui-footer">
			<!-- 底部固定区域 -->
			© yzypwl.com - 扬州云铺网络科技有限公司 CloudS+ Co.,Ltd. 版权所有
		</div>
	</div>
	<script src="<?php echo JS_PATH?>layui/layui.js"></script>
	<script>
	//JavaScript代码区域
	layui.use('element', function(){
		var element = layui.element;
		
	});
	</script>
</body>
</html>