<?php
defined('IN_ADMIN') or exit('No permission resources.');
include $this->admin_tpl('header');
?>
<script type="text/javascript">
<!--
	$(function(){
		$.formValidator.initConfig({formid:"myform",autotip:true,onerror:function(msg,obj){window.top.art.dialog({content:msg,lock:true,width:'200',height:'50'}, function(){this.close();$(obj).focus();})}});
		$("#name").formValidator({onshow:"<?php echo L("input").L('site_name')?>",onfocus:"<?php echo L("input").L('site_name')?>"}).inputValidator({min:1,onerror:"<?php echo L("input").L('site_name')?>"}).ajaxValidator({type : "get",url : "",data :"m=admin&c=site&a=public_name&siteid=<?php echo $data['siteid']?>",datatype : "html",async:'true',success : function(data){	if( data == "1" ){return true;}else{return false;}},buttons: $("#dosubmit"),onerror : "<?php echo L('site_name').L('exists')?>",onwait : "<?php echo L('connecting')?>"}).defaultPassed();
		$("#dirname").formValidator({onshow:"<?php echo L("input").L('site_dirname')?>",onfocus:"<?php echo L("input").L('site_dirname')?>"}).inputValidator({min:1,onerror:"<?php echo L("input").L('site_dirname')?>"}).regexValidator({regexp:"username",datatype:"enum",param:'i',onerror:"<?php echo L('site_dirname_err_msg')?>"}).ajaxValidator({type : "get",url : "",data :"m=admin&c=site&a=public_dirname&siteid=<?php echo $data['siteid']?>",datatype : "html",async:'false',success : function(data){	if( data == "1" ){return true;}else{return false;}},buttons: $("#dosubmit"),onerror : "<?php echo L('site_dirname').L('exists')?>",onwait : "<?php echo L('connecting')?>"}).defaultPassed();
		$("#domain").formValidator({onshow:"<?php echo L('site_domain_ex')?>",onfocus:"<?php echo L('site_domain_ex')?>",tipcss:{width:'300px'},empty:false}).inputValidator({onerror:"<?php echo L('site_domain_ex')?>"}).regexValidator({regexp:"http(s?):\/\/(.+)\/$",onerror:"<?php echo L('site_domain_ex2')?>"});
		$("#template").formValidator({onshow:"<?php echo L('style_name_point')?>",onfocus:"<?php echo L('select_at_least_1')?>"}).inputValidator({min:1,onerror:"<?php echo L('select_at_least_1')?>"});
		$('#release_point').formValidator({onshow:"<?php echo L('publishing_sites_to_other_servers')?>",onfocus:"<?php echo L('choose_release_point')?>"}).inputValidator({max:4,onerror:"<?php echo L('most_choose_four')?>"});
		$('#default_style_input').formValidator({tipid:"default_style_msg",onshow:"<?php echo L('please_select_a_style_and_select_the_template')?>",onfocus:"<?php echo L('please_select_a_style_and_select_the_template')?>"}).inputValidator({min:1,onerror:"<?php echo L('please_choose_the_default_style')?>"});
	})
//-->
</script>
<style type="text/css">
.radio-label{ border-top:1px solid #e4e2e2; border-left:1px solid #e4e2e2}
.radio-label td{ border-right:1px solid #e4e2e2; border-bottom:1px solid #e4e2e2;background:#f6f9fd}
#dosubmit { text-align: center; display: inline-block; background: #009688; color: #fff; line-height: 32px; width: 100px; border: none;  }
</style>
<div class="pad-10">
    <form action="?m=admin&c=site&a=edit&siteid=<?php echo $siteid?>" method="post" id="myform">
        <fieldset>
            <legend><?php echo L('basic_configuration')?></legend>
            <table width="100%"  class="table_form">
                <tr>
                    <th width="80"><?php echo L('site_name')?>：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="name" id="name" size="30" value="<?php echo $data['name']?>" /></td>
                </tr>
                <tr>
                    <th><?php echo L('site_domain')?>：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="domain" id="domain"  size="30" value="<?php echo $data['domain']?>" /></td>
                </tr>
            </table>
        </fieldset>
        <div class="bk10"></div>
        <fieldset>
            <legend>信息配置</legend>
            <table width="100%"  class="table_form">
                <tr>
                    <th width="80">公司名称：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="company_cn" id="company_cn" size="30" value="<?php echo $data['company_cn']?>" /></td>
                </tr>
                <tr>
                    <th width="80">英文名称：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="company_en" id="company_en" size="30" value="<?php echo $data['company_en']?>" /></td>
                </tr>
                <tr>
                    <th width="80">联系人：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="contact" id="contact" size="30" value="<?php echo $data['contact']?>" /></td>
                </tr>
                <tr>
                    <th>客服QQ：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="qq" id="qq"  size="30" value="<?php echo $data['qq']?>" /></td>
                </tr>
                <tr>
                    <th>手机号码：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="mobile" id="mobile"  size="30" value="<?php echo $data['mobile']?>" /></td>
                </tr>
                <tr>
                    <th>座机号码：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="tel" id="tel"  size="30" value="<?php echo $data['tel']?>" /></td>
                </tr>
                <tr>
                    <th>电子邮箱：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="email" id="email"  size="30" value="<?php echo $data['email']?>" /></td>
                </tr>
                <tr>
                    <th>公司地址：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="address" id="address"  size="30" value="<?php echo $data['address']?>" /></td>
                </tr>
                <tr>
                    <th>地图坐标：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="mappoint" id="mappoint"  size="30" value="<?php echo $data['mappoint']?>" /> <a style="vertical-align: middle;" href="http://api.map.baidu.com/lbsapi/getpoint/" target="_blank">[坐标拾取]</a></td>
                </tr>
                <tr>
                    <th>邮编：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="zipcode" id="zipcode"  size="30" value="<?php echo $data['zipcode']?>" /></td>
                </tr>
                <tr>
                    <th>备案号：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="icp" id="icp"  size="30" value="<?php echo $data['icp']?>" /></td>
                </tr>
            </table>
        </fieldset>
        <div class="bk10"></div>
        <fieldset>
            <legend><?php echo L('seo_configuration')?></legend>
            <table width="100%"  class="table_form">
                <tr>
                    <th width="80"><?php echo L('site_title')?>：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="site_title" id="site_title" size="30" value="<?php echo $data['site_title']?>" /></td>
                </tr>
                <tr>
                    <th><?php echo L('keyword_name')?>：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="keywords" id="keywords" size="30" value="<?php echo $data['keywords']?>" /></td>
                </tr>
                <tr>
                    <th><?php echo L('description')?>：</th>
                    <td class="y-bg"><input type="text" class="input-text" name="description" id="description" size="30" value="<?php echo $data['description']?>" /></td>
                </tr>
            </table>
        </fieldset>
        <div class="bk10"></div>
        <input class="hidden" name="template[]" value="default"></input>
        <input type="hidden" name="default_style" value="default">

        <fieldset>
            <legend><?php echo L('site_att_config')?></legend>
            <table width="100%"  class="table_form">
                <tr>
                    <th width="130" valign="top"><?php echo L('site_att_upload_maxsize')?></th>
                    <td class="y-bg"><input type="text" class="input-text" name="setting[upload_maxsize]" id="upload_maxsize" size="10" value="<?php echo $setting['upload_maxsize'] ? $setting['upload_maxsize'] : '2000' ?>"/> KB </td>
                </tr>
                <tr>
                    <th width="130" valign="top"><?php echo L('site_att_allow_ext')?></th>
                    <td class="y-bg"><input type="text" class="input-text" name="setting[upload_allowext]" id="upload_allowext" size="50" value="<?php echo $setting['upload_allowext']?>"/></td>
                </tr>  
                <tr>
                    <th><?php echo L('site_att_gb_check')?></th>
                    <td class="y-bg"><?php echo $this->check_gd()?></td>
                    <tr>
                        <th><?php echo L('site_att_watermark_enable')?></th>
                        <td class="y-bg">
                            <input class="radio_style" name="setting[watermark_enable]" value="1" <?php echo $setting['watermark_enable']==1 ? 'checked="checked"' : ''?> type="radio"> <?php echo L('site_att_watermark_open')?>&nbsp;&nbsp;&nbsp;&nbsp;
                            <input class="radio_style" name="setting[watermark_enable]" value="0" <?php echo $setting['watermark_enable']==0 ? 'checked="checked"' : ''?> type="radio"> <?php echo L('site_att_watermark_close')?>
                        </td>
                    </tr>    
                    <tr>
                        <th><?php echo L('site_att_watermark_condition')?></th>
                        <td class="y-bg"><?php echo L('site_att_watermark_minwidth')?>
                            <input type="text" class="input-text" name="setting[watermark_minwidth]" id="watermark_minwidth" size="10" value="<?php echo $setting['watermark_minwidth'] ? $setting['watermark_minwidth'] : '300' ?>" /> X <?php echo L('site_att_watermark_minheight')?><input type="text" class="input-text" name="setting[watermark_minheight]" id="watermark_minheight" size="10" value="<?php echo $setting['watermark_minheight'] ? $setting['watermark_minheight'] : '300' ?>" /> PX
                        </td>
                    </tr>
                    <tr>
                        <th width="130" valign="top"><?php echo L('site_att_watermark_img')?></th>
                        <td class="y-bg"><input type="text" name="setting[watermark_img]" id="watermark_img" size="30" value="<?php echo $setting['watermark_img'] ? $setting['watermark_img'] : 'mark.gif' ?>"/><?php echo L('site_att_watermark_img_desc')?></td>
                    </tr> 
                    <tr>
                        <th width="130" valign="top"><?php echo L('site_att_watermark_pct')?></th>
                        <td class="y-bg"><input type="text" class="input-text" name="setting[watermark_pct]" id="watermark_pct" size="10" value="<?php echo $setting['watermark_pct'] ? $setting['watermark_pct'] : '100' ?>" />  <?php echo L('site_att_watermark_pct_desc')?></td>
                    </tr> 
                    <tr>
                        <th width="130" valign="top"><?php echo L('site_att_watermark_quality')?></th>
                        <td class="y-bg"><input type="text" class="input-text" name="setting[watermark_quality]" id="watermark_quality" size="10" value="<?php echo $setting['watermark_quality'] ? $setting['watermark_quality'] : '80' ?>" /> <?php echo L('site_att_watermark_quality_desc')?></td>
                    </tr> 
                    <tr>
                        <th width="130" valign="top"><?php echo L('site_att_watermark_pos')?></th>
                        <td>
                            <table width="100%" class="radio-label">
                                <tr>
                                    <td rowspan="3"><input class="radio_style" name="setting[watermark_pos]" value="10" type="radio" <?php echo ($setting['watermark_pos']==10) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_10')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="1" type="radio" <?php echo ($setting['watermark_pos']==1) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_1')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="2" type="radio" <?php echo ($setting['watermark_pos']==2) ? 'checked':'' ?>> <?php echo L('site_att_watermark_pos_2')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="3" type="radio" <?php echo ($setting['watermark_pos']==3) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_3')?></td>
                                </tr>
                                <tr>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="4" type="radio" <?php echo ($setting['watermark_pos']==4) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_4')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="5" type="radio" <?php echo ($setting['watermark_pos']==5) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_5')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="6" type="radio" <?php echo ($setting['watermark_pos']==6) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_6')?></td>
                                </tr>
                                <tr>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="7" type="radio" <?php echo ($setting['watermark_pos']==7) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_7')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="8" type="radio" <?php echo ($setting['watermark_pos']==8) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_8')?></td>
                                    <td><input class="radio_style" name="setting[watermark_pos]" value="9" type="radio" <?php echo ($setting['watermark_pos']==9) ? 'checked':''?>> <?php echo L('site_att_watermark_pos_9')?></td>
                                </tr>
                            </table>
                        </td></tr>
                    </table>
                </fieldset>
                <div class="bk15"></div>
                <input type="submit" id="dosubmit" name="dosubmit" value="<?php echo L('submit')?>" />
            </div>
        </form>
</div>
</body>
</html>