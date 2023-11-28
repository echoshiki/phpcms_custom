# phpcms bakfile
# version:PHPCMS V9
# time:2023-11-28 10:35:00
# type:phpcms
# phpcms:http://www.phpcms.cn
# --------------------------------------------------------


DROP TABLE IF EXISTS `yp_admin`;
CREATE TABLE `yp_admin` (
  `userid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `roleid` smallint DEFAULT '0',
  `encrypt` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lastloginip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `lastlogintime` int unsigned DEFAULT '0',
  `email` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `realname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `card` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `lang` varchar(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`userid`),
  KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_admin` VALUES('1','super_user','89549b5d2736c42c1fd34ceca3ea4f3d','1','psw2QD','192.168.65.1','1701092180','admin@admin.com','管理员','','');
INSERT INTO `yp_admin` VALUES('2','admin','3fb4f765451524cd5346b4a7f98f7bb3','1','cWa1PE','180.119.116.149','1562056910','admin@admin.com','','','');

DROP TABLE IF EXISTS `yp_admin_panel`;
CREATE TABLE `yp_admin_panel` (
  `menuid` mediumint unsigned NOT NULL,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `name` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `url` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `datetime` int unsigned DEFAULT '0',
  UNIQUE KEY `userid` (`menuid`,`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_admin_role`;
CREATE TABLE `yp_admin_role` (
  `roleid` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `rolename` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleid`),
  KEY `listorder` (`listorder`),
  KEY `disabled` (`disabled`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_admin_role` VALUES('1','超级管理员','超级管理员','0','0');
INSERT INTO `yp_admin_role` VALUES('2','站点管理员','站点管理员','0','0');
INSERT INTO `yp_admin_role` VALUES('7','发布人员','发布人员','0','0');

DROP TABLE IF EXISTS `yp_admin_role_priv`;
CREATE TABLE `yp_admin_role_priv` (
  `roleid` tinyint unsigned NOT NULL DEFAULT '0',
  `m` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `c` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `a` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  KEY `roleid` (`roleid`,`m`,`c`,`a`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','video2content','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','stat','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','import_ku6video','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','player','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','open','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','complete_info','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','open','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','subscribe_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','sub_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','video','video','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','phpsso','menu','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','upgrade','index','checkfile','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','upgrade','index','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_menu','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_menu','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_menu','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_menu','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','copyfrom','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','scan','index','md5_creat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','scan','index','scan_report','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','scan','index','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','cache_all','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','log','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','log','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','downservers','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','ipbanned','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','ipbanned','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','ipbanned','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','keylink','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','keylink','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','keylink','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','keylink','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','googlesitemap','set','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','urlrule','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','urlrule','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','urlrule','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','urlrule','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','database','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','database','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','database','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','workflow','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','workflow','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','workflow','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','workflow','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','linkage','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','linkage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','badword','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','badword','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','badword','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','badword','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','badword','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','badword','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','menu','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','menu','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','menu','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','menu','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','extend_all','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','extend','init_extend','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html','public_index','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html_opt','index','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','public_edit_info','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','public_edit_pwd','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','index','public_main','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','tag','tag','lists','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','tag','tag','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','tag','tag','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','tag','tag','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','tag','tag','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','template_bak','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','template_bak','restore','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','template_bak','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','edit_pc_tag','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','visualization','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','edit_file','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','add_file','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','edit_file','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','style','updatename','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','style','disable','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','file','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','style','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','style','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','style','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','template','style','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','move','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','sort','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_modelfield','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_modelfield','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_modelfield','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_modelfield','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_model','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_group','sort','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_group','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_group','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_group','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_group','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_group','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_setting','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','memberinfo','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','search','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','move','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','unlock','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','lock','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','modelinfo','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','reject','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','ignore','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','pass','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','manage','s=5','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','manage','s=4','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','manage','s=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','manage','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','manage','s=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member_verify','manage','s=0','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','member','member','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','type_manage','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','type_manage','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','type_manage','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','type_manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','disabled','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel_field','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','sitemodel','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','batch_edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','count_items','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','add','s=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','add','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','public_cache','module=admin','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','add','s=0','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','category','init','module=admin','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','position','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','position','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','position','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content_settings','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','clear_data','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html','public_index','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html','category','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html','update_urls','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html','show','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','release','index','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','release','index','failed','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','release','index','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','release','html','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','comment','check','checks','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','comment','comment_admin','listinfo','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','import_content','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','import_program_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','import_program_add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','content_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','copy','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','col_content','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','node_import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','publist','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','col_url_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','collection','node','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','history_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','history_restore','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','block_update','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','block','block_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','create_special_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','html','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','album','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','content','listorder','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','content','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','content','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','content','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','listorder','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','elite','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','special','special','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','attachment','address','update','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','attachment','address','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','attachment','manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','attachment','manage','dir','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','attachment','manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','listorder','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','create_html','batch_show','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','add_othors','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','remove','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','push','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','pass','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','content','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','module','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','module','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','sms','sms','sms_sent','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','sms','sms','sms_api','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','sms','sms','sms_buy_history','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','sms','sms','sms_pay_history','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','sms','sms','sms_setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','sms','sms','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','type_delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','type_edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','type_manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','wap','wap_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide_field','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide_field','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','stat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','disabled','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide_info','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','formguide','formguide','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','poster_template','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','create_js','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','poster','stat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','poster','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','poster','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','poster','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','poster','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','poster','space','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','mood','mood_admin','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','mood','mood_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','message','message','message_group_manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','message','message','message_send','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','message','message','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','message','message','send_one','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','message','message','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','create_js','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','statistics_userlist','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','statistics','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','vote','vote','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','check_register','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','list_type','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','add_type','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','link','link','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','comment','comment_admin','lists','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','comment','comment_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','announce','admin_announce','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','announce','admin_announce','init','s=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','announce','admin_announce','init','s=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','announce','admin_announce','edit','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','announce','admin_announce','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','announce','admin_announce','init','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','search','search_type','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','search','search_admin','createindex','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','search','search_admin','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','search','search_type','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','search','search_type','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','data','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','data','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','data','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','dbsource_admin','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','dbsource_admin','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','dbsource_admin','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','dbsource_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','dbsource','data','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','pay_stat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','spend','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','modify_deposit','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','discount','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','pay_cancel','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','pay_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','pay_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','pay','payment','pay_list','s=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','module','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','module','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','member_manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','role_priv','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','priv_setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','role','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','remove_card','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','creat_card','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','card','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin_manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','init','&tab=5','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','save','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','init','&tab=4','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','init','&tab=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','init','&tab=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','release_point','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','release_point','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','release_point','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','release_point','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','site','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','site','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','site','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','site','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','admin','admin','','1');
INSERT INTO `yp_admin_role_priv` VALUES('2','admin','setting','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin','admin','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','site','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','site','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','site','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','site','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','release_point','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','release_point','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','release_point','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','release_point','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','init','&tab=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','init','&tab=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','init','&tab=4','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','save','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','setting','init','&tab=5','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','card','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','creat_card','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','remove_card','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','priv_setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','role_priv','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','member_manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','role','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','module','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','module','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','pay_list','s=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','pay_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','pay_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','pay_cancel','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','discount','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','modify_deposit','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','spend','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','pay','payment','pay_stat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','data','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','dbsource_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','dbsource_admin','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','dbsource_admin','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','dbsource_admin','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','data','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','data','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','dbsource','data','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','search','search_type','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','search','search_type','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','search','search_admin','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','search','search_admin','createindex','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','search','search_type','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','announce','admin_announce','init','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','announce','admin_announce','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','announce','admin_announce','edit','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','announce','admin_announce','init','s=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','announce','admin_announce','init','s=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','announce','admin_announce','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','comment','comment_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','comment','comment_admin','lists','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','add_type','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','list_type','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','link','link','check_register','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','statistics','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','statistics_userlist','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','vote','vote','create_js','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','message','message','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','message','message','send_one','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','message','message','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','message','message','message_send','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','message','message','message_group_manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','mood','mood_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','mood','mood_admin','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','poster','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','poster','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','poster','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','poster','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','poster','stat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','create_js','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','poster','space','poster_template','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide_info','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','disabled','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','stat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide_field','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide_field','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','formguide','formguide','setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','type_manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','type_edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','wap','wap_admin','type_delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','sms','sms','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','sms','sms','sms_setting','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','sms','sms','sms_pay_history','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','sms','sms','sms_buy_history','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','sms','sms','sms_api','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','sms','sms','sms_sent','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','module','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','module','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','pass','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','push','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','remove','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','add_othors','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html','batch_show','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','listorder','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','attachment','manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','attachment','manage','dir','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','attachment','manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','attachment','address','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','attachment','address','update','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','elite','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','listorder','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','content','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','content','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','content','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','content','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','content','listorder','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','album','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','html','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','special','special','create_special_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','block_update','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','history_restore','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','block','block_admin','history_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','col_url_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','publist','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','node_import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','col_content','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','copy','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','content_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','import_program_add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','import_program_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','collection','node','import_content','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','comment','comment_admin','listinfo','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','comment','check','checks','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','release','html','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','release','index','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','release','index','failed','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','release','index','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html','show','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html','update_urls','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html','category','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html','public_index','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content','clear_data','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','content_settings','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','position','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','position','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','position','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','init','module=admin','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','add','s=0','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','public_cache','module=admin','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','add','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','add','s=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','count_items','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','category','batch_edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel_field','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','disabled','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','sitemodel','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','type_manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','type_manage','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','type_manage','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','type_manage','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','manage','s=0','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','manage','s=2','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','manage','s=1','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','manage','s=3','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','manage','s=4','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','manage','s=5','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','pass','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','ignore','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','reject','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_verify','modelinfo','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','lock','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','unlock','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','move','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','search','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member','memberinfo','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_setting','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_group','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_group','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_group','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_group','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_group','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_group','sort','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_modelfield','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_modelfield','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_modelfield','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_modelfield','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','sort','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_model','move','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','style','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','','','','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','style','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','style','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','style','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','style','disable','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','style','updatename','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','edit_file','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','add_file','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','edit_file','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','visualization','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','file','edit_pc_tag','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','template_bak','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','template_bak','restore','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','template','template_bak','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','tag','tag','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','tag','tag','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','tag','tag','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','tag','tag','del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','tag','tag','lists','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','index','public_main','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','public_edit_pwd','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','admin_manage','public_edit_info','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html_opt','index','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','create_html','public_index','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','extend','init_extend','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','extend_all','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','menu','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','menu','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','menu','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','menu','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','badword','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','badword','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','badword','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','badword','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','badword','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','badword','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','linkage','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','linkage','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','workflow','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','workflow','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','workflow','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','content','workflow','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','database','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','database','export','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','database','import','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','urlrule','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','urlrule','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','urlrule','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','urlrule','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','googlesitemap','set','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','keylink','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','keylink','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','keylink','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','keylink','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','ipbanned','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','ipbanned','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','ipbanned','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','downservers','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','log','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','log','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','cache_all','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','scan','index','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','scan','index','scan_report','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','scan','index','md5_creat','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','copyfrom','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_menu','manage','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_menu','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_menu','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','member','member_menu','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','upgrade','index','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','upgrade','index','checkfile','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','admin','phpsso','menu','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','sub_del','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','subscribe_list','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','open','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','complete_info','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','open','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','player','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','import_ku6video','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','edit','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','delete','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','add','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','stat','init','','1');
INSERT INTO `yp_admin_role_priv` VALUES('7','video','video','video2content','','1');

DROP TABLE IF EXISTS `yp_announce`;
CREATE TABLE `yp_announce` (
  `aid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `title` char(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `starttime` date NOT NULL DEFAULT '1000-01-01',
  `endtime` date NOT NULL DEFAULT '1000-01-01',
  `username` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `addtime` int unsigned NOT NULL DEFAULT '0',
  `hits` smallint unsigned NOT NULL DEFAULT '0',
  `passed` tinyint unsigned NOT NULL DEFAULT '0',
  `style` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `show_template` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`aid`),
  KEY `siteid` (`siteid`,`passed`,`endtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_attachment`;
CREATE TABLE `yp_attachment` (
  `aid` int unsigned NOT NULL AUTO_INCREMENT,
  `module` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `filename` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `filepath` char(200) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `filesize` int unsigned NOT NULL DEFAULT '0',
  `fileext` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `isimage` tinyint unsigned NOT NULL DEFAULT '0',
  `isthumb` tinyint unsigned NOT NULL DEFAULT '0',
  `downloads` mediumint unsigned NOT NULL DEFAULT '0',
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `uploadtime` int unsigned NOT NULL DEFAULT '0',
  `uploadip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `authcode` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`aid`),
  KEY `authcode` (`authcode`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_attachment` VALUES('1','content','14','20231117231130785.jpg','2023/1128/20231128095933490.jpg','20300','jpg','1','0','0','1','1701136773','192.168.65.1','1','1c2614d05890b56bb34e4a2d8c1eb0fc','1');
INSERT INTO `yp_attachment` VALUES('2','content','0','20220221012549378.jpg','2023/1128/20231128100001199.jpg','39692','jpg','1','0','0','1','1701136801','192.168.65.1','0','1bbd3d1f7b31f506ce2f2bf0dd281079','1');
INSERT INTO `yp_attachment` VALUES('3','content','0','pexels-aleksandar-pasaric-618079.jpg','2023/1128/20231128100206767.jpg','365146','jpg','1','0','0','1','1701136926','192.168.65.1','0','398f69c763473bb292e4b7084dbe0071','1');
INSERT INTO `yp_attachment` VALUES('4','content','0','厂房.jpg','2023/1128/20231128100352627.jpg','169057','jpg','1','0','0','1','1701137032','192.168.65.1','0','8e3e90fc091650100bb85d3067d6f877','1');
INSERT INTO `yp_attachment` VALUES('5','content','0','20231128100410710.jpg','2023/1128/20231128100410519.jpg','297470','jpg','1','0','0','1','1701137050','192.168.65.1','0','38bf203b3e6096a590bd77ddb7764cf1','1');
INSERT INTO `yp_attachment` VALUES('6','content','0','20231128100425715.jpg','2023/1128/20231128100425540.jpg','324365','jpg','1','0','0','1','1701137065','192.168.65.1','0','840060b3dc865d5c654efd1350d5e4f0','1');

DROP TABLE IF EXISTS `yp_attachment_index`;
CREATE TABLE `yp_attachment_index` (
  `keyid` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `aid` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  KEY `keyid` (`keyid`),
  KEY `aid` (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_attachment_index` VALUES('c-14-1','1');

DROP TABLE IF EXISTS `yp_badword`;
CREATE TABLE `yp_badword` (
  `badid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `badword` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `level` tinyint NOT NULL DEFAULT '1',
  `replaceword` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `lastusetime` int unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`badid`),
  UNIQUE KEY `badword` (`badword`),
  KEY `usetimes` (`replaceword`,`listorder`),
  KEY `hits` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_block`;
CREATE TABLE `yp_block` (
  `id` int NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned DEFAULT '0',
  `name` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `pos` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `type` tinyint(1) DEFAULT '0',
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `template` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `pos` (`pos`),
  KEY `type` (`type`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_block` VALUES('1','1','首页简介','about','1','<div style=\"text-align:center\">\r\n<div>\r\n<div style=\"text-align:left\">\r\n<p>扬州云铺网络有限公司自成立起，一直致力于用时下主流的云技术服务于各行各业，包括但不限于扬州做网站建设、关键词/朋友圈推广、微信公众号搭建/小程序开发、抖音推广建设、OA/ERP软件开发等，我们拥有一套完整的客服服务流程，从售前洽谈、项目实施到售后服务，每一步我们力求做到扎实细腻，真正一站式管家服务让你没有任何后顾之忧。</p>\r\n\r\n<p>成立数年间，我们已与多家本地著名企业达成战略合作，每一单的客户案例都凝聚着云铺服务决心的点点滴滴，这些点滴也会更加坚定我们将互联网东风带给更多企业的决心！</p>\r\n</div>\r\n</div>\r\n</div>\r\n\r\n<p>&nbsp;</p>','');
INSERT INTO `yp_block` VALUES('2','1','领导寄语','boss','1','董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语董事长寄语。','');

DROP TABLE IF EXISTS `yp_block_history`;
CREATE TABLE `yp_block_history` (
  `id` int NOT NULL AUTO_INCREMENT,
  `blockid` int unsigned DEFAULT '0',
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `creat_at` int unsigned DEFAULT '0',
  `userid` mediumint unsigned DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_block_history` VALUES('1','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"\",\"template\":\"\"}','1553519289','1','super_user');
INSERT INTO `yp_block_history` VALUES('2','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"\\u626c\\u5dde\\u5e02\\u4e91\\u94fa\\u7f51\\u7edc\\u6709\\u9650\\u516c\\u53f8\\u662f\\u4e00\\u5bb6\\u6781\\u5176\\u5bcc\\u6709\\u671d\\u6c14\\u7684\\u4e92\\u8054\\u7f51\\u65b0\\u5174\\u4f01\\u4e1a\\uff0c\\u6211\\u4eec\\u6709\\u7740\\u5353\\u8d8a\\u7684\\u6280\\u672f\\u7814\\u53d1\\u56e2\\u961f\\uff0c\\u6211\\u4eec\\u7684\\u670d\\u52a1\\u66f4\\u662f\\u51e0\\u4e4e\\u6db5\\u76d6\\u4e86\\u4e92\\u8054\\u7f51\\u5927\\u90e8\\u5206\\u4ea7\\u54c1\\u9886\\u57df\\uff0c\\u5305\\u62ec\\u4f46\\u4e0d\\u9650\\u4e8e\\u4f01\\u4e1a\\u7f51\\u7ad9\\u5efa\\u8bbe\\u3001\\u5fae\\u4fe1\\u516c\\u4f17\\u53f7\\/\\u5c0f\\u7a0b\\u5e8f\\u3001\\u6dd8\\u5b9d\\u963f\\u91cc\\u5df4\\u5df4\\u88c5\\u4fee\\u3001SEO\\u5173\\u952e\\u8bcd\\u4f18\\u5316\\u4ee5\\u53ca\\u7535\\u5546\\u5e73\\u53f0\\u642d\\u5efa\\u3002\\u6211\\u4eec\\u5c06\\u4e0d\\u65ad\\u5b8c\\u5584\\u81ea\\u8eab\\u7684\\u4ea7\\u54c1\\u9635\\u5bb9\\uff0c\\u4e3a\\u5e7f\\u5927\\u4e2d\\u5c0f\\u4f01\\u4e1a\\u5e26\\u53bb\\u4e92\\u8054\\u7f51\\u6d6a\\u6f6e\\u7684\\u529b\\u91cf\\u3002\",\"template\":\"\"}','1554365846','1','super_user');
INSERT INTO `yp_block_history` VALUES('3','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">&nbsp;<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002&lsquo;<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">&nbsp;<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\u672c\\u4f01\\u4e1a\\u7acb\\u8db3\\u73b0\\u4ee3\\u79d1\\u6280\\u7406\\u8bba\\u548c\\u73b0\\u4ee3\\u4f01\\u4e1a\\u7ba1\\u7406\\u7406\\u5ff5\\uff0c \\u6ce8\\u91cd\\u4eba\\u624d\\u8d28\\u91cf\\uff0c \\u8bb2\\u7a76\\u96c6\\u7ea6\\u5f00\\u53d1\\uff0c \\u805a\\u96c6\\u4e86\\u4e00\\u6279\\u5177\\u6709\\u9ad8\\u6c34\\u5e73\\u7684\\u7ba1\\u7406\\u4eba\\u624d\\u548c\\u5e94\\u7528\\u6280\\u672f\\u4eba\\u624d\\uff0c \\u4ee5\\u670d\\u52a1\\u4e8e\\u751f\\u4ea7\\uff0c \\u5949\\u732e\\u4e8e\\u5ba2\\u6237\\u3002 \\u76ee\\u524d\\u5728\\u5de5\\u4e1a\\u9632\\u8150\\u3001 \\u9632\\u9508\\u9886\\u57df\\uff0c \\u6052\\u5f69\\u4ea7\\u54c1\\u4ee5\\u5176\\u73af\\u4fdd\\u9ad8\\u8d28\\u91cf\\u3001 \\u591a\\u54c1\\u79cd\\u3001 \\u5b8c\\u5584\\u7684\\u670d\\u52a1\\u6df1\\u5f97\\u5e7f\\u5927\\u7528\\u6237\\u7684\\u4fe1\\u8d56\\u3002<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">&nbsp;<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\u4e3a\\u4e86\\u8fdb\\u4e00\\u6b65\\u9002\\u5e94\\u5de5\\u4e1a\\u9632\\u8150\\u3001\\u9632\\u9508\\u53d1\\u5c55\\u7684\\u9700\\u8981\\uff0c\\u6ee1\\u8db3\\u7528\\u6237\\u7684\\u9700\\u6c42\\uff0c\\u6211\\u4eec\\u6052\\u5f69\\u4eba\\u5c06\\u4fdd\\u6301\\u548c\\u53d1\\u626c&ldquo;\\u66f4\\u65b0\\u3001 \\u66f4\\u5b8c\\u7f8e&rdquo;\\u7684\\u4f01\\u4e1a\\u7cbe\\u795e\\uff0c\\u70ed\\u5ff1\\u5730\\u4e3a\\u5e7f\\u5927\\u7528\\u6237\\u670d\\u52a1\\u3002<\\/div>\",\"template\":\"\"}','1554365861','1','super_user');
INSERT INTO `yp_block_history` VALUES('4','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">&nbsp;<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">&nbsp;<\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">&nbsp;<\\/div>\",\"template\":\"\"}','1554365878','1','super_user');
INSERT INTO `yp_block_history` VALUES('5','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002&lsquo;<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u672c\\u4f01\\u4e1a\\u7acb\\u8db3\\u73b0\\u4ee3\\u79d1\\u6280\\u7406\\u8bba\\u548c\\u73b0\\u4ee3\\u4f01\\u4e1a\\u7ba1\\u7406\\u7406\\u5ff5\\uff0c \\u6ce8\\u91cd\\u4eba\\u624d\\u8d28\\u91cf\\uff0c \\u8bb2\\u7a76\\u96c6\\u7ea6\\u5f00\\u53d1\\uff0c \\u805a\\u96c6\\u4e86\\u4e00\\u6279\\u5177\\u6709\\u9ad8\\u6c34\\u5e73\\u7684\\u7ba1\\u7406\\u4eba\\u624d\\u548c\\u5e94\\u7528\\u6280\\u672f\\u4eba\\u624d\\uff0c \\u4ee5\\u670d\\u52a1\\u4e8e\\u751f\\u4ea7\\uff0c \\u5949\\u732e\\u4e8e\\u5ba2\\u6237\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp;<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1554365892','1','super_user');
INSERT INTO `yp_block_history` VALUES('6','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u672c\\u4f01\\u4e1a\\u7acb\\u8db3\\u73b0\\u4ee3\\u79d1\\u6280\\u7406\\u8bba\\u548c\\u73b0\\u4ee3\\u4f01\\u4e1a\\u7ba1\\u7406\\u7406\\u5ff5\\uff0c \\u6ce8\\u91cd\\u4eba\\u624d\\u8d28\\u91cf\\uff0c \\u8bb2\\u7a76\\u96c6\\u7ea6\\u5f00\\u53d1\\uff0c \\u805a\\u96c6\\u4e86\\u4e00\\u6279\\u5177\\u6709\\u9ad8\\u6c34\\u5e73\\u7684\\u7ba1\\u7406\\u4eba\\u624d\\u548c\\u5e94\\u7528\\u6280\\u672f\\u4eba\\u624d\\uff0c \\u4ee5\\u670d\\u52a1\\u4e8e\\u751f\\u4ea7\\uff0c \\u5949\\u732e\\u4e8e\\u5ba2\\u6237\\u3002 \\u76ee\\u524d\\u5728\\u5de5\\u4e1a\\u9632\\u8150\\u3001 \\u9632\\u9508\\u9886\\u57df\\uff0c \\u6052\\u5f69\\u4ea7\\u54c1\\u4ee5\\u5176\\u73af\\u4fdd\\u9ad8\\u8d28\\u91cf\\u3001 \\u591a\\u54c1\\u79cd\\u3001 \\u5b8c\\u5584\\u7684\\u670d\\u52a1\\u6df1\\u5f97\\u5e7f\\u5927\\u7528\\u6237\\u7684\\u4fe1\\u8d56\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u4e3a\\u4e86\\u8fdb\\u4e00\\u6b65\\u9002\\u5e94\\u5de5\\u4e1a\\u9632\\u8150\\u3001\\u9632\\u9508\\u53d1\\u5c55\\u7684\\u9700\\u8981\\uff0c\\u6ee1\\u8db3\\u7528\\u6237\\u7684\\u9700\\u6c42\\uff0c\\u6211\\u4eec\\u6052\\u5f69\\u4eba\\u5c06\\u4fdd\\u6301\\u548c\\u53d1\\u626c&ldquo;\\u66f4\\u65b0\\u3001 \\u66f4\\u5b8c\\u7f8e&rdquo;\\u7684\\u4f01\\u4e1a\\u7cbe\\u795e\\uff0c\\u70ed\\u5ff1\\u5730\\u4e3a\\u5e7f\\u5927\\u7528\\u6237\\u670d\\u52a1\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1554365898','1','super_user');
INSERT INTO `yp_block_history` VALUES('7','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\u672c\\u4f01\\u4e1a\\u7acb\\u8db3\\u73b0\\u4ee3\\u79d1\\u6280\\u7406\\u8bba\\u548c\\u73b0\\u4ee3\\u4f01\\u4e1a\\u7ba1\\u7406\\u7406\\u5ff5\\uff0c \\u6ce8\\u91cd\\u4eba\\u624d\\u8d28\\u91cf\\uff0c \\u8bb2\\u7a76\\u96c6\\u7ea6\\u5f00\\u53d1\\uff0c \\u805a\\u96c6\\u4e86\\u4e00\\u6279\\u5177\\u6709\\u9ad8\\u6c34\\u5e73\\u7684\\u7ba1\\u7406\\u4eba\\u624d\\u548c\\u5e94\\u7528\\u6280\\u672f\\u4eba\\u624d\\uff0c \\u4ee5\\u670d\\u52a1\\u4e8e\\u751f\\u4ea7\\uff0c \\u5949\\u732e\\u4e8e\\u5ba2\\u6237\\u3002 \\u76ee\\u524d\\u5728\\u5de5\\u4e1a\\u9632\\u8150\\u3001 \\u9632\\u9508\\u9886\\u57df\\uff0c \\u6052\\u5f69\\u4ea7\\u54c1\\u4ee5\\u5176\\u73af\\u4fdd\\u9ad8\\u8d28\\u91cf\\u3001 \\u591a\\u54c1\\u79cd\\u3001 \\u5b8c\\u5584\\u7684\\u670d\\u52a1\\u6df1\\u5f97\\u5e7f\\u5927\\u7528\\u6237\\u7684\\u4fe1\\u8d56\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp;<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"template\":\"\"}','1554365913','1','super_user');
INSERT INTO `yp_block_history` VALUES('8','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; \\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; \\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; \\u672c\\u4f01\\u4e1a\\u7acb\\u8db3\\u73b0\\u4ee3\\u79d1\\u6280\\u7406\\u8bba\\u548c\\u73b0\\u4ee3\\u4f01\\u4e1a\\u7ba1\\u7406\\u7406\\u5ff5\\uff0c \\u6ce8\\u91cd\\u4eba\\u624d\\u8d28\\u91cf\\uff0c \\u8bb2\\u7a76\\u96c6\\u7ea6\\u5f00\\u53d1\\uff0c \\u805a\\u96c6\\u4e86\\u4e00\\u6279\\u5177\\u6709\\u9ad8\\u6c34\\u5e73\\u7684\\u7ba1\\u7406\\u4eba\\u624d\\u548c\\u5e94\\u7528\\u6280\\u672f\\u4eba\\u624d\\uff0c \\u4ee5\\u670d\\u52a1\\u4e8e\\u751f\\u4ea7\\uff0c \\u5949\\u732e\\u4e8e\\u5ba2\\u6237\\u3002 \\u76ee\\u524d\\u5728\\u5de5\\u4e1a\\u9632\\u8150\\u3001 \\u9632\\u9508\\u9886\\u57df\\uff0c \\u6052\\u5f69\\u4ea7\\u54c1\\u4ee5\\u5176\\u73af\\u4fdd\\u9ad8\\u8d28\\u91cf\\u3001 \\u591a\\u54c1\\u79cd\\u3001 \\u5b8c\\u5584\\u7684\\u670d\\u52a1\\u6df1\\u5f97\\u5e7f\\u5927\\u7528\\u6237\\u7684\\u4fe1\\u8d56\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp;<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1554365920','1','super_user');
INSERT INTO `yp_block_history` VALUES('9','2','{\"id\":\"2\",\"siteid\":\"1\",\"name\":\"\\u8463\\u4e8b\\u957f\\u5bc4\\u8bed\",\"pos\":\"boss\",\"type\":\"1\",\"data\":\"\",\"template\":\"\"}','1554694962','1','super_user');
INSERT INTO `yp_block_history` VALUES('10','2','{\"id\":\"2\",\"siteid\":\"1\",\"name\":\"\\u8463\\u4e8b\\u957f\\u5bc4\\u8bed\",\"pos\":\"boss\",\"type\":\"1\",\"data\":\"\\u968f\\u7740\\u79d1\\u6280\\u65f6\\u4ee3\\u7684\\u8fdb\\u6b65\\uff0c\\u4fe1\\u606f\\u4ea7\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u4f7f\\u6211\\u4eec\\u7684\\u6c9f\\u901a\\u3001\\u5408\\u4f5c\\u53c8\\u589e\\u52a0\\u4e86\\u7f51\\u7edc\\u6e20\\u9053\\u3002<br \\/>\\r\\n\\u6211\\u4eec\\u957f\\u671f\\u4ee5\\u6765\\uff0c\\u4e00\\u76f4\\u575a\\u6301\\u4e24\\u4e2a\\u6587\\u660e\\u5efa\\u8bbe\\u4e00\\u8d77\\u6293\\u7684\\u79d1\\u5b66\\u5316\\u5236\\u5ea6\\u5316\\u7ba1\\u7406\\uff0c\\u4ee5&ldquo;\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42&rdquo;\\u4e3a\\u5b97\\u65e8\\uff0c\\u4e3a\\u73b0\\u4ee3\\u5316\\u5efa\\u8bbe\\u548c\\u793e\\u4f1a\\u8fdb\\u6b65\\u4f5c\\u8d21\\u732e\\uff0c\\u4e3b\\u52a8\\u8fce\\u63a5\\u4e8c\\u5341\\u4e00\\u4e16\\u7eaa\\u7ecf\\u6d4e\\u7684\\u6311\\u6218\\u3002<br \\/>\\r\\n\\u5c55\\u671b\\u672a\\u6765\\uff0c\\u6211\\u4eec\\u5145\\u6ee1\\u4fe1\\u5fc3\\u3002\\u6211\\u4eec\\u5c06\\u6309\\u7167\\u5efa\\u7acb\\u73b0\\u4ee3\\u5316\\u5382\\u5546\\u7684\\u8981\\u6c42\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5728\\u6280\\u672f\\u3001\\u4ea7\\u54c1\\u3001\\u79d1\\u7814\\u3001\\u4eba\\u624d\\u65b9\\u9762\\u7684\\u4f18\\u52bf\\u3002\\u79ef\\u6781\\u53d1\\u5c55\\u89c4\\u6a21\\u7ecf\\u6d4e\\uff0c\\u4fc3\\u8fdb\\u6280\\u672f\\u5927\\u8de8\\u6b65\\u3001\\u8df3\\u8dc3\\u5f0f\\u53d1\\u5c55\\uff0c\\u4e3a\\u884c\\u4e1a\\u53d1\\u5c55\\u548c\\u4fc3\\u8fdb\\u56fd\\u6c11\\u7ecf\\u6d4e\\u53d1\\u5c55\\u505a\\u51fa\\u5e94\\u6709\\u7684\\u8d21\\u732e\\u3002<br \\/>\\r\\n\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42\\uff01<br \\/>\",\"template\":\"\"}','1554695143','1','super_user');
INSERT INTO `yp_block_history` VALUES('11','2','{\"id\":\"2\",\"siteid\":\"1\",\"name\":\"\\u8463\\u4e8b\\u957f\\u5bc4\\u8bed\",\"pos\":\"boss\",\"type\":\"1\",\"data\":\"\\u968f\\u7740\\u79d1\\u6280\\u65f6\\u4ee3\\u7684\\u8fdb\\u6b65\\uff0c\\u4fe1\\u606f\\u4ea7\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u4f7f\\u6211\\u4eec\\u7684\\u6c9f\\u901a\\u3001\\u5408\\u4f5c\\u53c8\\u589e\\u52a0\\u4e86\\u7f51\\u7edc\\u6e20\\u9053\\u3002<br \\/>\\r\\n<br \\/>\\r\\n\\u6211\\u4eec\\u957f\\u671f\\u4ee5\\u6765\\uff0c\\u4e00\\u76f4\\u575a\\u6301\\u4e24\\u4e2a\\u6587\\u660e\\u5efa\\u8bbe\\u4e00\\u8d77\\u6293\\u7684\\u79d1\\u5b66\\u5316\\u5236\\u5ea6\\u5316\\u7ba1\\u7406\\uff0c\\u4ee5&ldquo;\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42&rdquo;\\u4e3a\\u5b97\\u65e8\\uff0c\\u4e3a\\u73b0\\u4ee3\\u5316\\u5efa\\u8bbe\\u548c\\u793e\\u4f1a\\u8fdb\\u6b65\\u4f5c\\u8d21\\u732e\\uff0c\\u4e3b\\u52a8\\u8fce\\u63a5\\u4e8c\\u5341\\u4e00\\u4e16\\u7eaa\\u7ecf\\u6d4e\\u7684\\u6311\\u6218\\u3002<br \\/>\\r\\n<br \\/>\\r\\n\\u5c55\\u671b\\u672a\\u6765\\uff0c\\u6211\\u4eec\\u5145\\u6ee1\\u4fe1\\u5fc3\\u3002\\u6211\\u4eec\\u5c06\\u6309\\u7167\\u5efa\\u7acb\\u73b0\\u4ee3\\u5316\\u5382\\u5546\\u7684\\u8981\\u6c42\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5728\\u6280\\u672f\\u3001\\u4ea7\\u54c1\\u3001\\u79d1\\u7814\\u3001\\u4eba\\u624d\\u65b9\\u9762\\u7684\\u4f18\\u52bf\\u3002\\u79ef\\u6781\\u53d1\\u5c55\\u89c4\\u6a21\\u7ecf\\u6d4e\\uff0c\\u4fc3\\u8fdb\\u6280\\u672f\\u5927\\u8de8\\u6b65\\u3001\\u8df3\\u8dc3\\u5f0f\\u53d1\\u5c55\\uff0c\\u4e3a\\u884c\\u4e1a\\u53d1\\u5c55\\u548c\\u4fc3\\u8fdb\\u56fd\\u6c11\\u7ecf\\u6d4e\\u53d1\\u5c55\\u505a\\u51fa\\u5e94\\u6709\\u7684\\u8d21\\u732e\\u3002<br \\/>\\r\\n<br \\/>\\r\\n\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42\\uff01<br \\/>\",\"template\":\"\"}','1554695261','1','super_user');
INSERT INTO `yp_block_history` VALUES('12','2','{\"id\":\"2\",\"siteid\":\"1\",\"name\":\"\\u8463\\u4e8b\\u957f\\u5bc4\\u8bed\",\"pos\":\"boss\",\"type\":\"1\",\"data\":\"\\u968f\\u7740\\u79d1\\u6280\\u65f6\\u4ee3\\u7684\\u8fdb\\u6b65\\uff0c\\u4fe1\\u606f\\u4ea7\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u4f7f\\u6211\\u4eec\\u7684\\u6c9f\\u901a\\u3001\\u5408\\u4f5c\\u53c8\\u589e\\u52a0\\u4e86\\u7f51\\u7edc\\u6e20\\u9053\\u3002<br \\/>\\r\\n\\u6211\\u4eec\\u957f\\u671f\\u4ee5\\u6765\\uff0c\\u4e00\\u76f4\\u575a\\u6301\\u4e24\\u4e2a\\u6587\\u660e\\u5efa\\u8bbe\\u4e00\\u8d77\\u6293\\u7684\\u79d1\\u5b66\\u5316\\u5236\\u5ea6\\u5316\\u7ba1\\u7406\\uff0c\\u4ee5&ldquo;\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42&rdquo;\\u4e3a\\u5b97\\u65e8\\uff0c\\u4e3a\\u73b0\\u4ee3\\u5316\\u5efa\\u8bbe\\u548c\\u793e\\u4f1a\\u8fdb\\u6b65\\u4f5c\\u8d21\\u732e\\uff0c\\u4e3b\\u52a8\\u8fce\\u63a5\\u4e8c\\u5341\\u4e00\\u4e16\\u7eaa\\u7ecf\\u6d4e\\u7684\\u6311\\u6218\\u3002<br \\/>\\r\\n\\u5c55\\u671b\\u672a\\u6765\\uff0c\\u6211\\u4eec\\u5145\\u6ee1\\u4fe1\\u5fc3\\u3002\\u6211\\u4eec\\u5c06\\u6309\\u7167\\u5efa\\u7acb\\u73b0\\u4ee3\\u5316\\u5382\\u5546\\u7684\\u8981\\u6c42\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5728\\u6280\\u672f\\u3001\\u4ea7\\u54c1\\u3001\\u79d1\\u7814\\u3001\\u4eba\\u624d\\u65b9\\u9762\\u7684\\u4f18\\u52bf\\u3002\\u79ef\\u6781\\u53d1\\u5c55\\u89c4\\u6a21\\u7ecf\\u6d4e\\uff0c\\u4fc3\\u8fdb\\u6280\\u672f\\u5927\\u8de8\\u6b65\\u3001\\u8df3\\u8dc3\\u5f0f\\u53d1\\u5c55\\uff0c\\u4e3a\\u884c\\u4e1a\\u53d1\\u5c55\\u548c\\u4fc3\\u8fdb\\u56fd\\u6c11\\u7ecf\\u6d4e\\u53d1\\u5c55\\u505a\\u51fa\\u5e94\\u6709\\u7684\\u8d21\\u732e\\u3002<br \\/>\\r\\n\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42\\uff01<br \\/>\",\"template\":\"\"}','1554695690','1','super_user');
INSERT INTO `yp_block_history` VALUES('13','2','{\"id\":\"2\",\"siteid\":\"1\",\"name\":\"\\u8463\\u4e8b\\u957f\\u5bc4\\u8bed\",\"pos\":\"boss\",\"type\":\"1\",\"data\":\"&nbsp; &nbsp; &nbsp; &nbsp;\\u968f\\u7740\\u79d1\\u6280\\u65f6\\u4ee3\\u7684\\u8fdb\\u6b65\\uff0c\\u4fe1\\u606f\\u4ea7\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u4f7f\\u6211\\u4eec\\u7684\\u6c9f\\u901a\\u3001\\u5408\\u4f5c\\u53c8\\u589e\\u52a0\\u4e86\\u7f51\\u7edc\\u6e20\\u9053\\u3002<br \\/>\\r\\n&nbsp; &nbsp; &nbsp; &nbsp;\\u6211\\u4eec\\u957f\\u671f\\u4ee5\\u6765\\uff0c\\u4e00\\u76f4\\u575a\\u6301\\u4e24\\u4e2a\\u6587\\u660e\\u5efa\\u8bbe\\u4e00\\u8d77\\u6293\\u7684\\u79d1\\u5b66\\u5316\\u5236\\u5ea6\\u5316\\u7ba1\\u7406\\uff0c\\u4ee5&ldquo;\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42&rdquo;\\u4e3a\\u5b97\\u65e8\\uff0c\\u4e3a\\u73b0\\u4ee3\\u5316\\u5efa\\u8bbe\\u548c\\u793e\\u4f1a\\u8fdb\\u6b65\\u4f5c\\u8d21\\u732e\\uff0c\\u4e3b\\u52a8\\u8fce\\u63a5\\u4e8c\\u5341\\u4e00\\u4e16\\u7eaa\\u7ecf\\u6d4e\\u7684\\u6311\\u6218\\u3002<br \\/>\\r\\n&nbsp; &nbsp; &nbsp; &nbsp;\\u5c55\\u671b\\u672a\\u6765\\uff0c\\u6211\\u4eec\\u5145\\u6ee1\\u4fe1\\u5fc3\\u3002\\u6211\\u4eec\\u5c06\\u6309\\u7167\\u5efa\\u7acb\\u73b0\\u4ee3\\u5316\\u5382\\u5546\\u7684\\u8981\\u6c42\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5728\\u6280\\u672f\\u3001\\u4ea7\\u54c1\\u3001\\u79d1\\u7814\\u3001\\u4eba\\u624d\\u65b9\\u9762\\u7684\\u4f18\\u52bf\\u3002\\u79ef\\u6781\\u53d1\\u5c55\\u89c4\\u6a21\\u7ecf\\u6d4e\\uff0c\\u4fc3\\u8fdb\\u6280\\u672f\\u5927\\u8de8\\u6b65\\u3001\\u8df3\\u8dc3\\u5f0f\\u53d1\\u5c55\\uff0c\\u4e3a\\u884c\\u4e1a\\u53d1\\u5c55\\u548c\\u4fc3\\u8fdb\\u56fd\\u6c11\\u7ecf\\u6d4e\\u53d1\\u5c55\\u505a\\u51fa\\u5e94\\u6709\\u7684\\u8d21\\u732e\\u3002<br \\/>\\r\\n&nbsp; &nbsp; &nbsp; &nbsp;\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42\\uff01<br \\/>\",\"template\":\"\"}','1554695706','1','super_user');
INSERT INTO `yp_block_history` VALUES('14','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; \\u626c\\u5dde\\u5e02\\u6052\\u5f69\\u7c89\\u4f53\\u9ad8\\u65b0\\u79d1\\u6280\\u6709\\u9650\\u516c\\u53f8\\uff0c\\u5750\\u843d\\u4e8e\\u98ce\\u666f\\u79c0\\u4e3d\\u7684\\u5386\\u53f2\\u6587\\u5316\\u540d\\u57ce\\u4e00\\u4e00\\u626c\\u5dde\\u5e02\\uff0c\\u8fd9\\u91cc\\u98ce\\u5149\\u79c0\\u4e3d\\uff0c\\u4eba\\u6770\\u5730\\u7075\\uff0c\\u4ea4\\u901a\\u4fbf\\u5229\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; \\u5728\\u6539\\u9769\\u5f00\\u653e\\u7684\\u5927\\u6f6e\\u4e0b\\uff0c\\u987a\\u7740\\u9ad8\\u65b0\\u6280\\u672f\\u7684\\u53d1\\u5c55\\u8d8b\\u52bf\\uff0c\\u4f9d\\u6258\\u79d1\\u7814\\u5355\\u4f4d\\u7684\\u6280\\u672f\\u5b9e\\u529b\\uff0c\\u8bde\\u751f\\u7684\\u6ce8\\u518c\\u8d44\\u672c300\\u4e07\\uff0c\\u5e74\\u751f\\u4ea7\\u80fd\\u529b15000\\u5428\\u9632\\u9508\\u989c\\u6599\\uff0c\\u516c\\u53f8\\u5458\\u5de5\\u4e0a\\u767e\\u4eba\\uff0c\\u5e74\\u4ea7\\u503c\\u5343\\u4e07\\u5143\\u7684\\u4e00\\u4f53\\u5316\\u4f01\\u4e1a\\u3002<\\/div>\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">&nbsp; &nbsp; &nbsp; \\u672c\\u4f01\\u4e1a\\u7acb\\u8db3\\u73b0\\u4ee3\\u79d1\\u6280\\u7406\\u8bba\\u548c\\u73b0\\u4ee3\\u4f01\\u4e1a\\u7ba1\\u7406\\u7406\\u5ff5\\uff0c \\u6ce8\\u91cd\\u4eba\\u624d\\u8d28\\u91cf\\uff0c \\u8bb2\\u7a76\\u96c6\\u7ea6\\u5f00\\u53d1\\uff0c \\u805a\\u96c6\\u4e86\\u4e00\\u6279\\u5177\\u6709\\u9ad8\\u6c34\\u5e73\\u7684\\u7ba1\\u7406\\u4eba\\u624d\\u548c\\u5e94\\u7528\\u6280\\u672f\\u4eba\\u624d\\uff0c \\u4ee5\\u670d\\u52a1\\u4e8e\\u751f\\u4ea7\\uff0c \\u5949\\u732e\\u4e8e\\u5ba2\\u6237\\u3002 \\u76ee\\u524d\\u5728\\u5de5\\u4e1a\\u9632\\u8150\\u3001 \\u9632\\u9508\\u9886\\u57df\\uff0c \\u6052\\u5f69\\u4ea7\\u54c1\\u4ee5\\u5176\\u73af\\u4fdd\\u9ad8\\u8d28\\u91cf\\u3001 \\u591a\\u54c1\\u79cd\\u3001 \\u5b8c\\u5584\\u7684\\u670d\\u52a1\\u6df1\\u5f97\\u5e7f\\u5927\\u7528\\u6237\\u7684\\u4fe1\\u8d56\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1644910825','1','super_user');
INSERT INTO `yp_block_history` VALUES('15','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div>\\u6211\\u5382\\u662f\\u751f\\u4ea7\\u5404\\u7c7b\\u7535\\u70ed\\u7535\\u5668\\u7684\\u4e13\\u4e1a\\u5382\\u5bb6\\uff0c\\u4f4d\\u4e8e\\u7f8e\\u4e3d\\u5bcc\\u9976\\u3001\\u98ce\\u666f\\u6021\\u4eba\\u7684\\u5927\\u8fd0\\u6cb3\\u7554\\u3002\\u6211\\u5382\\u751f\\u4ea7\\u7684\\u7cfb\\u5217\\u7535\\u70ed\\u7535\\u5668\\u53ca\\u4e0e\\u4e4b\\u914d\\u5957\\u7684\\u7535\\u5668\\u63a7\\u5236\\u67dc\\u3001\\u70ed\\u7535\\u5076\\u3001\\u9ad8\\u6e29\\u7ebf\\u7f06\\u7b49\\u4ea7\\u54c1\\uff0c\\u9500\\u5f80\\u5168\\u56fd\\u5404\\u7701\\u5e02\\uff0c\\u5e76\\u901a\\u8fc7\\u5404\\u79cd\\u6e20\\u9053\\u8fdc\\u9500\\u6e2f\\u3001\\u53f0\\u3001\\u4e1c\\u5357\\u4e9a\\u72ec\\u8054\\u4f53\\u7b49\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u3002\\u5f53\\u60a8\\u4f7f\\u7528\\u6211\\u4eec\\u7684\\u4ea7\\u54c1\\u65f6\\uff0c\\u60a8\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u4f1a\\u59cb\\u7ec8\\u5982\\u4e00\\u7684\\u7ed9\\u60a8\\u63d0\\u4f9b\\u9ad8\\u54c1\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u60a8\\u540c\\u6837\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u7684\\u4e1a\\u52a1\\u4ee3\\u8868\\u4f1a\\u7ed9\\u4e88\\u5168\\u529b\\u652f\\u6301\\uff0c\\u534f\\u52a9\\u60a8\\u9762\\u5bf9\\u4efb\\u4f55\\u95ee\\u9898\\u65f6\\u627e\\u5230\\u89e3\\u51b3\\u65b9\\u6848\\uff0c\\u60a8\\u53ef\\u4ee5\\u4e13\\u5fc3\\u4e00\\u81f4\\u5efa\\u7acb\\u60a8\\u7684\\u4e8b\\u4e1a\\uff01<\\/div>\\r\\n<div>\\u4e3a\\u60a8\\u63d0\\u4f9b\\u66f4\\u4f18\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u66f4\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u662f\\u6211\\u5382\\u4e0d\\u65ad\\u8fdb\\u53d6\\u7684\\u76ee\\u6807\\uff0c\\u8ba9\\u6211\\u4eec\\u643a\\u8d77\\u624b\\u6765\\u5171\\u540c\\u521b\\u9020\\u7f8e\\u597d\\u7684\\u660e\\u5929\\uff01\\u771f\\u8bda\\u6b22\\u8fce\\u65b0\\u8001\\u5ba2\\u6237\\u6765\\u6211\\u5382\\u4f5c\\u5ba2\\u3001\\u6307\\u5bfc\\u6216\\u767b\\u9646\\u6211\\u516c\\u53f8\\u7f51\\u7ad9\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1645152402','1','super_user');
INSERT INTO `yp_block_history` VALUES('16','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"\\/uploadfile\\/2022\\/0216\\/20220216040220536.jpg\\\" style=\\\"width: 860px; height: 326px;\\\" \\/><\\/div>\\r\\n<div style=\\\"font-family: \\u5fae\\u8f6f\\u96c5\\u9ed1; margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0); color: rgb(0, 0, 0); font-size: 14px;\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div style=\\\"margin: 0px; padding: 0px; -webkit-tap-highlight-color: rgba(0, 0, 0, 0);\\\">\\r\\n<div><br \\/>\\r\\n\\u6211\\u5382\\u662f\\u751f\\u4ea7\\u5404\\u7c7b\\u7535\\u70ed\\u7535\\u5668\\u7684\\u4e13\\u4e1a\\u5382\\u5bb6\\uff0c\\u4f4d\\u4e8e\\u7f8e\\u4e3d\\u5bcc\\u9976\\u3001\\u98ce\\u666f\\u6021\\u4eba\\u7684\\u5927\\u8fd0\\u6cb3\\u7554\\u3002\\u6211\\u5382\\u751f\\u4ea7\\u7684\\u7cfb\\u5217\\u7535\\u70ed\\u7535\\u5668\\u53ca\\u4e0e\\u4e4b\\u914d\\u5957\\u7684\\u7535\\u5668\\u63a7\\u5236\\u67dc\\u3001\\u70ed\\u7535\\u5076\\u3001\\u9ad8\\u6e29\\u7ebf\\u7f06\\u7b49\\u4ea7\\u54c1\\uff0c\\u9500\\u5f80\\u5168\\u56fd\\u5404\\u7701\\u5e02\\uff0c\\u5e76\\u901a\\u8fc7\\u5404\\u79cd\\u6e20\\u9053\\u8fdc\\u9500\\u6e2f\\u3001\\u53f0\\u3001\\u4e1c\\u5357\\u4e9a\\u72ec\\u8054\\u4f53\\u7b49\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u3002\\u5f53\\u60a8\\u4f7f\\u7528\\u6211\\u4eec\\u7684\\u4ea7\\u54c1\\u65f6\\uff0c\\u60a8\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u4f1a\\u59cb\\u7ec8\\u5982\\u4e00\\u7684\\u7ed9\\u60a8\\u63d0\\u4f9b\\u9ad8\\u54c1\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u60a8\\u540c\\u6837\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u7684\\u4e1a\\u52a1\\u4ee3\\u8868\\u4f1a\\u7ed9\\u4e88\\u5168\\u529b\\u652f\\u6301\\uff0c\\u534f\\u52a9\\u60a8\\u9762\\u5bf9\\u4efb\\u4f55\\u95ee\\u9898\\u65f6\\u627e\\u5230\\u89e3\\u51b3\\u65b9\\u6848\\uff0c\\u60a8\\u53ef\\u4ee5\\u4e13\\u5fc3\\u4e00\\u81f4\\u5efa\\u7acb\\u60a8\\u7684\\u4e8b\\u4e1a\\uff01<\\/div>\\r\\n<div>\\u4e3a\\u60a8\\u63d0\\u4f9b\\u66f4\\u4f18\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u66f4\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u662f\\u6211\\u5382\\u4e0d\\u65ad\\u8fdb\\u53d6\\u7684\\u76ee\\u6807\\uff0c\\u8ba9\\u6211\\u4eec\\u643a\\u8d77\\u624b\\u6765\\u5171\\u540c\\u521b\\u9020\\u7f8e\\u597d\\u7684\\u660e\\u5929\\uff01\\u771f\\u8bda\\u6b22\\u8fce\\u65b0\\u8001\\u5ba2\\u6237\\u6765\\u6211\\u5382\\u4f5c\\u5ba2\\u3001\\u6307\\u5bfc\\u6216\\u767b\\u9646\\u6211\\u516c\\u53f8\\u7f51\\u7ad9\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1645152547','1','super_user');
INSERT INTO `yp_block_history` VALUES('17','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\"><img alt=\\\"\\\" src=\\\"\\/uploadfile\\/2022\\/0216\\/20220216040220536.jpg\\\" style=\\\"width: 750px; height: 284px;\\\" \\/><br \\/>\\r\\n&nbsp;<\\/div>\",\"template\":\"\"}','1645152575','1','super_user');
INSERT INTO `yp_block_history` VALUES('18','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div style=\\\"text-align: left;\\\">\\u6211\\u5382\\u662f\\u751f\\u4ea7\\u5404\\u7c7b\\u7535\\u70ed\\u7535\\u5668\\u7684\\u4e13\\u4e1a\\u5382\\u5bb6\\uff0c\\u4f4d\\u4e8e\\u7f8e\\u4e3d\\u5bcc\\u9976\\u3001\\u98ce\\u666f\\u6021\\u4eba\\u7684\\u5927\\u8fd0\\u6cb3\\u7554\\u3002\\u6211\\u5382\\u751f\\u4ea7\\u7684\\u7cfb\\u5217\\u7535\\u70ed\\u7535\\u5668\\u53ca\\u4e0e\\u4e4b\\u914d\\u5957\\u7684\\u7535\\u5668\\u63a7\\u5236\\u67dc\\u3001\\u70ed\\u7535\\u5076\\u3001\\u9ad8\\u6e29\\u7ebf\\u7f06\\u7b49\\u4ea7\\u54c1\\uff0c\\u9500\\u5f80\\u5168\\u56fd\\u5404\\u7701\\u5e02\\uff0c\\u5e76\\u901a\\u8fc7\\u5404\\u79cd\\u6e20\\u9053\\u8fdc\\u9500\\u6e2f\\u3001\\u53f0\\u3001\\u4e1c\\u5357\\u4e9a\\u72ec\\u8054\\u4f53\\u7b49\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u3002\\u5f53\\u60a8\\u4f7f\\u7528\\u6211\\u4eec\\u7684\\u4ea7\\u54c1\\u65f6\\uff0c\\u60a8\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u4f1a\\u59cb\\u7ec8\\u5982\\u4e00\\u7684\\u7ed9\\u60a8\\u63d0\\u4f9b\\u9ad8\\u54c1\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u60a8\\u540c\\u6837\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u7684\\u4e1a\\u52a1\\u4ee3\\u8868\\u4f1a\\u7ed9\\u4e88\\u5168\\u529b\\u652f\\u6301\\uff0c\\u534f\\u52a9\\u60a8\\u9762\\u5bf9\\u4efb\\u4f55\\u95ee\\u9898\\u65f6\\u627e\\u5230\\u89e3\\u51b3\\u65b9\\u6848\\uff0c\\u60a8\\u53ef\\u4ee5\\u4e13\\u5fc3\\u4e00\\u81f4\\u5efa\\u7acb\\u60a8\\u7684\\u4e8b\\u4e1a\\uff01<\\/div>\\r\\n<div style=\\\"text-align: left;\\\">\\u4e3a\\u60a8\\u63d0\\u4f9b\\u66f4\\u4f18\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u66f4\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u662f\\u6211\\u5382\\u4e0d\\u65ad\\u8fdb\\u53d6\\u7684\\u76ee\\u6807\\uff0c\\u8ba9\\u6211\\u4eec\\u643a\\u8d77\\u624b\\u6765\\u5171\\u540c\\u521b\\u9020\\u7f8e\\u597d\\u7684\\u660e\\u5929\\uff01\\u771f\\u8bda\\u6b22\\u8fce\\u65b0\\u8001\\u5ba2\\u6237\\u6765\\u6211\\u5382\\u4f5c\\u5ba2\\u3001\\u6307\\u5bfc\\u6216\\u767b\\u9646\\u6211\\u516c\\u53f8\\u7f51\\u7ad9\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1645153522','1','super_user');
INSERT INTO `yp_block_history` VALUES('19','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\u6211\\u5382\\u662f\\u751f\\u4ea7\\u5404\\u7c7b\\u7535\\u70ed\\u7535\\u5668\\u7684\\u4e13\\u4e1a\\u5382\\u5bb6\\uff0c\\u4f4d\\u4e8e\\u7f8e\\u4e3d\\u5bcc\\u9976\\u3001\\u98ce\\u666f\\u6021\\u4eba\\u7684\\u5927\\u8fd0\\u6cb3\\u7554\\u3002\\u6211\\u5382\\u751f\\u4ea7\\u7684\\u7cfb\\u5217\\u7535\\u70ed\\u7535\\u5668\\u53ca\\u4e0e\\u4e4b\\u914d\\u5957\\u7684\\u7535\\u5668\\u63a7\\u5236\\u67dc\\u3001\\u70ed\\u7535\\u5076\\u3001\\u9ad8\\u6e29\\u7ebf\\u7f06\\u7b49\\u4ea7\\u54c1\\uff0c\\u9500\\u5f80\\u5168\\u56fd\\u5404\\u7701\\u5e02\\uff0c\\u5e76\\u901a\\u8fc7\\u5404\\u79cd\\u6e20\\u9053\\u8fdc\\u9500\\u6e2f\\u3001\\u53f0\\u3001\\u4e1c\\u5357\\u4e9a\\u72ec\\u8054\\u4f53\\u7b49\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u3002\\u5f53\\u60a8\\u4f7f\\u7528\\u6211\\u4eec\\u7684\\u4ea7\\u54c1\\u65f6\\uff0c\\u60a8\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u4f1a\\u59cb\\u7ec8\\u5982\\u4e00\\u7684\\u7ed9\\u60a8\\u63d0\\u4f9b\\u9ad8\\u54c1\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u60a8\\u540c\\u6837\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u7684\\u4e1a\\u52a1\\u4ee3\\u8868\\u4f1a\\u7ed9\\u4e88\\u5168\\u529b\\u652f\\u6301\\uff0c\\u534f\\u52a9\\u60a8\\u9762\\u5bf9\\u4efb\\u4f55\\u95ee\\u9898\\u65f6\\u627e\\u5230\\u89e3\\u51b3\\u65b9\\u6848\\uff0c\\u60a8\\u53ef\\u4ee5\\u4e13\\u5fc3\\u4e00\\u81f4\\u5efa\\u7acb\\u60a8\\u7684\\u4e8b\\u4e1a\\uff01<\\/div>\\r\\n<div>\\u4e3a\\u60a8\\u63d0\\u4f9b\\u66f4\\u4f18\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u66f4\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u662f\\u6211\\u5382\\u4e0d\\u65ad\\u8fdb\\u53d6\\u7684\\u76ee\\u6807\\uff0c\\u8ba9\\u6211\\u4eec\\u643a\\u8d77\\u624b\\u6765\\u5171\\u540c\\u521b\\u9020\\u7f8e\\u597d\\u7684\\u660e\\u5929\\uff01\\u771f\\u8bda\\u6b22\\u8fce\\u65b0\\u8001\\u5ba2\\u6237\\u6765\\u6211\\u5382\\u4f5c\\u5ba2\\u3001\\u6307\\u5bfc\\u6216\\u767b\\u9646\\u6211\\u516c\\u53f8\\u7f51\\u7ad9\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"text-align: center;\\\">&nbsp;<\\/div>\",\"template\":\"\"}','1645153540','1','super_user');
INSERT INTO `yp_block_history` VALUES('20','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div style=\\\"text-align: left;\\\">\\u6211\\u5382\\u662f\\u751f\\u4ea7\\u5404\\u7c7b\\u7535\\u70ed\\u7535\\u5668\\u7684\\u4e13\\u4e1a\\u5382\\u5bb6\\uff0c\\u4f4d\\u4e8e\\u7f8e\\u4e3d\\u5bcc\\u9976\\u3001\\u98ce\\u666f\\u6021\\u4eba\\u7684\\u5927\\u8fd0\\u6cb3\\u7554\\u3002\\u6211\\u5382\\u751f\\u4ea7\\u7684\\u7cfb\\u5217\\u7535\\u70ed\\u7535\\u5668\\u53ca\\u4e0e\\u4e4b\\u914d\\u5957\\u7684\\u7535\\u5668\\u63a7\\u5236\\u67dc\\u3001\\u70ed\\u7535\\u5076\\u3001\\u9ad8\\u6e29\\u7ebf\\u7f06\\u7b49\\u4ea7\\u54c1\\uff0c\\u9500\\u5f80\\u5168\\u56fd\\u5404\\u7701\\u5e02\\uff0c\\u5e76\\u901a\\u8fc7\\u5404\\u79cd\\u6e20\\u9053\\u8fdc\\u9500\\u6e2f\\u3001\\u53f0\\u3001\\u4e1c\\u5357\\u4e9a\\u72ec\\u8054\\u4f53\\u7b49\\u56fd\\u5bb6\\u548c\\u5730\\u533a\\u3002\\u5f53\\u60a8\\u4f7f\\u7528\\u6211\\u4eec\\u7684\\u4ea7\\u54c1\\u65f6\\uff0c\\u60a8\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u4f1a\\u59cb\\u7ec8\\u5982\\u4e00\\u7684\\u7ed9\\u60a8\\u63d0\\u4f9b\\u9ad8\\u54c1\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u60a8\\u540c\\u6837\\u53ef\\u4ee5\\u4fe1\\u8d56\\u6211\\u4eec\\u7684\\u4e1a\\u52a1\\u4ee3\\u8868\\u4f1a\\u7ed9\\u4e88\\u5168\\u529b\\u652f\\u6301\\uff0c\\u534f\\u52a9\\u60a8\\u9762\\u5bf9\\u4efb\\u4f55\\u95ee\\u9898\\u65f6\\u627e\\u5230\\u89e3\\u51b3\\u65b9\\u6848\\uff0c\\u60a8\\u53ef\\u4ee5\\u4e13\\u5fc3\\u4e00\\u81f4\\u5efa\\u7acb\\u60a8\\u7684\\u4e8b\\u4e1a\\uff01<\\/div>\\r\\n<div style=\\\"text-align: left;\\\">\\u4e3a\\u60a8\\u63d0\\u4f9b\\u66f4\\u4f18\\u8d28\\u7684\\u4ea7\\u54c1\\uff0c\\u66f4\\u4f18\\u8d28\\u7684\\u670d\\u52a1\\u662f\\u6211\\u5382\\u4e0d\\u65ad\\u8fdb\\u53d6\\u7684\\u76ee\\u6807\\uff0c\\u8ba9\\u6211\\u4eec\\u643a\\u8d77\\u624b\\u6765\\u5171\\u540c\\u521b\\u9020\\u7f8e\\u597d\\u7684\\u660e\\u5929\\uff01\\u771f\\u8bda\\u6b22\\u8fce\\u65b0\\u8001\\u5ba2\\u6237\\u6765\\u6211\\u5382\\u4f5c\\u5ba2\\u3001\\u6307\\u5bfc\\u6216\\u767b\\u9646\\u6211\\u516c\\u53f8\\u7f51\\u7ad9\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<div style=\\\"text-align: center;\\\">&nbsp;<\\/div>\",\"template\":\"\"}','1645419604','1','super_user');
INSERT INTO `yp_block_history` VALUES('21','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align: left;\\\">\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1645419620','1','super_user');
INSERT INTO `yp_block_history` VALUES('22','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align: left;\\\">\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"template\":\"\"}','1645419630','1','super_user');
INSERT INTO `yp_block_history` VALUES('23','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align: left;\\\">\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1645419641','1','super_user');
INSERT INTO `yp_block_history` VALUES('24','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align: left;\\\">\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\",\"template\":\"\"}','1645419651','1','super_user');
INSERT INTO `yp_block_history` VALUES('25','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align: left;\\\">\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1645419664','1','super_user');
INSERT INTO `yp_block_history` VALUES('26','2','{\"id\":\"2\",\"siteid\":\"1\",\"name\":\"\\u8463\\u4e8b\\u957f\\u5bc4\\u8bed\",\"pos\":\"boss\",\"type\":\"1\",\"data\":\"\\u968f\\u7740\\u79d1\\u6280\\u65f6\\u4ee3\\u7684\\u8fdb\\u6b65\\uff0c\\u4fe1\\u606f\\u4ea7\\u4e1a\\u7684\\u4e0d\\u65ad\\u53d1\\u5c55\\uff0c\\u4f7f\\u6211\\u4eec\\u7684\\u6c9f\\u901a\\u3001\\u5408\\u4f5c\\u53c8\\u589e\\u52a0\\u4e86\\u7f51\\u7edc\\u6e20\\u9053\\u3002<br \\/>\\r\\n\\u6211\\u4eec\\u957f\\u671f\\u4ee5\\u6765\\uff0c\\u4e00\\u76f4\\u575a\\u6301\\u4e24\\u4e2a\\u6587\\u660e\\u5efa\\u8bbe\\u4e00\\u8d77\\u6293\\u7684\\u79d1\\u5b66\\u5316\\u5236\\u5ea6\\u5316\\u7ba1\\u7406\\uff0c\\u4ee5&ldquo;\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42&rdquo;\\u4e3a\\u5b97\\u65e8\\uff0c\\u4e3a\\u73b0\\u4ee3\\u5316\\u5efa\\u8bbe\\u548c\\u793e\\u4f1a\\u8fdb\\u6b65\\u4f5c\\u8d21\\u732e\\uff0c\\u4e3b\\u52a8\\u8fce\\u63a5\\u4e8c\\u5341\\u4e00\\u4e16\\u7eaa\\u7ecf\\u6d4e\\u7684\\u6311\\u6218\\u3002<br \\/>\\r\\n\\u5c55\\u671b\\u672a\\u6765\\uff0c\\u6211\\u4eec\\u5145\\u6ee1\\u4fe1\\u5fc3\\u3002\\u6211\\u4eec\\u5c06\\u6309\\u7167\\u5efa\\u7acb\\u73b0\\u4ee3\\u5316\\u5382\\u5546\\u7684\\u8981\\u6c42\\uff0c\\u5145\\u5206\\u53d1\\u6325\\u5728\\u6280\\u672f\\u3001\\u4ea7\\u54c1\\u3001\\u79d1\\u7814\\u3001\\u4eba\\u624d\\u65b9\\u9762\\u7684\\u4f18\\u52bf\\u3002\\u79ef\\u6781\\u53d1\\u5c55\\u89c4\\u6a21\\u7ecf\\u6d4e\\uff0c\\u4fc3\\u8fdb\\u6280\\u672f\\u5927\\u8de8\\u6b65\\u3001\\u8df3\\u8dc3\\u5f0f\\u53d1\\u5c55\\uff0c\\u4e3a\\u884c\\u4e1a\\u53d1\\u5c55\\u548c\\u4fc3\\u8fdb\\u56fd\\u6c11\\u7ecf\\u6d4e\\u53d1\\u5c55\\u505a\\u51fa\\u5e94\\u6709\\u7684\\u8d21\\u732e\\u3002<br \\/>\\r\\n\\u60a8\\u7684\\u6ee1\\u610f\\u662f\\u6211\\u4eec\\u6c38\\u8fdc\\u7684\\u8ffd\\u6c42\\uff01<br \\/>\",\"template\":\"\"}','1645419888','1','super_user');
INSERT INTO `yp_block_history` VALUES('27','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align: center;\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align: left;\\\">\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u7b80\\u4ecb\\u516c\\u53f8\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<br \\/>\",\"template\":\"\"}','1700384677','1','super_user');
INSERT INTO `yp_block_history` VALUES('28','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align:center\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align:left\\\">\\u626c\\u5dde\\u5e02\\u4f18\\u8010\\u5fb7\\u673a\\u68b0\\u8bbe\\u5907\\u6709\\u9650\\u516c\\u53f8\\u5750\\u843d\\u4e8e\\u7f8e\\u4e3d\\u7684\\u626c\\u5dde\\u5317\\u90ca(\\u9ad8\\u90ae\\u7ecf\\u6d4e\\u5f00\\u53d1\\u533a\\u5185)\\u4e1c\\u90bb\\u4eac\\u6caa\\u9ad8\\u901f\\uff0c\\u897f\\u4e34\\u4eac\\u676d\\u5927\\u8fd0\\u6cb3\\u3002\\u516c\\u53f8\\u5360\\u5730\\u9762\\u79ef15000\\u5e73\\u65b9\\u7c73\\uff0c\\u5efa\\u7b51\\u9762\\u79ef9000\\u5e73\\u65b9\\u7c73\\uff0c,\\u7ecf\\u6d4e\\u5b9e\\u529b\\u5f3a\\u5927\\uff0c\\u6280\\u672f\\u529b\\u91cf\\u96c4\\u539a\\uff0c\\u751f\\u4ea7\\u52a0\\u5de5\\u8bbe\\u5907\\u9f50\\u5168\\uff0c\\u68c0\\u6d4b\\u624b\\u6bb5\\u5148\\u8fdb\\u3002\\u73b0\\u6709\\u5458\\u5de5160\\u591a\\u4eba\\uff0c\\u4e13\\u4e1a\\u6280\\u672f\\u4eba\\u545860\\u51e0\\u4eba\\uff0c\\u516c\\u53f8\\u96c6\\u4e8c\\u5341\\u4f59\\u5e74\\u7684\\u751f\\u4ea7\\u8bbe\\u8ba1\\u7ecf\\u9a8c\\uff0c\\u5177\\u5907\\u4e86SS\\u3001SB\\u3001PSB\\u3001PBZ\\u3001SD\\u3001PSD\\u3001PBF\\u3001SG\\u3001SGZ\\u3001PGZ\\u3001LGZ\\/FPAUT\\u3001GKH\\u3001H320~H1000\\u7b49\\u591a\\u79cd\\u7cfb\\u5217\\u7684\\u79bb\\u5fc3\\u673a\\u5236\\u9020\\u80fd\\u529b\\uff0c\\u4ea7\\u54c1\\u4e25\\u683c\\u6267\\u884c\\u56fd\\u5bb6\\u6807\\u51c6,\\u7b26\\u5408GMP\\u89c4\\u8303\\u3002<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"template\":\"\"}','1700385747','1','super_user');
INSERT INTO `yp_block_history` VALUES('29','1','{\"id\":\"1\",\"siteid\":\"1\",\"name\":\"\\u9996\\u9875\\u7b80\\u4ecb\",\"pos\":\"about\",\"type\":\"1\",\"data\":\"<div style=\\\"text-align:center\\\">\\r\\n<div>\\r\\n<div style=\\\"text-align:left\\\">\\r\\n<p>\\u626c\\u5dde\\u5e02\\u4f18\\u8010\\u5fb7\\u673a\\u68b0\\u8bbe\\u5907\\u6709\\u9650\\u516c\\u53f8\\u5750\\u843d\\u4e8e\\u7f8e\\u4e3d\\u7684\\u626c\\u5dde\\u5317\\u90ca(\\u9ad8\\u90ae\\u7ecf\\u6d4e\\u5f00\\u53d1\\u533a\\u5185)\\u4e1c\\u90bb\\u4eac\\u6caa\\u9ad8\\u901f\\uff0c\\u897f\\u4e34\\u4eac\\u676d\\u5927\\u8fd0\\u6cb3\\u3002\\u516c\\u53f8\\u5360\\u5730\\u9762\\u79ef15000\\u5e73\\u65b9\\u7c73\\uff0c\\u5efa\\u7b51\\u9762\\u79ef9000\\u5e73\\u65b9\\u7c73\\uff0c,\\u7ecf\\u6d4e\\u5b9e\\u529b\\u5f3a\\u5927\\uff0c\\u6280\\u672f\\u529b\\u91cf\\u96c4\\u539a\\uff0c\\u751f\\u4ea7\\u52a0\\u5de5\\u8bbe\\u5907\\u9f50\\u5168\\uff0c\\u68c0\\u6d4b\\u624b\\u6bb5\\u5148\\u8fdb\\u3002\\u73b0\\u6709\\u5458\\u5de5160\\u591a\\u4eba\\uff0c\\u4e13\\u4e1a\\u6280\\u672f\\u4eba\\u545860\\u51e0\\u4eba\\uff0c\\u516c\\u53f8\\u96c6\\u4e8c\\u5341\\u4f59\\u5e74\\u7684\\u751f\\u4ea7\\u8bbe\\u8ba1\\u7ecf\\u9a8c\\uff0c\\u5177\\u5907\\u4e86SS\\u3001SB\\u3001PSB\\u3001PBZ\\u3001SD\\u3001PSD\\u3001PBF\\u3001SG\\u3001SGZ\\u3001PGZ\\u3001LGZ\\/FPAUT\\u3001GKH\\u3001H320~H1000\\u7b49\\u591a\\u79cd\\u7cfb\\u5217\\u7684\\u79bb\\u5fc3\\u673a\\u5236\\u9020\\u80fd\\u529b\\uff0c\\u4ea7\\u54c1\\u4e25\\u683c\\u6267\\u884c\\u56fd\\u5bb6\\u6807\\u51c6,\\u7b26\\u5408GMP\\u89c4\\u8303\\u3002<\\/p>\\r\\n\\r\\n<p>\\u6211\\u516c\\u53f8\\u4e13\\u4e1a\\u751f\\u4ea7\\u87ba\\u65cb\\u5378\\u6599\\u7b5b\\u7f51\\u5f0f\\u79bb\\u5fc3\\u673a,\\u5367\\u5f0f\\u87ba\\u65cb\\u5378\\u6599\\u8fc7\\u6ee4\\u79bb\\u5fc3\\u673a,\\u5168\\u81ea\\u52a8\\u522e\\u5200\\u4e0b\\u90e8\\u5378\\u6599\\u5f0f\\u79bb\\u5fc3\\u673a,PAUT\\u4e0a\\u60ac\\u5f0f\\u522e\\u5200\\u4e0b\\u5378\\u6599\\u81ea\\u52a8\\u79bb\\u5fc3\\u673a,\\u5e73\\u677f\\u5f0f\\u540a\\u888b\\u4e0a\\u90e8\\u5378\\u6599\\u79bb\\u5fc3\\u673a,\\u5e73\\u677f\\u5f0f\\u4eba\\u5de5\\u4e0a\\u90e8\\u5378\\u6599\\u5168\\u7ffb\\u76d6\\u79bb\\u5fc3\\u673a,\\u6d3b\\u585e\\u63a8\\u6599\\u5f0f\\u79bb\\u5fc3\\u673a\\u7b49\\u3002\\u79bb\\u5fc3\\u673ai\\u5e7f\\u6cdb\\u5e94\\u7528\\u4e8e\\u5316\\u5de5\\u3001\\u5236\\u836f\\u3001\\u98df\\u54c1\\u3001\\u73af\\u4fdd\\u3001\\u7eba\\u7ec7\\u7b49\\u884c\\u4e1a,\\u6df1\\u53d7\\u5e7f\\u5927\\u5ba2\\u6237\\u8d5e\\u8bb8\\u3002<\\/p>\\r\\n\\r\\n<p>\\u70ed\\u6795\\u6b22\\u8fce\\u5404\\u4f4d\\u65b0\\u8001\\u670b\\u53cb\\u5149\\u4e34\\u6211\\u516c\\u53f8\\u6307\\u5bfc\\u3002<\\/p>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n<\\/div>\\r\\n\\r\\n<p>&nbsp;<\\/p>\",\"template\":\"\"}','1701135550','1','super_user');

DROP TABLE IF EXISTS `yp_block_priv`;
CREATE TABLE `yp_block_priv` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `roleid` tinyint unsigned DEFAULT '0',
  `siteid` smallint unsigned DEFAULT '0',
  `blockid` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `blockid` (`blockid`),
  KEY `roleid` (`roleid`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_cache`;
CREATE TABLE `yp_cache` (
  `filename` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `path` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`filename`,`path`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_cache` VALUES('mood_program.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    1 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'震惊\',\n      \'pic\' => \'mood/a1.gif\',\n    ),\n    2 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'不解\',\n      \'pic\' => \'mood/a2.gif\',\n    ),\n    3 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'愤怒\',\n      \'pic\' => \'mood/a3.gif\',\n    ),\n    4 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'杯具\',\n      \'pic\' => \'mood/a4.gif\',\n    ),\n    5 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'无聊\',\n      \'pic\' => \'mood/a5.gif\',\n    ),\n    6 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'高兴\',\n      \'pic\' => \'mood/a6.gif\',\n    ),\n    7 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'支持\',\n      \'pic\' => \'mood/a7.gif\',\n    ),\n    8 => \n    array (\n      \'use\' => \'1\',\n      \'name\' => \'超赞\',\n      \'pic\' => \'mood/a8.gif\',\n    ),\n    9 => \n    array (\n      \'use\' => NULL,\n      \'name\' => \'\',\n      \'pic\' => \'\',\n    ),\n    10 => \n    array (\n      \'use\' => NULL,\n      \'name\' => \'\',\n      \'pic\' => \'\',\n    ),\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_content.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'1\',\n  2 => \'1\',\n  3 => \'1\',\n  9 => \'1\',\n  32 => \'1\',\n  5 => \'1\',\n  4 => \'1\',\n  6 => \'1\',\n  7 => \'1\',\n  8 => \'1\',\n  10 => \'1\',\n  11 => \'1\',\n  12 => \'1\',\n  13 => \'1\',\n  14 => \'1\',\n  15 => \'1\',\n  31 => \'1\',\n  33 => \'1\',\n  35 => \'1\',\n  36 => \'1\',\n  37 => \'1\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_content_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'catid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'1,5,6\',\n    \'catname\' => \'关于我们\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1128/20231128100206767.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'about\',\n    \'url\' => \'http://phpcms.lc/list-1-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'1\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'guanyuwomen\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  2 => \n  array (\n    \'catid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'19\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'2,35,36,37\',\n    \'catname\' => \'产品中心\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120161948397.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'product\',\n    \'url\' => \'http://phpcms.lc/list-2-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"17\"}\',\n    \'listorder\' => \'2\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'chanpinzhongxin\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'17\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  3 => \n  array (\n    \'catid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'20\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'3,10,11\',\n    \'catname\' => \'新闻资讯\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120162110723.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'news\',\n    \'url\' => \'http://phpcms.lc/list-3-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"17\"}\',\n    \'listorder\' => \'3\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xinwenzixun\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'17\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  9 => \n  array (\n    \'catid\' => \'9\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'21\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'9,31\',\n    \'catname\' => \'厂容厂貌\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1128/20231128100352627.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'case\',\n    \'url\' => \'http://phpcms.lc/list-9-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"17\"}\',\n    \'listorder\' => \'4\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'changrongchangmao\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'17\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  32 => \n  array (\n    \'catid\' => \'32\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'21\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'32,33\',\n    \'catname\' => \'荣誉资质\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1128/20231128100410519.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'ryzz\',\n    \'url\' => \'http://phpcms.lc/index.php?m=content&c=index&a=lists&catid=32\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'5\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'rongyuzizhi\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  5 => \n  array (\n    \'catid\' => \'5\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'1\',\n    \'arrparentid\' => \'0,1\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'5\',\n    \'catname\' => \'企业简介\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'about/\',\n    \'catdir\' => \'qiyejianjie\',\n    \'url\' => \'http://phpcms.lc/list-5-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'5\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'qiyejianjie\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  4 => \n  array (\n    \'catid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'4,7,8\',\n    \'catname\' => \'联系我们\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1128/20231128100425540.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'contact\',\n    \'url\' => \'http://phpcms.lc/list-4-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page_contact\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'6\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'lianxiwomen\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  6 => \n  array (\n    \'catid\' => \'6\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'1\',\n    \'arrparentid\' => \'0,1\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'6\',\n    \'catname\' => \'企业文化\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'about/\',\n    \'catdir\' => \'qiyewenhua\',\n    \'url\' => \'http://phpcms.lc/list-6-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'6\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'qiyewenhua\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  7 => \n  array (\n    \'catid\' => \'7\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'4\',\n    \'arrparentid\' => \'0,4\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'7\',\n    \'catname\' => \'联系方式\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'contact/\',\n    \'catdir\' => \'lianxifangshi\',\n    \'url\' => \'http://phpcms.lc/list-7-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page_contact\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'7\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'lianxifangshi\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  8 => \n  array (\n    \'catid\' => \'8\',\n    \'siteid\' => \'1\',\n    \'type\' => \'1\',\n    \'modelid\' => \'0\',\n    \'parentid\' => \'4\',\n    \'arrparentid\' => \'0,4\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'8\',\n    \'catname\' => \'在线留言\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120162209669.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'contact/\',\n    \'catdir\' => \'zaixianliuyan\',\n    \'url\' => \'http://phpcms.lc/list-8-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page_msg\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}\',\n    \'listorder\' => \'8\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zaixianliuyan\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => NULL,\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => NULL,\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'\',\n    \'workflowid\' => NULL,\n    \'isdomain\' => \'0\',\n  ),\n  10 => \n  array (\n    \'catid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'20\',\n    \'parentid\' => \'3\',\n    \'arrparentid\' => \'0,3\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'10\',\n    \'catname\' => \'公司要闻\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'news/\',\n    \'catdir\' => \'gongsiyaowen\',\n    \'url\' => \'http://phpcms.lc/list-10-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'10\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gongsiyaowen\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  11 => \n  array (\n    \'catid\' => \'11\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'20\',\n    \'parentid\' => \'3\',\n    \'arrparentid\' => \'0,3\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'11\',\n    \'catname\' => \'行业资讯\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'news/\',\n    \'catdir\' => \'xingyezixun\',\n    \'url\' => \'http://phpcms.lc/list-11-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'11\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'xingyezixun\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  12 => \n  array (\n    \'catid\' => \'12\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'22\',\n    \'parentid\' => \'0\',\n    \'arrparentid\' => \'0\',\n    \'child\' => \'1\',\n    \'arrchildid\' => \'12,13,14,15\',\n    \'catname\' => \'展示位\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'\',\n    \'catdir\' => \'display\',\n    \'url\' => \'http://phpcms.lc/index.php?m=content&c=index&a=lists&catid=12\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'12\',\n    \'ismenu\' => \'0\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zhanshiwei\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'0\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  13 => \n  array (\n    \'catid\' => \'13\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'22\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'13\',\n    \'catname\' => \'二维码\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1128/20231128100001199.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'display/\',\n    \'catdir\' => \'erweima\',\n    \'url\' => \'http://phpcms.lc/index.php?m=content&c=index&a=lists&catid=13\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'13\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'erweima\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  14 => \n  array (\n    \'catid\' => \'14\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'22\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'14\',\n    \'catname\' => \'轮播图\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'display/\',\n    \'catdir\' => \'lunbotu\',\n    \'url\' => \'http://phpcms.lc/index.php?m=content&c=index&a=lists&catid=14\',\n    \'items\' => \'2\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'14\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'lunbotu\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  15 => \n  array (\n    \'catid\' => \'15\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'22\',\n    \'parentid\' => \'12\',\n    \'arrparentid\' => \'0,12\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'15\',\n    \'catname\' => \'内页头图\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'display/\',\n    \'catdir\' => \'neiyetoutu\',\n    \'url\' => \'http://phpcms.lc/index.php?m=content&c=index&a=lists&catid=15\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'15\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'neiyetoutu\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  31 => \n  array (\n    \'catid\' => \'31\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'21\',\n    \'parentid\' => \'9\',\n    \'arrparentid\' => \'0,9\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'31\',\n    \'catname\' => \'工程实拍\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120162126313.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'case/\',\n    \'catdir\' => \'gongchengshipai\',\n    \'url\' => \'http://phpcms.lc/list-31-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'31\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'gongchengshipai\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  33 => \n  array (\n    \'catid\' => \'33\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'21\',\n    \'parentid\' => \'32\',\n    \'arrparentid\' => \'0,32\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'33\',\n    \'catname\' => \'资质证书\',\n    \'style\' => \'\',\n    \'image\' => \'\',\n    \'description\' => \'\',\n    \'parentdir\' => \'ryzz/\',\n    \'catdir\' => \'zizhizhengshu\',\n    \'url\' => \'http://phpcms.lc/index.php?m=content&c=index&a=lists&catid=33\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'33\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'zizhizhengshu\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'6\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  35 => \n  array (\n    \'catid\' => \'35\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'19\',\n    \'parentid\' => \'2\',\n    \'arrparentid\' => \'0,2\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'35\',\n    \'catname\' => \'产品分类01\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120161948397.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'/\',\n    \'catdir\' => \'chanpinfenlei01\',\n    \'url\' => \'http://phpcms.lc/list-35-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'35\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'chanpinfenlei01\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  36 => \n  array (\n    \'catid\' => \'36\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'19\',\n    \'parentid\' => \'2\',\n    \'arrparentid\' => \'0,2\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'36\',\n    \'catname\' => \'产品分类02\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120161948397.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'/\',\n    \'catdir\' => \'chanpinfenlei02\',\n    \'url\' => \'http://phpcms.lc/list-36-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'36\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'chanpinfenlei02\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n  37 => \n  array (\n    \'catid\' => \'37\',\n    \'siteid\' => \'1\',\n    \'type\' => \'0\',\n    \'modelid\' => \'19\',\n    \'parentid\' => \'2\',\n    \'arrparentid\' => \'0,2\',\n    \'child\' => \'0\',\n    \'arrchildid\' => \'37\',\n    \'catname\' => \'产品分类03\',\n    \'style\' => \'\',\n    \'image\' => \'/uploadfile/2023/1120/20231120161948397.jpg\',\n    \'description\' => \'\',\n    \'parentdir\' => \'/\',\n    \'catdir\' => \'chanpinfenlei03\',\n    \'url\' => \'http://phpcms.lc/list-37-1.html\',\n    \'items\' => \'0\',\n    \'hits\' => \'0\',\n    \'setting\' => \'{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}\',\n    \'listorder\' => \'37\',\n    \'ismenu\' => \'1\',\n    \'sethtml\' => \'0\',\n    \'letter\' => \'chanpinfenlei03\',\n    \'usable_type\' => \'\',\n    \'ismobilemenu\' => \'1\',\n    \'create_to_html_root\' => \'0\',\n    \'ishtml\' => \'0\',\n    \'content_ishtml\' => \'0\',\n    \'category_ruleid\' => \'30\',\n    \'show_ruleid\' => \'16\',\n    \'workflowid\' => \'\',\n    \'isdomain\' => \'0\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_22.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  12 => \'0\',\n  13 => \'0\',\n  14 => \'2\',\n  15 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('sitelist.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'siteid\' => \'1\',\n    \'name\' => \'云铺网络演示站\',\n    \'dirname\' => \'\',\n    \'domain\' => \'http://phpcms.lc/\',\n    \'site_title\' => \'云铺网络演示站\',\n    \'keywords\' => \'云铺网络演示站\',\n    \'description\' => \'云铺网络演示站\',\n    \'release_point\' => \'\',\n    \'default_style\' => \'default\',\n    \'template\' => \'default\',\n    \'setting\' => \'{\"upload_maxsize\":\"10240\",\"upload_allowext\":\"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf|mp4\",\"watermark_enable\":\"0\",\"watermark_minwidth\":\"200\",\"watermark_minheight\":\"200\",\"watermark_img\":\"statics\\\\/images\\\\/water\\\\/\\\\/mark.png\",\"watermark_pct\":\"85\",\"watermark_quality\":\"80\",\"watermark_pos\":\"9\"}\',\n    \'uuid\' => \'e5ccf8d4-39d8-11e9-825c-00163e0493ee\',\n    \'company_cn\' => \'云铺网络演示站\',\n    \'company_en\' => \'YUNPU\',\n    \'contact\' => \'Shiki\',\n    \'qq\' => \'10086\',\n    \'mobile\' => \'132-8888-8888\',\n    \'tel\' => \'0514-82688686\',\n    \'email\' => \'admin@yzypwl.com\',\n    \'address\' => \'江苏省扬州市广陵区\',\n    \'mappoint\' => \'119.470231,32.393748\',\n    \'zipcode\' => \'225000\',\n    \'icp\' => \'苏ICP备18XXXXXXX号\',\n    \'url\' => \'http://phpcms.lc/\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('downservers.cache.php','caches_commons/caches_data/','<?php\nreturn NULL;\n?>');
INSERT INTO `yp_cache` VALUES('badword.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('ipbanned.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('keylink.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('position.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \n  array (\n    \'posid\' => \'2\',\n    \'modelid\' => \'19\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页产品推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'4\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  1 => \n  array (\n    \'posid\' => \'1\',\n    \'modelid\' => \'20\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页新闻推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'1\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n  12 => \n  array (\n    \'posid\' => \'12\',\n    \'modelid\' => \'21\',\n    \'catid\' => \'0\',\n    \'name\' => \'首页图片推荐\',\n    \'maxnum\' => \'20\',\n    \'extention\' => \'\',\n    \'listorder\' => \'0\',\n    \'siteid\' => \'1\',\n    \'thumb\' => \'\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('role_siteid.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \n  array (\n    0 => 1,\n  ),\n  7 => \n  array (\n    0 => 1,\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('role.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'超级管理员\',\n  2 => \'站点管理员\',\n  7 => \'发布人员\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('urlrules_detail.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'urlruleid\' => \'1\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n    \'example\' => \'news/china/1000.html\',\n  ),\n  6 => \n  array (\n    \'urlruleid\' => \'6\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=lists&catid=1&page=1\',\n  ),\n  11 => \n  array (\n    \'urlruleid\' => \'11\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'2010/catdir_0720/1_2.html\',\n  ),\n  12 => \n  array (\n    \'urlruleid\' => \'12\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'1\',\n    \'urlrule\' => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n    \'example\' => \'it/product/2010/0720/1_2.html\',\n  ),\n  16 => \n  array (\n    \'urlruleid\' => \'16\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n    \'example\' => \'index.php?m=content&c=index&a=show&catid=1&id=1\',\n  ),\n  17 => \n  array (\n    \'urlruleid\' => \'17\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'show-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'show-1-2-1.html\',\n  ),\n  18 => \n  array (\n    \'urlruleid\' => \'18\',\n    \'module\' => \'content\',\n    \'file\' => \'show\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'content-{$catid}-{$id}-{$page}.html\',\n    \'example\' => \'content-1-2-1.html\',\n  ),\n  30 => \n  array (\n    \'urlruleid\' => \'30\',\n    \'module\' => \'content\',\n    \'file\' => \'category\',\n    \'ishtml\' => \'0\',\n    \'urlrule\' => \'list-{$catid}-{$page}.html\',\n    \'example\' => \'list-1-1.html\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('urlrules.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \'{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html\',\n  6 => \'index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}\',\n  11 => \'{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html\',\n  12 => \'{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html\',\n  16 => \'index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}\',\n  17 => \'show-{$catid}-{$id}-{$page}.html\',\n  18 => \'content-{$catid}-{$id}-{$page}.html\',\n  30 => \'list-{$catid}-{$page}.html\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('modules.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  \'admin\' => \n  array (\n    \'module\' => \'admin\',\n    \'name\' => \'admin\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'{\"admin_email\":\"phpcms@phpcms.cn\",\"maxloginfailedtimes\":\"8\",\"minrefreshtime\":\"2\",\"mail_type\":\"1\",\"mail_server\":\"smtp.qq.com\",\"mail_port\":\"25\",\"category_ajax\":\"0\",\"mail_user\":\"phpcms.cn@foxmail.com\",\"mail_auth\":\"1\",\"mail_from\":\"phpcms.cn@foxmail.com\",\"mail_password\":\"zcwl888\",\"errorlog_size\":\"20\"}\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-18\',\n    \'updatedate\' => \'2010-10-18\',\n  ),\n  \'member\' => \n  array (\n    \'module\' => \'member\',\n    \'name\' => \'会员\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'allowregister\\\' => \\\'1\\\',\n  \\\'choosemodel\\\' => \\\'1\\\',\n  \\\'enablemailcheck\\\' => \\\'0\\\',\n  \\\'registerverify\\\' => \\\'0\\\',\n  \\\'showapppoint\\\' => \\\'0\\\',\n  \\\'rmb_point_rate\\\' => \\\'10\\\',\n  \\\'defualtpoint\\\' => \\\'0\\\',\n  \\\'defualtamount\\\' => \\\'0\\\',\n  \\\'showregprotocol\\\' => \\\'0\\\',\n  \\\'regprotocol\\\' => \\\'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \\\',\n  \\\'registerverifymessage\\\' => \\\' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n  \\\'forgetpassword\\\' => \\\' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'pay\' => \n  array (\n    \'module\' => \'pay\',\n    \'name\' => \'支付\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'digg\' => \n  array (\n    \'module\' => \'digg\',\n    \'name\' => \'顶一下\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'special\' => \n  array (\n    \'module\' => \'special\',\n    \'name\' => \'专题\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'content\' => \n  array (\n    \'module\' => \'content\',\n    \'name\' => \'内容模块\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'search\' => \n  array (\n    \'module\' => \'search\',\n    \'name\' => \'全站搜索\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  \\\'fulltextenble\\\' => \\\'1\\\',\n  \\\'relationenble\\\' => \\\'1\\\',\n  \\\'suggestenable\\\' => \\\'1\\\',\n  \\\'sphinxenable\\\' => \\\'0\\\',\n  \\\'sphinxhost\\\' => \\\'10.228.134.102\\\',\n  \\\'sphinxport\\\' => \\\'9312\\\',\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'scan\' => \n  array (\n    \'module\' => \'scan\',\n    \'name\' => \'木马扫描\',\n    \'url\' => \'scan\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'attachment\' => \n  array (\n    \'module\' => \'attachment\',\n    \'name\' => \'附件\',\n    \'url\' => \'attachment\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'block\' => \n  array (\n    \'module\' => \'block\',\n    \'name\' => \'碎片\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'collection\' => \n  array (\n    \'module\' => \'collection\',\n    \'name\' => \'采集模块\',\n    \'url\' => \'collection\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'dbsource\' => \n  array (\n    \'module\' => \'dbsource\',\n    \'name\' => \'数据源\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'template\' => \n  array (\n    \'module\' => \'template\',\n    \'name\' => \'模板风格\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'release\' => \n  array (\n    \'module\' => \'release\',\n    \'name\' => \'发布点\',\n    \'url\' => \'\',\n    \'iscore\' => \'1\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-01\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'video\' => \n  array (\n    \'module\' => \'video\',\n    \'name\' => \'视频库\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2012-09-28\',\n    \'updatedate\' => \'2012-09-28\',\n  ),\n  \'announce\' => \n  array (\n    \'module\' => \'announce\',\n    \'name\' => \'公告\',\n    \'url\' => \'announce/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'公告\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2019-02-26\',\n    \'updatedate\' => \'2019-02-26\',\n  ),\n  \'comment\' => \n  array (\n    \'module\' => \'comment\',\n    \'name\' => \'评论\',\n    \'url\' => \'comment/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'评论\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2019-02-26\',\n    \'updatedate\' => \'2019-02-26\',\n  ),\n  \'link\' => \n  array (\n    \'module\' => \'link\',\n    \'name\' => \'友情链接\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\n  1 => \n  array (\n    \\\'is_post\\\' => \\\'1\\\',\n    \\\'enablecheckcode\\\' => \\\'0\\\',\n  ),\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'vote\' => \n  array (\n    \'module\' => \'vote\',\n    \'name\' => \'投票\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'array (\r\n  1 => \r\n  array (\r\n    \\\'default_style\\\' => \\\'default\\\',\r\n    \\\'vote_tp_template\\\' => \\\'vote_tp\\\',\r\n    \\\'allowguest\\\' => \\\'1\\\',\r\n    \\\'enabled\\\' => \\\'1\\\',\r\n    \\\'interval\\\' => \\\'1\\\',\r\n    \\\'credit\\\' => \\\'1\\\',\r\n  ),\r\n)\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'message\' => \n  array (\n    \'module\' => \'message\',\n    \'name\' => \'短消息\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-09-06\',\n    \'updatedate\' => \'2010-09-06\',\n  ),\n  \'mood\' => \n  array (\n    \'module\' => \'mood\',\n    \'name\' => \'新闻心情\',\n    \'url\' => \'mood/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'新闻心情\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2019-02-26\',\n    \'updatedate\' => \'2019-02-26\',\n  ),\n  \'poster\' => \n  array (\n    \'module\' => \'poster\',\n    \'name\' => \'广告模块\',\n    \'url\' => \'poster/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'广告模块\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2019-02-26\',\n    \'updatedate\' => \'2019-02-26\',\n  ),\n  \'formguide\' => \n  array (\n    \'module\' => \'formguide\',\n    \'name\' => \'表单向导\',\n    \'url\' => \'formguide/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'formguide\',\n    \'setting\' => \'{\"allowmultisubmit\":\"0\",\"interval\":\"\",\"allowunreg\":\"1\",\"mailmessage\":\"\"}\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2010-10-20\',\n    \'updatedate\' => \'2010-10-20\',\n  ),\n  \'wap\' => \n  array (\n    \'module\' => \'wap\',\n    \'name\' => \'手机门户\',\n    \'url\' => \'wap/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'手机门户\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2019-02-26\',\n    \'updatedate\' => \'2019-02-26\',\n  ),\n  \'upgrade\' => \n  array (\n    \'module\' => \'upgrade\',\n    \'name\' => \'在线升级\',\n    \'url\' => \'\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2011-05-18\',\n    \'updatedate\' => \'2011-05-18\',\n  ),\n  \'tag\' => \n  array (\n    \'module\' => \'tag\',\n    \'name\' => \'标签向导\',\n    \'url\' => \'tag/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'标签向导\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2019-02-26\',\n    \'updatedate\' => \'2019-02-26\',\n  ),\n  \'sms\' => \n  array (\n    \'module\' => \'sms\',\n    \'name\' => \'短信平台\',\n    \'url\' => \'sms/\',\n    \'iscore\' => \'0\',\n    \'version\' => \'1.0\',\n    \'description\' => \'短信平台\',\n    \'setting\' => \'\',\n    \'listorder\' => \'0\',\n    \'disabled\' => \'0\',\n    \'installdate\' => \'2011-09-02\',\n    \'updatedate\' => \'2011-09-02\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('type_.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('model.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  21 => \n  array (\n    \'modelid\' => \'21\',\n    \'siteid\' => \'1\',\n    \'name\' => \'图片模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'picture\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_picture\',\n    \'list_template\' => \'list_picture\',\n    \'show_template\' => \'show_picture\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  20 => \n  array (\n    \'modelid\' => \'20\',\n    \'siteid\' => \'1\',\n    \'name\' => \'新闻模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'news\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category\',\n    \'list_template\' => \'list\',\n    \'show_template\' => \'show\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  22 => \n  array (\n    \'modelid\' => \'22\',\n    \'siteid\' => \'1\',\n    \'name\' => \'其他\',\n    \'description\' => \'\',\n    \'tablename\' => \'other\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category\',\n    \'list_template\' => \'list\',\n    \'show_template\' => \'show\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n  19 => \n  array (\n    \'modelid\' => \'19\',\n    \'siteid\' => \'1\',\n    \'name\' => \'产品模型\',\n    \'description\' => \'\',\n    \'tablename\' => \'product\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'default\',\n    \'category_template\' => \'category_product\',\n    \'list_template\' => \'list_product\',\n    \'show_template\' => \'show_product\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'0\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_21.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  9 => \'0\',\n  31 => \'0\',\n  32 => \'0\',\n  33 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_20.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  3 => \'0\',\n  10 => \'0\',\n  11 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_19.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  2 => \'0\',\n  36 => \'0\',\n  37 => \'0\',\n  35 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('workflow_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'workflowid\' => \'1\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'1\',\n    \'workname\' => \'一级审核\',\n    \'description\' => \'审核一次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  2 => \n  array (\n    \'workflowid\' => \'2\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'2\',\n    \'workname\' => \'二级审核\',\n    \'description\' => \'审核两次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  3 => \n  array (\n    \'workflowid\' => \'3\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'3\',\n    \'workname\' => \'三级审核\',\n    \'description\' => \'审核三次\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n  4 => \n  array (\n    \'workflowid\' => \'4\',\n    \'siteid\' => \'1\',\n    \'steps\' => \'4\',\n    \'workname\' => \'四级审核\',\n    \'description\' => \'四级审核\',\n    \'setting\' => \'\',\n    \'flag\' => \'0\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('member_model.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  10 => \n  array (\n    \'modelid\' => \'10\',\n    \'siteid\' => \'1\',\n    \'name\' => \'普通会员\',\n    \'description\' => \'普通会员\',\n    \'tablename\' => \'member_detail\',\n    \'setting\' => \'\',\n    \'addtime\' => \'0\',\n    \'items\' => \'0\',\n    \'enablesearch\' => \'1\',\n    \'disabled\' => \'0\',\n    \'default_style\' => \'\',\n    \'category_template\' => \'\',\n    \'list_template\' => \'\',\n    \'show_template\' => \'\',\n    \'js_template\' => \'\',\n    \'admin_list_template\' => \'\',\n    \'member_add_template\' => \'\',\n    \'member_list_template\' => \'\',\n    \'sort\' => \'0\',\n    \'type\' => \'2\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('special.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('common.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  \'admin_email\' => \'phpcms@phpcms.cn\',\n  \'maxloginfailedtimes\' => \'8\',\n  \'minrefreshtime\' => \'2\',\n  \'mail_type\' => \'1\',\n  \'mail_server\' => \'smtp.qq.com\',\n  \'mail_port\' => \'25\',\n  \'category_ajax\' => \'0\',\n  \'mail_user\' => \'phpcms.cn@foxmail.com\',\n  \'mail_auth\' => \'1\',\n  \'mail_from\' => \'phpcms.cn@foxmail.com\',\n  \'mail_password\' => \'zcwl888\',\n  \'errorlog_size\' => \'20\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_1.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  10 => \'0\',\n  9 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_2.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_3.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  29 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_11.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('type_content.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('vote.cache.php','caches_commons/caches_data/','<?php\nreturn NULL;\n?>');
INSERT INTO `yp_cache` VALUES('link.cache.php','caches_commons/caches_data/','<?php\nreturn NULL;\n?>');
INSERT INTO `yp_cache` VALUES('category_items_18.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  6 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_13.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_12.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  13 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_14.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  21 => \'0\',\n  24 => \'0\',\n);\n?>');
INSERT INTO `yp_cache` VALUES('formguide.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  1 => \n  array (\n    \'allowmultisubmit\' => \'0\',\n    \'interval\' => \'\',\n    \'allowunreg\' => \'1\',\n    \'mailmessage\' => \'\',\n  ),\n);\n?>');
INSERT INTO `yp_cache` VALUES('category_items_17.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n);\n?>');
INSERT INTO `yp_cache` VALUES('bakup_tables.cache.php','caches_commons/caches_data/','<?php\nreturn array (\n  0 => \'yp_admin\',\n  1 => \'yp_admin_panel\',\n  2 => \'yp_admin_role\',\n  3 => \'yp_admin_role_priv\',\n  4 => \'yp_announce\',\n  5 => \'yp_attachment\',\n  6 => \'yp_attachment_index\',\n  7 => \'yp_badword\',\n  8 => \'yp_block\',\n  9 => \'yp_block_history\',\n  10 => \'yp_block_priv\',\n  11 => \'yp_cache\',\n  12 => \'yp_category\',\n  13 => \'yp_category_priv\',\n  14 => \'yp_collection_content\',\n  15 => \'yp_collection_history\',\n  16 => \'yp_collection_node\',\n  17 => \'yp_collection_program\',\n  18 => \'yp_comment\',\n  19 => \'yp_comment_check\',\n  20 => \'yp_comment_data_1\',\n  21 => \'yp_comment_setting\',\n  22 => \'yp_comment_table\',\n  23 => \'yp_content_check\',\n  24 => \'yp_copyfrom\',\n  25 => \'yp_datacall\',\n  26 => \'yp_dbsource\',\n  27 => \'yp_downservers\',\n  28 => \'yp_extend_setting\',\n  29 => \'yp_favorite\',\n  30 => \'yp_form_advisory\',\n  31 => \'yp_form_guestbook\',\n  32 => \'yp_hits\',\n  33 => \'yp_ipbanned\',\n  34 => \'yp_keylink\',\n  35 => \'yp_keyword\',\n  36 => \'yp_keyword_data\',\n  37 => \'yp_link\',\n  38 => \'yp_linkage\',\n  39 => \'yp_log\',\n  40 => \'yp_member\',\n  41 => \'yp_member_detail\',\n  42 => \'yp_member_group\',\n  43 => \'yp_member_menu\',\n  44 => \'yp_member_verify\',\n  45 => \'yp_member_vip\',\n  46 => \'yp_menu\',\n  47 => \'yp_message\',\n  48 => \'yp_message_data\',\n  49 => \'yp_message_group\',\n  50 => \'yp_model\',\n  51 => \'yp_model_field\',\n  52 => \'yp_module\',\n  53 => \'yp_mood\',\n  54 => \'yp_news\',\n  55 => \'yp_news_data\',\n  56 => \'yp_other\',\n  57 => \'yp_other_data\',\n  58 => \'yp_page\',\n  59 => \'yp_pay_account\',\n  60 => \'yp_pay_payment\',\n  61 => \'yp_pay_spend\',\n  62 => \'yp_picture\',\n  63 => \'yp_picture_data\',\n  64 => \'yp_position\',\n  65 => \'yp_position_data\',\n  66 => \'yp_poster\',\n  67 => \'yp_poster_201902\',\n  68 => \'yp_poster_201903\',\n  69 => \'yp_poster_201904\',\n  70 => \'yp_poster_space\',\n  71 => \'yp_product\',\n  72 => \'yp_product_data\',\n  73 => \'yp_queue\',\n  74 => \'yp_release_point\',\n  75 => \'yp_search\',\n  76 => \'yp_search_keyword\',\n  77 => \'yp_session\',\n  78 => \'yp_site\',\n  79 => \'yp_sms_report\',\n  80 => \'yp_special\',\n  81 => \'yp_special_c_data\',\n  82 => \'yp_special_content\',\n  83 => \'yp_sphinx_counter\',\n  84 => \'yp_sso_admin\',\n  85 => \'yp_sso_applications\',\n  86 => \'yp_sso_members\',\n  87 => \'yp_sso_messagequeue\',\n  88 => \'yp_sso_session\',\n  89 => \'yp_sso_settings\',\n  90 => \'yp_tag\',\n  91 => \'yp_template_bak\',\n  92 => \'yp_times\',\n  93 => \'yp_type\',\n  94 => \'yp_urlrule\',\n  95 => \'yp_video_content\',\n  96 => \'yp_video_store\',\n  97 => \'yp_vote_data\',\n  98 => \'yp_vote_option\',\n  99 => \'yp_vote_subject\',\n  100 => \'yp_wap\',\n  101 => \'yp_wap_type\',\n  102 => \'yp_workflow\',\n);\n?>');

DROP TABLE IF EXISTS `yp_category`;
CREATE TABLE `yp_category` (
  `catid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `modelid` smallint unsigned NOT NULL DEFAULT '0',
  `parentid` smallint unsigned NOT NULL DEFAULT '0',
  `arrparentid` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `child` tinyint unsigned NOT NULL DEFAULT '0',
  `arrchildid` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `catname` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `style` varchar(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `parentdir` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `catdir` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `items` mediumint unsigned NOT NULL DEFAULT '0',
  `hits` int unsigned NOT NULL DEFAULT '0',
  `setting` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `ismenu` tinyint unsigned NOT NULL DEFAULT '1',
  `sethtml` tinyint unsigned NOT NULL DEFAULT '0',
  `letter` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `usable_type` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ismobilemenu` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`catid`),
  KEY `module` (`module`,`parentid`,`listorder`,`catid`),
  KEY `siteid` (`siteid`,`type`)
) ENGINE=MyISAM AUTO_INCREMENT=38 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_category` VALUES('1','1','content','1','0','0','0','1','1,5,6','关于我们','','/uploadfile/2023/1128/20231128100206767.jpg','','','about','/list-1-1.html','0','0','{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}','1','1','0','guanyuwomen','','1');
INSERT INTO `yp_category` VALUES('2','1','content','0','19','0','0','1','2,35,36,37','产品中心','','/uploadfile/2023/1120/20231120161948397.jpg','','','product','/list-2-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"17\"}','2','1','0','chanpinzhongxin','','1');
INSERT INTO `yp_category` VALUES('3','1','content','0','20','0','0','1','3,10,11','新闻资讯','','/uploadfile/2023/1120/20231120162110723.jpg','','','news','/list-3-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"17\"}','3','1','0','xinwenzixun','','1');
INSERT INTO `yp_category` VALUES('4','1','content','1','0','0','0','1','4,7,8','联系我们','','/uploadfile/2023/1128/20231128100425540.jpg','','','contact','/list-4-1.html','0','0','{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page_contact\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}','6','1','0','lianxiwomen','','1');
INSERT INTO `yp_category` VALUES('5','1','content','1','0','1','0,1','0','5','企业简介','','','','about/','qiyejianjie','/list-5-1.html','0','0','{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}','5','1','0','qiyejianjie','','1');
INSERT INTO `yp_category` VALUES('6','1','content','1','0','1','0,1','0','6','企业文化','','','','about/','qiyewenhua','/list-6-1.html','0','0','{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}','6','1','0','qiyewenhua','','1');
INSERT INTO `yp_category` VALUES('7','1','content','1','0','4','0,4','0','7','联系方式','','','','contact/','lianxifangshi','/list-7-1.html','0','0','{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page_contact\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}','7','1','0','lianxifangshi','','1');
INSERT INTO `yp_category` VALUES('8','1','content','1','0','4','0,4','0','8','在线留言','','/uploadfile/2023/1120/20231120162209669.jpg','','contact/','zaixianliuyan','/list-8-1.html','0','0','{\"ishtml\":\"0\",\"template_list\":\"default\",\"page_template\":\"page_msg\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"category_ruleid\":\"30\",\"show_ruleid\":\"\",\"repeatchargedays\":\"1\"}','8','1','0','zaixianliuyan','','1');
INSERT INTO `yp_category` VALUES('9','1','content','0','21','0','0','1','9,31','厂容厂貌','','/uploadfile/2023/1128/20231128100352627.jpg','','','case','/list-9-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"17\"}','4','1','0','changrongchangmao','','1');
INSERT INTO `yp_category` VALUES('10','1','content','0','20','3','0,3','0','10','公司要闻','','','','news/','gongsiyaowen','/list-10-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}','10','1','0','gongsiyaowen','','1');
INSERT INTO `yp_category` VALUES('11','1','content','0','20','3','0,3','0','11','行业资讯','','','','news/','xingyezixun','/list-11-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}','11','1','0','xingyezixun','','1');
INSERT INTO `yp_category` VALUES('12','1','content','0','22','0','0','1','12,13,14,15','展示位','','','','','display','/index.php?m=content&c=index&a=lists&catid=12','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}','12','0','0','zhanshiwei','','0');
INSERT INTO `yp_category` VALUES('13','1','content','0','22','12','0,12','0','13','二维码','','/uploadfile/2023/1128/20231128100001199.jpg','','display/','erweima','/index.php?m=content&c=index&a=lists&catid=13','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}','13','1','0','erweima','','1');
INSERT INTO `yp_category` VALUES('14','1','content','0','22','12','0,12','0','14','轮播图','','','','display/','lunbotu','/index.php?m=content&c=index&a=lists&catid=14','2','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}','14','1','0','lunbotu','','1');
INSERT INTO `yp_category` VALUES('15','1','content','0','22','12','0,12','0','15','内页头图','','','','display/','neiyetoutu','/index.php?m=content&c=index&a=lists&catid=15','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category\",\"list_template\":\"list\",\"show_template\":\"show\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}','15','1','0','neiyetoutu','','1');
INSERT INTO `yp_category` VALUES('36','1','content','0','19','2','0,2','0','36','产品分类02','','/uploadfile/2023/1120/20231120161948397.jpg','','/','chanpinfenlei02','/list-36-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}','36','1','0','chanpinfenlei02','','1');
INSERT INTO `yp_category` VALUES('37','1','content','0','19','2','0,2','0','37','产品分类03','','/uploadfile/2023/1120/20231120161948397.jpg','','/','chanpinfenlei03','/list-37-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}','37','1','0','chanpinfenlei03','','1');
INSERT INTO `yp_category` VALUES('31','1','content','0','21','9','0,9','0','31','工程实拍','','/uploadfile/2023/1120/20231120162126313.jpg','','case/','gongchengshipai','/list-31-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}','31','1','0','gongchengshipai','','1');
INSERT INTO `yp_category` VALUES('32','1','content','0','21','0','0','1','32,33','荣誉资质','','/uploadfile/2023/1128/20231128100410519.jpg','','','ryzz','/index.php?m=content&c=index&a=lists&catid=32','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}','5','1','0','rongyuzizhi','','1');
INSERT INTO `yp_category` VALUES('33','1','content','0','21','32','0,32','0','33','资质证书','','','','ryzz/','zizhizhengshu','/index.php?m=content&c=index&a=lists&catid=33','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_picture\",\"list_template\":\"list_picture\",\"show_template\":\"show_picture\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"6\",\"show_ruleid\":\"16\"}','33','1','0','zizhizhengshu','','1');
INSERT INTO `yp_category` VALUES('35','1','content','0','19','2','0,2','0','35','产品分类01','','/uploadfile/2023/1120/20231120161948397.jpg','','/','chanpinfenlei01','/list-35-1.html','0','0','{\"workflowid\":\"\",\"ishtml\":\"0\",\"content_ishtml\":\"0\",\"create_to_html_root\":\"0\",\"template_list\":\"default\",\"category_template\":\"category_product\",\"list_template\":\"list_product\",\"show_template\":\"show_product\",\"meta_title\":\"\",\"meta_keywords\":\"\",\"meta_description\":\"\",\"presentpoint\":\"1\",\"defaultchargepoint\":\"0\",\"paytype\":\"0\",\"repeatchargedays\":\"1\",\"category_ruleid\":\"30\",\"show_ruleid\":\"16\"}','35','1','0','chanpinfenlei01','','1');

DROP TABLE IF EXISTS `yp_category_priv`;
CREATE TABLE `yp_category_priv` (
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `roleid` smallint unsigned NOT NULL DEFAULT '0',
  `is_admin` tinyint unsigned NOT NULL DEFAULT '0',
  `action` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  KEY `catid` (`catid`,`roleid`,`is_admin`,`action`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_collection_content`;
CREATE TABLE `yp_collection_content` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nodeid` int unsigned NOT NULL DEFAULT '0',
  `siteid` mediumint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `url` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `title` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nodeid` (`nodeid`,`siteid`),
  KEY `status` (`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_collection_history`;
CREATE TABLE `yp_collection_history` (
  `md5` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`md5`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_collection_node`;
CREATE TABLE `yp_collection_node` (
  `nodeid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `lastdate` int unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `sourcecharset` varchar(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `sourcetype` tinyint unsigned NOT NULL DEFAULT '0',
  `urlpage` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pagesize_start` tinyint unsigned NOT NULL DEFAULT '0',
  `pagesize_end` mediumint unsigned NOT NULL DEFAULT '0',
  `page_base` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `par_num` tinyint unsigned NOT NULL DEFAULT '1',
  `url_contain` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url_except` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url_start` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `url_end` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `title_rule` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `title_html_rule` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `author_rule` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `author_html_rule` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `comeform_rule` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `comeform_html_rule` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `time_rule` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `time_html_rule` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content_rule` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content_html_rule` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content_page_start` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content_page_end` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content_page_rule` tinyint unsigned NOT NULL DEFAULT '0',
  `content_page` tinyint unsigned NOT NULL DEFAULT '0',
  `content_nextpage` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `down_attachment` tinyint unsigned NOT NULL DEFAULT '0',
  `watermark` tinyint unsigned NOT NULL DEFAULT '0',
  `coll_order` tinyint unsigned NOT NULL DEFAULT '0',
  `customize_config` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`nodeid`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_collection_program`;
CREATE TABLE `yp_collection_program` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `nodeid` int unsigned NOT NULL DEFAULT '0',
  `modelid` mediumint unsigned NOT NULL DEFAULT '0',
  `catid` int unsigned NOT NULL DEFAULT '0',
  `config` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `nodeid` (`nodeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_comment`;
CREATE TABLE `yp_comment` (
  `commentid` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `siteid` smallint NOT NULL DEFAULT '0',
  `title` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `total` int unsigned DEFAULT '0',
  `square` mediumint unsigned DEFAULT '0',
  `anti` mediumint unsigned DEFAULT '0',
  `neutral` mediumint unsigned DEFAULT '0',
  `display_type` tinyint(1) DEFAULT '0',
  `tableid` mediumint unsigned DEFAULT '0',
  `lastupdate` int unsigned DEFAULT '0',
  PRIMARY KEY (`commentid`),
  KEY `lastupdate` (`lastupdate`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_comment_check`;
CREATE TABLE `yp_comment_check` (
  `id` int NOT NULL AUTO_INCREMENT,
  `comment_data_id` int DEFAULT '0' COMMENT '论评ID号',
  `siteid` smallint NOT NULL DEFAULT '0' COMMENT '站点ID',
  `tableid` mediumint DEFAULT '0' COMMENT '数据存储表ID',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `comment_data_id` (`comment_data_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_comment_data_1`;
CREATE TABLE `yp_comment_data_1` (
  `id` int unsigned NOT NULL AUTO_INCREMENT COMMENT '评论ID',
  `commentid` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '' COMMENT '评论ID号',
  `siteid` smallint NOT NULL DEFAULT '0' COMMENT '站点ID',
  `userid` int unsigned DEFAULT '0' COMMENT '用户ID',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '用户名',
  `creat_at` int DEFAULT NULL COMMENT '发布时间',
  `ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL COMMENT '用户IP地址',
  `status` tinyint(1) DEFAULT '0' COMMENT '评论状态{0:未审核,-1:未通过审核,1:通过审核}',
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin COMMENT '评论内容',
  `direction` tinyint(1) DEFAULT '0' COMMENT '评论方向{0:无方向,1:正文,2:反方,3:中立}',
  `support` mediumint unsigned DEFAULT '0' COMMENT '支持数',
  `reply` tinyint(1) NOT NULL DEFAULT '0' COMMENT '是否为回复',
  PRIMARY KEY (`id`),
  KEY `commentid` (`commentid`),
  KEY `direction` (`direction`),
  KEY `siteid` (`siteid`),
  KEY `support` (`support`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_comment_setting`;
CREATE TABLE `yp_comment_setting` (
  `siteid` smallint NOT NULL DEFAULT '0' COMMENT '站点ID',
  `guest` tinyint(1) DEFAULT '0' COMMENT '是否允许游客评论',
  `check` tinyint(1) DEFAULT '0' COMMENT '是否需要审核',
  `code` tinyint(1) DEFAULT '0' COMMENT '是否开启验证码',
  `add_point` tinyint unsigned DEFAULT '0' COMMENT '添加的积分数',
  `del_point` tinyint unsigned DEFAULT '0' COMMENT '扣除的积分数',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_comment_setting` VALUES('1','0','0','0','0','0');

DROP TABLE IF EXISTS `yp_comment_table`;
CREATE TABLE `yp_comment_table` (
  `tableid` mediumint NOT NULL AUTO_INCREMENT COMMENT '表ID号',
  `total` int unsigned DEFAULT '0' COMMENT '数据总量',
  `creat_at` int DEFAULT '0' COMMENT '创建时间',
  PRIMARY KEY (`tableid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_comment_table` VALUES('1','0','0');

DROP TABLE IF EXISTS `yp_content_check`;
CREATE TABLE `yp_content_check` (
  `checkid` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `title` char(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `inputtime` int unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  KEY `username` (`username`),
  KEY `checkid` (`checkid`),
  KEY `status` (`status`,`inputtime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_copyfrom`;
CREATE TABLE `yp_copyfrom` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `sitename` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `siteurl` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `thumb` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_datacall`;
CREATE TABLE `yp_datacall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `dis_type` tinyint unsigned DEFAULT '0',
  `type` tinyint(1) DEFAULT '0',
  `module` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `action` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `template` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `cache` mediumint DEFAULT NULL,
  `num` smallint unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_dbsource`;
CREATE TABLE `yp_dbsource` (
  `id` int NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `host` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `port` int NOT NULL DEFAULT '3306',
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dbname` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dbtablepre` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `charset` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_downservers`;
CREATE TABLE `yp_downservers` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `sitename` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `siteurl` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_extend_setting`;
CREATE TABLE `yp_extend_setting` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `key` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `key` (`key`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_favorite`;
CREATE TABLE `yp_favorite` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `title` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `adddate` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_form_advisory`;
CREATE TABLE `yp_form_advisory` (
  `dataid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint unsigned NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `datetime` int unsigned NOT NULL,
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `wechat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `qq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`dataid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_form_guestbook`;
CREATE TABLE `yp_form_guestbook` (
  `dataid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `userid` mediumint unsigned NOT NULL,
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `datetime` int unsigned NOT NULL,
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `nickname` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `wechat` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `content` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `phone` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `email` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `qq` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dataid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_hits`;
CREATE TABLE `yp_hits` (
  `hitsid` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `views` int unsigned NOT NULL DEFAULT '0',
  `yesterdayviews` int unsigned NOT NULL DEFAULT '0',
  `dayviews` int unsigned NOT NULL DEFAULT '0',
  `weekviews` int unsigned NOT NULL DEFAULT '0',
  `monthviews` int unsigned NOT NULL DEFAULT '0',
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`hitsid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_hits` VALUES('c-12-30','14','0','0','0','0','0','1554366027');
INSERT INTO `yp_hits` VALUES('c-12-31','14','0','0','0','0','0','1554366128');
INSERT INTO `yp_hits` VALUES('c-12-9','14','0','0','0','0','0','1553516572');
INSERT INTO `yp_hits` VALUES('c-12-10','14','0','0','0','0','0','1553516653');
INSERT INTO `yp_hits` VALUES('c-12-11','13','0','0','0','0','0','1553516942');
INSERT INTO `yp_hits` VALUES('c-12-32','14','0','0','0','0','0','1554366172');
INSERT INTO `yp_hits` VALUES('c-12-33','14','0','0','0','0','0','1554366296');
INSERT INTO `yp_hits` VALUES('c-12-34','14','0','0','0','0','0','1554366367');
INSERT INTO `yp_hits` VALUES('c-12-35','14','0','0','0','0','0','1554366468');
INSERT INTO `yp_hits` VALUES('c-2-1','7','2','0','2','2','2','1554368121');
INSERT INTO `yp_hits` VALUES('c-12-36','15','0','0','0','0','0','1554367924');
INSERT INTO `yp_hits` VALUES('c-12-37','16','0','0','0','0','0','1554368077');
INSERT INTO `yp_hits` VALUES('c-12-38','16','0','0','0','0','0','1554368212');
INSERT INTO `yp_hits` VALUES('c-12-39','27','0','0','0','0','0','1554368315');
INSERT INTO `yp_hits` VALUES('c-22-1','14','0','0','0','0','0','1700233879');
INSERT INTO `yp_hits` VALUES('c-22-2','14','0','0','0','0','0','1700233898');

DROP TABLE IF EXISTS `yp_ipbanned`;
CREATE TABLE `yp_ipbanned` (
  `ipbannedid` smallint NOT NULL AUTO_INCREMENT,
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `expires` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`ipbannedid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_keylink`;
CREATE TABLE `yp_keylink` (
  `keylinkid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `word` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`keylinkid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_keyword`;
CREATE TABLE `yp_keyword` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `keyword` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pinyin` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `videonum` int NOT NULL DEFAULT '0',
  `searchnums` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `keyword` (`keyword`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=54 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_keyword` VALUES('1','1','消费互联网','xiaofeihulianwang','1','0');
INSERT INTO `yp_keyword` VALUES('2','1','产业互联网','chanyehulianwang','1','0');
INSERT INTO `yp_keyword` VALUES('3','1','大于','dayu','1','0');
INSERT INTO `yp_keyword` VALUES('4','1','热烈祝贺','reliezhuhe','1','0');
INSERT INTO `yp_keyword` VALUES('5','1','正式上线','zhengshishangxian','12','0');
INSERT INTO `yp_keyword` VALUES('6','1','扬州','yangzhou','1','0');
INSERT INTO `yp_keyword` VALUES('7','1','123','123','1','0');
INSERT INTO `yp_keyword` VALUES('8','1','产品','chanpin','4','0');
INSERT INTO `yp_keyword` VALUES('9','1','213123123','213123123','1','0');
INSERT INTO `yp_keyword` VALUES('10','1','产23品213123123','chan23pin213123123','1','0');
INSERT INTO `yp_keyword` VALUES('11','1','13123123123','13123123123','1','0');
INSERT INTO `yp_keyword` VALUES('12','1','123131141414','123131141414','1','0');
INSERT INTO `yp_keyword` VALUES('13','1','123123','123123','1','0');
INSERT INTO `yp_keyword` VALUES('14','1','热烈庆祝','relieqingzhu','2','0');
INSERT INTO `yp_keyword` VALUES('15','1','网络','wangluo','2','0');
INSERT INTO `yp_keyword` VALUES('16','1','电子商务法','dianzishangwufa','1','0');
INSERT INTO `yp_keyword` VALUES('17','1','海思','haisi','1','0');
INSERT INTO `yp_keyword` VALUES('18','1','传统电视机','chuantongdianshiji','1','0');
INSERT INTO `yp_keyword` VALUES('19','1','波音','boyin','1','0');
INSERT INTO `yp_keyword` VALUES('20','1','MAX软件更新','maxruanjiangengxin','1','0');
INSERT INTO `yp_keyword` VALUES('21','1','发布','fabu','1','0');
INSERT INTO `yp_keyword` VALUES('22','1','白皮书','baipishu','1','0');
INSERT INTO `yp_keyword` VALUES('23','1','流量','liuliang','1','0');
INSERT INTO `yp_keyword` VALUES('24','1','栖身','qishen','1','0');
INSERT INTO `yp_keyword` VALUES('25','1','支付宝','zhifubao','1','0');
INSERT INTO `yp_keyword` VALUES('26','1','还款','huankuan','1','0');
INSERT INTO `yp_keyword` VALUES('27','1','服务费','fuwufei','1','0');
INSERT INTO `yp_keyword` VALUES('28','1','banner','banner','11','0');
INSERT INTO `yp_keyword` VALUES('29','1','','','77','0');
INSERT INTO `yp_keyword` VALUES('30','1','jQuery','jquery','1','0');
INSERT INTO `yp_keyword` VALUES('31','1','下载','xiazai','1','0');
INSERT INTO `yp_keyword` VALUES('32','1','喷雾造粒粉体','penwuzaolifenti','3','0');
INSERT INTO `yp_keyword` VALUES('33','1','形貌','xingmao','3','0');
INSERT INTO `yp_keyword` VALUES('34','1','见识','jianshi','3','0');
INSERT INTO `yp_keyword` VALUES('35','1','立方厘米','lifanglimi','3','0');
INSERT INTO `yp_keyword` VALUES('36','1','级单晶金刚石','jidanjingjingangshi','3','0');
INSERT INTO `yp_keyword` VALUES('37','1','气体','qiti','3','0');
INSERT INTO `yp_keyword` VALUES('38','1','氧化铁红','yanghuatiehong','2','0');
INSERT INTO `yp_keyword` VALUES('39','1','体改','tigai','2','0');
INSERT INTO `yp_keyword` VALUES('40','1','颜料','yanliao','5','0');
INSERT INTO `yp_keyword` VALUES('41','1','油性','youxing','3','0');
INSERT INTO `yp_keyword` VALUES('42','1','防腐','fangfu','3','0');
INSERT INTO `yp_keyword` VALUES('43','1','恒彩','hengcai','9','0');
INSERT INTO `yp_keyword` VALUES('44','1','高新科技','gaoxinkeji','9','0');
INSERT INTO `yp_keyword` VALUES('45','1','公司宣传册','gongsixuanchuance','2','0');
INSERT INTO `yp_keyword` VALUES('46','1','banner3','banner3','1','0');
INSERT INTO `yp_keyword` VALUES('47','1','工程案例','gongchenganli','10','0');
INSERT INTO `yp_keyword` VALUES('48','1','工程','gongcheng','10','0');
INSERT INTO `yp_keyword` VALUES('49','1','上线','shangxian','3','0');
INSERT INTO `yp_keyword` VALUES('50','1','陶瓷加热片','taocijiarepian','2','0');
INSERT INTO `yp_keyword` VALUES('51','1','原理','yuanli','3','0');
INSERT INTO `yp_keyword` VALUES('52','1','电热管','dianreguan','1','0');
INSERT INTO `yp_keyword` VALUES('53','1','热电阻','redianzu','1','0');

DROP TABLE IF EXISTS `yp_keyword_data`;
CREATE TABLE `yp_keyword_data` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tagid` int unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `contentid` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tagid` (`tagid`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=119 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_keyword_data` VALUES('1','1','1','1-1');
INSERT INTO `yp_keyword_data` VALUES('2','2','1','1-1');
INSERT INTO `yp_keyword_data` VALUES('3','3','1','1-1');
INSERT INTO `yp_keyword_data` VALUES('4','4','1','2-1');
INSERT INTO `yp_keyword_data` VALUES('5','5','1','2-1');
INSERT INTO `yp_keyword_data` VALUES('6','6','1','2-1');
INSERT INTO `yp_keyword_data` VALUES('7','7','1','7-12');
INSERT INTO `yp_keyword_data` VALUES('8','8','1','8-12');
INSERT INTO `yp_keyword_data` VALUES('9','8','1','9-12');
INSERT INTO `yp_keyword_data` VALUES('10','8','1','10-12');
INSERT INTO `yp_keyword_data` VALUES('11','9','1','11-12');
INSERT INTO `yp_keyword_data` VALUES('12','10','1','11-12');
INSERT INTO `yp_keyword_data` VALUES('13','8','1','11-12');
INSERT INTO `yp_keyword_data` VALUES('14','11','1','12-12');
INSERT INTO `yp_keyword_data` VALUES('15','12','1','13-12');
INSERT INTO `yp_keyword_data` VALUES('16','13','1','14-12');
INSERT INTO `yp_keyword_data` VALUES('17','14','1','3-1');
INSERT INTO `yp_keyword_data` VALUES('18','5','1','3-1');
INSERT INTO `yp_keyword_data` VALUES('19','15','1','3-1');
INSERT INTO `yp_keyword_data` VALUES('20','16','1','4-1');
INSERT INTO `yp_keyword_data` VALUES('21','17','1','5-1');
INSERT INTO `yp_keyword_data` VALUES('22','18','1','5-1');
INSERT INTO `yp_keyword_data` VALUES('23','19','1','6-1');
INSERT INTO `yp_keyword_data` VALUES('24','20','1','6-1');
INSERT INTO `yp_keyword_data` VALUES('25','21','1','6-1');
INSERT INTO `yp_keyword_data` VALUES('26','22','1','7-1');
INSERT INTO `yp_keyword_data` VALUES('27','23','1','7-1');
INSERT INTO `yp_keyword_data` VALUES('28','24','1','7-1');
INSERT INTO `yp_keyword_data` VALUES('29','25','1','8-1');
INSERT INTO `yp_keyword_data` VALUES('30','26','1','8-1');
INSERT INTO `yp_keyword_data` VALUES('31','27','1','8-1');
INSERT INTO `yp_keyword_data` VALUES('32','28','1','1-14');
INSERT INTO `yp_keyword_data` VALUES('33','28','1','2-14');
INSERT INTO `yp_keyword_data` VALUES('34','29','1','21-12');
INSERT INTO `yp_keyword_data` VALUES('35','30','1','1-2');
INSERT INTO `yp_keyword_data` VALUES('36','31','1','1-2');
INSERT INTO `yp_keyword_data` VALUES('37','29','1','30-12');
INSERT INTO `yp_keyword_data` VALUES('38','29','1','31-12');
INSERT INTO `yp_keyword_data` VALUES('39','29','1','32-12');
INSERT INTO `yp_keyword_data` VALUES('40','29','1','33-12');
INSERT INTO `yp_keyword_data` VALUES('41','29','1','34-12');
INSERT INTO `yp_keyword_data` VALUES('42','29','1','35-12');
INSERT INTO `yp_keyword_data` VALUES('43','32','1','9-1');
INSERT INTO `yp_keyword_data` VALUES('44','33','1','9-1');
INSERT INTO `yp_keyword_data` VALUES('45','34','1','9-1');
INSERT INTO `yp_keyword_data` VALUES('46','35','1','10-1');
INSERT INTO `yp_keyword_data` VALUES('47','36','1','10-1');
INSERT INTO `yp_keyword_data` VALUES('48','37','1','10-1');
INSERT INTO `yp_keyword_data` VALUES('49','38','1','11-1');
INSERT INTO `yp_keyword_data` VALUES('50','39','1','11-1');
INSERT INTO `yp_keyword_data` VALUES('51','40','1','11-1');
INSERT INTO `yp_keyword_data` VALUES('52','40','1','12-1');
INSERT INTO `yp_keyword_data` VALUES('53','41','1','12-1');
INSERT INTO `yp_keyword_data` VALUES('54','42','1','12-1');
INSERT INTO `yp_keyword_data` VALUES('55','43','1','13-1');
INSERT INTO `yp_keyword_data` VALUES('56','44','1','13-1');
INSERT INTO `yp_keyword_data` VALUES('57','5','1','13-1');
INSERT INTO `yp_keyword_data` VALUES('58','29','1','36-12');
INSERT INTO `yp_keyword_data` VALUES('59','29','1','37-12');
INSERT INTO `yp_keyword_data` VALUES('60','45','1','1-2');
INSERT INTO `yp_keyword_data` VALUES('61','29','1','38-12');
INSERT INTO `yp_keyword_data` VALUES('62','29','1','39-12');
INSERT INTO `yp_keyword_data` VALUES('63','46','1','3-14');
INSERT INTO `yp_keyword_data` VALUES('64','47','1','18-3');
INSERT INTO `yp_keyword_data` VALUES('65','48','1','18-3');
INSERT INTO `yp_keyword_data` VALUES('66','47','1','17-3');
INSERT INTO `yp_keyword_data` VALUES('67','48','1','17-3');
INSERT INTO `yp_keyword_data` VALUES('68','47','1','16-3');
INSERT INTO `yp_keyword_data` VALUES('69','48','1','16-3');
INSERT INTO `yp_keyword_data` VALUES('70','47','1','15-3');
INSERT INTO `yp_keyword_data` VALUES('71','48','1','15-3');
INSERT INTO `yp_keyword_data` VALUES('72','47','1','14-3');
INSERT INTO `yp_keyword_data` VALUES('73','48','1','14-3');
INSERT INTO `yp_keyword_data` VALUES('74','47','1','13-3');
INSERT INTO `yp_keyword_data` VALUES('75','48','1','13-3');
INSERT INTO `yp_keyword_data` VALUES('76','47','1','12-3');
INSERT INTO `yp_keyword_data` VALUES('77','48','1','12-3');
INSERT INTO `yp_keyword_data` VALUES('78','47','1','11-3');
INSERT INTO `yp_keyword_data` VALUES('79','48','1','11-3');
INSERT INTO `yp_keyword_data` VALUES('80','29','1','1-17');
INSERT INTO `yp_keyword_data` VALUES('81','29','1','2-17');
INSERT INTO `yp_keyword_data` VALUES('82','29','1','3-17');
INSERT INTO `yp_keyword_data` VALUES('83','29','1','4-17');
INSERT INTO `yp_keyword_data` VALUES('84','29','1','5-17');
INSERT INTO `yp_keyword_data` VALUES('85','29','1','6-17');
INSERT INTO `yp_keyword_data` VALUES('86','29','1','107-12');
INSERT INTO `yp_keyword_data` VALUES('87','29','1','126-12');
INSERT INTO `yp_keyword_data` VALUES('88','49','1','13-1');
INSERT INTO `yp_keyword_data` VALUES('89','50','1','11-1');
INSERT INTO `yp_keyword_data` VALUES('90','51','1','10-1');
INSERT INTO `yp_keyword_data` VALUES('91','52','1','9-1');
INSERT INTO `yp_keyword_data` VALUES('92','53','1','14-1');
INSERT INTO `yp_keyword_data` VALUES('93','29','1','1-18');
INSERT INTO `yp_keyword_data` VALUES('94','29','1','1-20');
INSERT INTO `yp_keyword_data` VALUES('95','29','1','1-19');
INSERT INTO `yp_keyword_data` VALUES('96','29','1','1-22');
INSERT INTO `yp_keyword_data` VALUES('97','29','1','2-22');
INSERT INTO `yp_keyword_data` VALUES('98','29','1','2-20');
INSERT INTO `yp_keyword_data` VALUES('99','29','1','3-20');
INSERT INTO `yp_keyword_data` VALUES('100','29','1','4-20');
INSERT INTO `yp_keyword_data` VALUES('101','29','1','5-20');
INSERT INTO `yp_keyword_data` VALUES('102','29','1','6-20');
INSERT INTO `yp_keyword_data` VALUES('103','29','1','7-20');
INSERT INTO `yp_keyword_data` VALUES('104','29','1','13-19');
INSERT INTO `yp_keyword_data` VALUES('105','29','1','4-19');
INSERT INTO `yp_keyword_data` VALUES('106','29','1','5-19');
INSERT INTO `yp_keyword_data` VALUES('107','29','1','6-19');
INSERT INTO `yp_keyword_data` VALUES('108','29','1','3-19');
INSERT INTO `yp_keyword_data` VALUES('109','29','1','15-19');
INSERT INTO `yp_keyword_data` VALUES('110','29','1','14-19');
INSERT INTO `yp_keyword_data` VALUES('111','29','1','16-19');
INSERT INTO `yp_keyword_data` VALUES('112','29','1','12-19');
INSERT INTO `yp_keyword_data` VALUES('113','29','1','11-19');
INSERT INTO `yp_keyword_data` VALUES('114','29','1','10-19');
INSERT INTO `yp_keyword_data` VALUES('115','29','1','9-19');
INSERT INTO `yp_keyword_data` VALUES('116','29','1','7-19');
INSERT INTO `yp_keyword_data` VALUES('117','29','1','8-19');
INSERT INTO `yp_keyword_data` VALUES('118','29','1','2-19');

DROP TABLE IF EXISTS `yp_link`;
CREATE TABLE `yp_link` (
  `linkid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned DEFAULT '0',
  `typeid` smallint unsigned NOT NULL DEFAULT '0',
  `linktype` tinyint unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `url` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `introduce` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `username` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `elite` tinyint unsigned NOT NULL DEFAULT '0',
  `passed` tinyint unsigned NOT NULL DEFAULT '0',
  `addtime` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkid`),
  KEY `typeid` (`typeid`,`passed`,`listorder`,`linkid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_linkage`;
CREATE TABLE `yp_linkage` (
  `linkageid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `style` varchar(35) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `parentid` smallint unsigned NOT NULL DEFAULT '0',
  `child` tinyint(1) NOT NULL,
  `arrchildid` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `keyid` smallint unsigned NOT NULL DEFAULT '0',
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `setting` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `siteid` smallint NOT NULL DEFAULT '0',
  PRIMARY KEY (`linkageid`,`keyid`),
  KEY `parentid` (`parentid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=3360 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_log`;
CREATE TABLE `yp_log` (
  `logid` int unsigned NOT NULL AUTO_INCREMENT,
  `field` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `value` int unsigned NOT NULL DEFAULT '0',
  `module` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `file` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `action` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `querystring` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `time` datetime NOT NULL DEFAULT '1000-01-01 00:00:00',
  PRIMARY KEY (`logid`),
  KEY `module` (`module`,`file`,`action`),
  KEY `username` (`username`,`action`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_member`;
CREATE TABLE `yp_member` (
  `userid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `phpssouid` mediumint unsigned NOT NULL,
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `password` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `encrypt` char(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `nickname` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `regdate` int unsigned NOT NULL DEFAULT '0',
  `lastdate` int unsigned NOT NULL DEFAULT '0',
  `regip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `lastip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `loginnum` smallint unsigned NOT NULL DEFAULT '0',
  `email` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `groupid` tinyint unsigned NOT NULL DEFAULT '0',
  `areaid` smallint unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `point` smallint unsigned NOT NULL DEFAULT '0',
  `modelid` smallint unsigned NOT NULL DEFAULT '0',
  `message` tinyint unsigned NOT NULL DEFAULT '0',
  `islock` tinyint unsigned NOT NULL DEFAULT '0',
  `vip` tinyint unsigned NOT NULL DEFAULT '0',
  `overduedate` int unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '1',
  `connectid` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `from` char(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `mobile` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20)),
  KEY `phpssouid` (`phpssouid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_member` VALUES('2','2','user','bc1fae823978322daee9b9f71ff7b496','BRBQ5Y','user','1563630110','1563630110','49.71.101.118','','0','user@qq.com','2','0','0.00','100','10','0','0','0','0','1','','','13215644887');

DROP TABLE IF EXISTS `yp_member_detail`;
CREATE TABLE `yp_member_detail` (
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `birthday` date DEFAULT NULL,
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_member_detail` VALUES('1','1994-09-06');

DROP TABLE IF EXISTS `yp_member_group`;
CREATE TABLE `yp_member_group` (
  `groupid` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `issystem` tinyint unsigned NOT NULL DEFAULT '0',
  `starnum` tinyint unsigned NOT NULL,
  `point` smallint unsigned NOT NULL,
  `allowmessage` smallint unsigned NOT NULL DEFAULT '0',
  `allowvisit` tinyint unsigned NOT NULL DEFAULT '0',
  `allowpost` tinyint unsigned NOT NULL DEFAULT '0',
  `allowpostverify` tinyint unsigned NOT NULL,
  `allowsearch` tinyint unsigned NOT NULL DEFAULT '0',
  `allowupgrade` tinyint unsigned NOT NULL DEFAULT '1',
  `allowsendmessage` tinyint unsigned NOT NULL,
  `allowpostnum` smallint unsigned NOT NULL DEFAULT '0',
  `allowattachment` tinyint(1) NOT NULL,
  `price_y` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_m` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price_d` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `icon` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `usernamecolor` char(7) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `sort` tinyint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`groupid`),
  KEY `disabled` (`disabled`),
  KEY `listorder` (`sort`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_member_group` VALUES('8','游客','1','0','0','0','0','0','0','1','0','0','0','0','0.00','0.00','0.00','','','','0','0');
INSERT INTO `yp_member_group` VALUES('2','新手上路','1','1','50','100','1','1','0','0','0','1','0','0','50.00','10.00','1.00','','','','2','0');
INSERT INTO `yp_member_group` VALUES('6','注册会员','1','2','100','150','0','1','0','0','1','1','0','0','300.00','30.00','1.00','','','','6','0');
INSERT INTO `yp_member_group` VALUES('4','中级会员','1','3','150','500','1','1','0','1','1','1','0','0','500.00','60.00','1.00','','','','4','0');
INSERT INTO `yp_member_group` VALUES('5','高级会员','1','5','300','999','1','1','0','1','1','1','0','0','360.00','90.00','5.00','','','','5','0');
INSERT INTO `yp_member_group` VALUES('1','禁止访问','1','0','0','0','1','1','0','1','0','0','0','0','0.00','0.00','0.00','','','0','0','0');
INSERT INTO `yp_member_group` VALUES('7','邮件认证','1','0','0','0','0','0','0','0','0','0','0','0','0.00','0.00','0.00','images/group/vip.jpg','#000000','','7','0');

DROP TABLE IF EXISTS `yp_member_menu`;
CREATE TABLE `yp_member_menu` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `parentid` smallint NOT NULL DEFAULT '0',
  `m` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `c` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `a` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `data` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '1',
  `isurl` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `url` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_member_menu` VALUES('1','member_init','0','member','index','init','t=0','0','1','','');
INSERT INTO `yp_member_menu` VALUES('2','account_manage','0','member','index','account_manage','t=1','0','1','','');
INSERT INTO `yp_member_menu` VALUES('3','favorite','0','member','index','favorite','t=2','0','1','','');

DROP TABLE IF EXISTS `yp_member_verify`;
CREATE TABLE `yp_member_verify` (
  `userid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `password` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `encrypt` char(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `nickname` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `regdate` int unsigned NOT NULL,
  `regip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `email` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `modelid` tinyint unsigned NOT NULL DEFAULT '0',
  `point` smallint unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `modelinfo` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `siteid` tinyint unsigned NOT NULL DEFAULT '1',
  `message` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `mobile` char(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`userid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`(20))
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_member_vip`;
CREATE TABLE `yp_member_vip` (
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_menu`;
CREATE TABLE `yp_menu` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `parentid` smallint NOT NULL DEFAULT '0',
  `m` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `c` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `a` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `data` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `display` enum('1','0') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '1',
  `project1` tinyint unsigned NOT NULL DEFAULT '1',
  `project2` tinyint unsigned NOT NULL DEFAULT '1',
  `project3` tinyint unsigned NOT NULL DEFAULT '1',
  `project4` tinyint unsigned NOT NULL DEFAULT '1',
  `project5` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `listorder` (`listorder`),
  KEY `parentid` (`parentid`),
  KEY `module` (`m`,`c`,`a`)
) ENGINE=MyISAM AUTO_INCREMENT=1669 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_menu` VALUES('1','sys_setting','0','admin','setting','init','','1','1','0','1','1','1','1');
INSERT INTO `yp_menu` VALUES('2','module','0','admin','module','init','','2','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('872','sync_release_point','873','release','index','init','','3','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('4','content','0','content','content','init','','4','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('5','members','0','member','member','init','','5','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('6','userinterface','0','template','style','init','','6','1','0','1','1','1','1');
INSERT INTO `yp_menu` VALUES('30','correlative_setting','1','admin','admin','admin','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('31','menu_manage','977','admin','menu','init','','8','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('32','posid_manage','975','admin','position','init','','7','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('29','module_list','2','admin','module','','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('82','module_manage','2','admin','module','','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('10','panel','0','admin','index','public_main','','0','1','0','1','1','1','1');
INSERT INTO `yp_menu` VALUES('35','menu_add','31','admin','menu','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('826','template_manager','6','','','','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('54','admin_manage','49','admin','admin_manage','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('43','category_manage','975','admin','category','init','module=admin','4','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('42','add_category','43','admin','category','add','s=0','1','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('44','edit_category','43','admin','category','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('45','badword_manage','977','admin','badword','init','','10','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('46','posid_add','32','admin','position','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('49','admin_setting','1','admin','','','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('50','role_manage','49','admin','role','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('51','role_add','50','admin','role','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('52','category_cache','43','admin','category','public_cache','module=admin','4','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('55','manage_member','5','member','member','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('58','admin_add','54','admin','admin_manage','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('59','model_manage','975','content','sitemodel','init','','5','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('64','site_management','30','admin','site','init','','2','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('81','member_add','72','member','member','add','','2','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('62','add_model','59','content','sitemodel','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('65','release_point_management','30','admin','release_point','init','','3','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('66','badword_export','45','admin','badword','export','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('67','add_site','64','admin','site','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('68','badword_import','45','admin','badword','import','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('812','member_group_manage','76','member','member_group','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('74','member_verify','55','member','member_verify','manage','s=0','3','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('76','manage_member_group','5','member','member_group','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('77','manage_member_model','5','member','member_model','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('78','member_group_add','812','member','member_group','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('79','member_model_add','813','member','member_model','add','','1','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('80','member_model_import','77','member','member_model','import','','2','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('72','member_manage','55','member','member','manage','','1','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('813','member_model_manage','77','member','member_model','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('814','site_edit','64','admin','site','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('815','site_del','64','admin','site','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('816','release_point_add','65','admin','release_point','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('817','release_point_del','65','admin','release_point','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('818','release_point_edit','65','admin','release_point','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('821','content_publish','4','content','content','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('822','content_manage','821','content','content','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('867','linkage','977','admin','linkage','init','','13','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('827','template_style','826','template','style','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('828','import_style','827','template','style','import','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('831','template_export','827','template','style','export','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('830','template_file','827','template','file','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('832','template_onoff','827','template','style','disable','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('833','template_updatename','827','template','style','updatename','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('834','member_lock','72','member','member','lock','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('835','member_unlock','72','member','member','unlock','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('836','member_move','72','member','member','move','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('837','member_delete','72','member','member','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('842','verify_ignore','74','member','member_verify','manage','s=2','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('839','member_setting','55','member','member_setting','manage','','4','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('841','verify_pass','74','member','member_verify','manage','s=1','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('843','verify_delete','74','member','member_verify','manage','s=3','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('844','verify_deny','74','member','member_verify','manage','s=4','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('845','never_pass','74','member','member_verify','manage','s=5','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('846','template_file_list','827','template','file','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('847','template_file_edit','827','template','file','edit_file','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('848','file_add_file','827','template','file','add_file','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('850','listorder','76','member','member_group','sort','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('852','priv_setting','50','admin','role','priv_setting','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('853','role_priv','50','admin','role','role_priv','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('857','attachment_manage','821','attachment','manage','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('868','special','821','special','special','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('869','template_editor','827','template','file','edit_file','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('870','template_visualization','827','template','file','visualization','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('871','pc_tag_edit','827','template','file','edit_pc_tag','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('873','release_manage','4','release','html','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('874','type_manage','975','content','type_manage','init','','6','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('875','add_type','874','content','type_manage','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('876','linkageadd','867','admin','linkage','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('877','failure_list','872','release','index','failed','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('879','member_search','72','member','member','search','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('880','queue_del','872','release','index','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('881','member_model_delete','813','member','member_model','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('882','member_model_edit','813','member','member_model','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('885','workflow','977','content','workflow','init','','15','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('888','add_workflow','885','content','workflow','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('889','member_modelfield_add','813','member','member_modelfield','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('890','member_modelfield_edit','813','member','member_modelfield','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('891','member_modelfield_delete','813','member','member_modelfield','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('892','member_modelfield_manage','813','member','member_modelfield','manage','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('895','sitemodel_import','59','content','sitemodel','import','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('896','pay','29','pay','payment','pay_list','s=3','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('897','payments','896','pay','payment','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('898','paylist','896','pay','payment','pay_list','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('899','add_content','822','content','content','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('900','modify_deposit','896','pay','payment','modify_deposit','s=1','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('901','check_content','822','content','content','pass','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('902','dbsource','29','dbsource','data','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('905','create_content_html','873','content','create_html','show','','2','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('904','external_data_sources','902','dbsource','dbsource_admin','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('906','update_urls','873','content','create_html','update_urls','','1','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('960','node_add','957','collection','node','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('909','fulltext_search','29','search','search_type','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('910','manage_type','909','search','search_type','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('911','search_setting','909','search','search_admin','setting','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('912','createindex','909','search','search_admin','createindex','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('913','add_search_type','909','search','search_type','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('914','database_toos','977','admin','database','export','','6','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('915','database_export','914','admin','database','export','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('916','database_import','914','admin','database','import','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('917','dbsource_add','902','dbsource','dbsource_admin','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('918','dbsource_edit','902','dbsource','dbsource_admin','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('919','dbsource_del','902','dbsource','dbsource_admin','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('920','dbsource_data_add','902','dbsource','data','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('921','dbsource_data_edit','902','dbsource','data','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('922','dbsource_data_del','902','dbsource','data','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('926','add_special','868','special','special','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('927','edit_special','868','special','special','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('928','special_list','868','special','special','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('929','special_elite','868','special','special','elite','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('930','delete_special','868','special','special','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('931','badword_add','45','admin','badword','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('932','badword_edit','45','admin','badword','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('933','badword_delete','45','admin','badword','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('934','special_listorder','868','special','special','listorder','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('935','special_content_list','868','special','content','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('936','special_content_add','935','special','content','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('937','special_content_list','935','special','content','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('938','special_content_edit','935','special','content','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('939','special_content_delete','935','special','content','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('940','special_content_listorder','935','special','content','listorder','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('941','special_content_import','935','special','special','import','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('942','history_version','827','template','template_bak','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('943','restore_version','827','template','template_bak','restore','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('944','del_history_version','827','template','template_bak','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('945','block','821','block','block_admin','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('946','block_add','945','block','block_admin','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('950','block_edit','945','block','block_admin','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('951','block_del','945','block','block_admin','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('952','block_update','945','block','block_admin','block_update','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('953','block_restore','945','block','block_admin','history_restore','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('954','history_del','945','block','block_admin','history_del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('978','urlrule_manage','977','admin','urlrule','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('957','collection_node','821','collection','node','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('979','safe_config','30','admin','setting','init','&tab=2','11','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('959','basic_config','30','admin','setting','init','','10','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('961','position_edit','32','admin','position','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('962','collection_node_edit','957','collection','node','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('963','collection_node_delete','957','collection','node','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('990','col_url_list','957','collection','node','col_url_list','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('965','collection_node_publish','957','collection','node','publist','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('966','collection_node_import','957','collection','node','node_import','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('967','collection_node_export','957','collection','node','export','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('968','collection_node_collection_content','957','collection','node','col_content','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('969','googlesitemap','977','admin','googlesitemap','set','','11','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('970','admininfo','10','admin','admin_manage','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('971','editpwd','970','admin','admin_manage','public_edit_pwd','','1','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('972','editinfo','970','admin','admin_manage','public_edit_info','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('973','keylink','977','admin','keylink','init','','12','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('974','add_keylink','973','admin','keylink','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('975','content_settings','4','content','content_settings','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('7','extend','0','admin','extend','init_extend','','7','1','0','1','1','1','1');
INSERT INTO `yp_menu` VALUES('977','extend_all','7','admin','extend_all','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('980','sso_config','30','admin','setting','init','&tab=3','12','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('981','email_config','30','admin','setting','init','&tab=4','13','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('982','module_manage','82','admin','module','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('983','ipbanned','977','admin','ipbanned','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('984','add_ipbanned','983','admin','ipbanned','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('993','collection_content_import','957','collection','node','import','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('991','copy_node','957','collection','node','copy','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('992','content_del','957','collection','node','content_del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('989','downsites','977','admin','downservers','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('994','import_program_add','957','collection','node','import_program_add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('995','import_program_del','957','collection','node','import_program_del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('996','import_content','957','collection','node','import_content','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('997','log','977','admin','log','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('998','add_page','43','admin','category','add','s=1','2','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('999','add_cat_link','43','admin','category','add','s=2','2','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1000','count_items','43','admin','category','count_items','','5','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1001','cache_all','977','admin','cache_all','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1002','create_list_html','873','content','create_html','category','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1003','create_html_quick','10','content','create_html_opt','index','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1004','create_index','1003','content','create_html','public_index','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1005','scan','977','scan','index','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1006','scan_report','1005','scan','index','scan_report','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1007','md5_creat','1005','scan','index','md5_creat','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1008','album_import','868','special','album','import','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('8','phpsso','0','admin','phpsso','menu','','7','1','0','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1011','edit_content','822','content','content','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1012','push_to_special','822','content','push','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1023','delete_log','997','admin','log','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1024','delete_ip','983','admin','ipbanned','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1026','delete_keylink','973','admin','keylink','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1027','edit_keylink','973','admin','keylink','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1034','operation_pass','74','member','member_verify','pass','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1035','operation_delete','74','member','member_verify','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1039','operation_ignore','74','member','member_verify','ignore','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1038','settingsave','30','admin','setting','save','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1040','admin_edit','54','admin','admin_manage','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1041','operation_reject','74','member','member_verify','reject','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1042','admin_delete','54','admin','admin_manage','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1043','card','54','admin','admin_manage','card','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1044','creat_card','54','admin','admin_manage','creat_card','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1045','remove_card','54','admin','admin_manage','remove_card','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1049','member_group_edit','812','member','member_group','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1048','member_edit','72','member','member','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1050','role_edit','50','admin','role','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1051','member_group_delete','812','member','member_group','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1052','member_manage','50','admin','role','member_manage','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1053','role_delete','50','admin','role','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1054','member_model_export','77','member','member_model','export','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1055','member_model_sort','77','member','member_model','sort','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1056','member_model_move','77','member','member_model','move','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1057','payment_add','897','pay','payment','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1058','payment_delete','897','pay','payment','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1059','payment_edit','897','pay','payment','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1060','spend_record','896','pay','spend','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1061','pay_stat','896','pay','payment','pay_stat','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1062','fields_manage','59','content','sitemodel_field','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1063','edit_model_content','59','content','sitemodel','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1064','disabled_model','59','content','sitemodel','disabled','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1065','delete_model','59','content','sitemodel','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1066','export_model','59','content','sitemodel','export','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1067','delete','874','content','type_manage','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1068','edit','874','content','type_manage','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1069','add_urlrule','978','admin','urlrule','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1070','edit_urlrule','978','admin','urlrule','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1071','delete_urlrule','978','admin','urlrule','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1072','edit_menu','31','admin','menu','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1073','delete_menu','31','admin','menu','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1074','edit_workflow','885','content','workflow','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1075','delete_workflow','885','content','workflow','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1076','creat_html','868','special','special','html','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1093','connect_config','30','admin','setting','init','&tab=5','14','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1102','view_modelinfo','74','member','member_verify','modelinfo','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1202','create_special_list','868','special','special','create_special_list','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1240','view_memberlinfo','72','member','member','memberinfo','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1239','copyfrom_manage','977','admin','copyfrom','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1241','move_content','822','content','content','remove','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1242','poster_template','56','poster','space','poster_template','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1243','create_index','873','content','create_html','public_index','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1244','add_othors','822','content','content','add_othors','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1295','attachment_manager_dir','857','attachment','manage','dir','','2','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1296','attachment_manager_db','857','attachment','manage','init','','1','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1346','attachment_address_replace','857','attachment','address','init','','3','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1347','attachment_address_update','857','attachment','address','update','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1348','delete_content','822','content','content','delete','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1349','member_menu_manage','977','member','member_menu','manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1350','member_menu_add','1349','member','member_menu','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1351','member_menu_edit','1349','member','member_menu','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1352','member_menu_delete','1349','member','member_menu','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1353','batch_show','822','content','create_html','batch_show','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1354','pay_delete','898','pay','payment','pay_del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1355','pay_cancel','898','pay','payment','pay_cancel','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1356','discount','898','pay','payment','discount','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1360','category_batch_edit','43','admin','category','batch_edit','','6','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1500','listorder','822','content','content','listorder','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1501','a_clean_data','873','content','content','clear_data','','0','1','0','0','0','0','0');
INSERT INTO `yp_menu` VALUES('9','video','0','video','video','init','','11','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1589','video','9','video','video','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1583','sub_delete','1589','video','video','sub_del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1582','subscribe_manage','1589','video','video','subscribe_list','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1581','video_open','1589','video','video','open','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1592','complete_info','1581','video','video','complete_info','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1591','video_inputinfo','1581','video','video','open','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1577','video_manage','1589','video','video','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1590','player_manage','1589','video','player','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1585','import_ku6_video','1589','video','video','import_ku6video','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1579','video_edit','1589','video','video','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1580','video_delete','1589','video','video','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1578','video_upload','1589','video','video','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1593','video_stat','1589','video','stat','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1586','video_store','1589','video','video','video2content','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1594','announce','29','announce','admin_announce','init','s=1','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1595','announce_add','1594','announce','admin_announce','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1596','edit_announce','1594','announce','admin_announce','edit','s=1','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1597','check_announce','1594','announce','admin_announce','init','s=2','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1598','overdue','1594','announce','admin_announce','init','s=3','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1599','del_announce','1594','announce','admin_announce','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1600','comment','29','comment','comment_admin','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1601','comment_manage','821','comment','comment_admin','listinfo','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1602','comment_check','1601','comment','check','checks','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1603','comment_list','1600','comment','comment_admin','lists','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1604','link','29','link','link','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1605','add_link','1604','link','link','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1606','edit_link','1604','link','link','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1607','delete_link','1604','link','link','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1608','link_setting','1604','link','link','setting','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1609','add_type','1604','link','link','add_type','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1610','list_type','1604','link','link','list_type','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1611','check_register','1604','link','link','check_register','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1612','vote','29','vote','vote','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1613','add_vote','1612','vote','vote','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1614','edit_vote','1612','vote','vote','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1615','delete_vote','1612','vote','vote','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1616','vote_setting','1612','vote','vote','setting','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1617','statistics_vote','1612','vote','vote','statistics','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1618','statistics_userlist','1612','vote','vote','statistics_userlist','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1619','create_js','1612','vote','vote','create_js','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1620','message','29','message','message','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1621','send_one','1620','message','message','send_one','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1622','delete_message','1620','message','message','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1623','message_send','1620','message','message','message_send','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1624','message_group_manage','1620','message','message','message_group_manage','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1625','mood','29','mood','mood_admin','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1626','mood_setting','1625','mood','mood_admin','setting','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1627','poster','29','poster','space','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1628','add_space','1627','poster','space','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1629','edit_space','1627','poster','space','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1630','del_space','1627','poster','space','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1631','poster_list','1627','poster','poster','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1632','add_poster','1627','poster','poster','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1633','edit_poster','1627','poster','poster','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1634','del_poster','1627','poster','poster','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1635','poster_stat','1627','poster','poster','stat','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1636','poster_setting','1627','poster','space','setting','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1637','create_poster_js','1627','poster','space','create_js','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1638','poster_template','1627','poster','space','poster_template','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1639','formguide','29','formguide','formguide','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1640','formguide_add','1639','formguide','formguide','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1641','formguide_edit','1639','formguide','formguide','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1642','form_info_list','1639','formguide','formguide_info','init','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1643','formguide_disabled','1639','formguide','formguide','disabled','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1644','formguide_delete','1639','formguide','formguide','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1645','formguide_stat','1639','formguide','formguide','stat','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1646','add_public_field','1639','formguide','formguide_field','add','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1647','list_public_field','1639','formguide','formguide_field','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1648','module_setting','1639','formguide','formguide','setting','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1649','wap','29','wap','wap_admin','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1650','wap_add','1649','wap','wap_admin','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1651','wap_edit','1649','wap','wap_admin','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1652','wap_delete','1649','wap','wap_admin','delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1653','wap_type_manage','1649','wap','wap_admin','type_manage','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1654','wap_type_edit','1649','wap','wap_admin','type_edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1655','wap_type_delete','1649','wap','wap_admin','type_delete','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1656','upgrade','977','upgrade','index','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1657','checkfile','1656','upgrade','index','checkfile','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1658','tag','826','tag','tag','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1659','add_tag','1658','tag','tag','add','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1660','edit_tag','1658','tag','tag','edit','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1661','delete_tag','1658','tag','tag','del','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1662','tag_lists','1658','tag','tag','lists','','0','0','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1663','sms','29','sms','sms','init','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1664','sms_setting','1663','sms','sms','sms_setting','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1665','sms_pay_history','1663','sms','sms','sms_pay_history','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1666','sms_buy_history','1663','sms','sms','sms_buy_history','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1667','sms_api','1663','sms','sms','sms_api','','0','1','1','1','1','1','1');
INSERT INTO `yp_menu` VALUES('1668','sms_sent','1663','sms','sms','sms_sent','','0','1','1','1','1','1','1');

DROP TABLE IF EXISTS `yp_message`;
CREATE TABLE `yp_message` (
  `messageid` int unsigned NOT NULL AUTO_INCREMENT,
  `send_from_id` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `send_to_id` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `folder` enum('all','inbox','outbox') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `status` tinyint unsigned NOT NULL DEFAULT '0',
  `message_time` int unsigned NOT NULL DEFAULT '0',
  `subject` char(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `replyid` int unsigned NOT NULL DEFAULT '0',
  `del_type` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`messageid`),
  KEY `msgtoid` (`send_to_id`,`folder`),
  KEY `replyid` (`replyid`),
  KEY `folder` (`send_from_id`,`folder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_message_data`;
CREATE TABLE `yp_message_data` (
  `id` int NOT NULL AUTO_INCREMENT,
  `userid` mediumint NOT NULL,
  `group_message_id` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `message` (`userid`,`group_message_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_message_group`;
CREATE TABLE `yp_message_group` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint unsigned NOT NULL DEFAULT '0',
  `groupid` tinyint unsigned NOT NULL DEFAULT '0' COMMENT '用户组id',
  `subject` char(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL COMMENT '内容',
  `inputtime` int unsigned DEFAULT '0',
  `status` tinyint unsigned DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_model`;
CREATE TABLE `yp_model` (
  `modelid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `name` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tablename` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `setting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `addtime` int unsigned NOT NULL DEFAULT '0',
  `items` smallint unsigned NOT NULL DEFAULT '0',
  `enablesearch` tinyint unsigned NOT NULL DEFAULT '1',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `default_style` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `category_template` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `list_template` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `show_template` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `js_template` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `admin_list_template` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `member_add_template` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `member_list_template` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `sort` tinyint NOT NULL,
  `type` tinyint(1) NOT NULL,
  PRIMARY KEY (`modelid`),
  KEY `type` (`type`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_model` VALUES('21','1','图片模型','','picture','','0','0','1','0','default','category_picture','list_picture','show_picture','','','','','0','0');
INSERT INTO `yp_model` VALUES('20','1','新闻模型','','news','','0','0','1','0','default','category','list','show','','','','','0','0');
INSERT INTO `yp_model` VALUES('10','1','普通会员','普通会员','member_detail','','0','0','1','0','','','','','','','','','0','2');
INSERT INTO `yp_model` VALUES('22','1','其他','','other','','0','0','1','0','default','category','list','show','','','','','0','0');
INSERT INTO `yp_model` VALUES('19','1','产品模型','','product','','0','0','1','0','default','category_product','list_product','show_product','','','','','0','0');
INSERT INTO `yp_model` VALUES('15','1','在线留言','','guestbook','{\"enabletime\":\"0\",\"starttime\":\"1551542400\",\"endtime\":\"\",\"sendmail\":\"0\",\"mails\":\"\",\"allowmultisubmit\":\"1\",\"allowunreg\":\"1\"}','1551598473','0','1','0','default','','','show','show_js','','','','0','3');
INSERT INTO `yp_model` VALUES('16','1','在线询价','','advisory','{\"enabletime\":\"0\",\"starttime\":\"1551542400\",\"endtime\":\"\",\"sendmail\":\"0\",\"mails\":\"\",\"allowmultisubmit\":\"1\",\"allowunreg\":\"1\"}','1551598657','0','1','0','default','','','show','show_js','','','','0','3');

DROP TABLE IF EXISTS `yp_model_field`;
CREATE TABLE `yp_model_field` (
  `fieldid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `field` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `tips` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `css` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `minlength` int unsigned NOT NULL DEFAULT '0',
  `maxlength` int unsigned NOT NULL DEFAULT '0',
  `pattern` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `errortips` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `formtype` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `setting` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `formattribute` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `unsetgroupids` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `unsetroleids` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `iscore` tinyint unsigned NOT NULL DEFAULT '0',
  `issystem` tinyint unsigned NOT NULL DEFAULT '0',
  `isunique` tinyint unsigned NOT NULL DEFAULT '0',
  `isbase` tinyint unsigned NOT NULL DEFAULT '0',
  `issearch` tinyint unsigned NOT NULL DEFAULT '0',
  `isadd` tinyint unsigned NOT NULL DEFAULT '0',
  `isfulltext` tinyint unsigned NOT NULL DEFAULT '0',
  `isposition` tinyint unsigned NOT NULL DEFAULT '0',
  `listorder` mediumint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `isomnipotent` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`fieldid`),
  KEY `modelid` (`modelid`,`disabled`),
  KEY `field` (`field`,`modelid`)
) ENGINE=MyISAM AUTO_INCREMENT=320 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_model_field` VALUES('311','22','1','template','内容页模板','','','0','30','','','template','{\"size\":\"\",\"defaultvalue\":\"\"})','','-99','-99','0','0','0','0','0','0','0','0','53','0','0');
INSERT INTO `yp_model_field` VALUES('312','22','1','allow_comment','允许评论','','','0','0','','','box','{\"options\":\"\\u5141\\u8bb8\\u8bc4\\u8bba|1\\r\\n\\u4e0d\\u5141\\u8bb8\\u8bc4\\u8bba|0\",\"boxtype\":\"radio\",\"fieldtype\":\"tinyint\",\"minnumber\":\"1\",\"width\":\"88\",\"size\":\"1\",\"defaultvalue\":\"1\",\"outputtype\":\"0\"}','','','','0','0','0','0','0','0','0','0','54','0','0');
INSERT INTO `yp_model_field` VALUES('319','21','1','pics','图组','','','0','0','','','images','{\"upload_allowext\":\"gif|jpg|jpeg|png|bmp\",\"isselectimage\":\"0\",\"upload_number\":\"10\"}','','','','0','0','0','1','0','0','0','0','11','0','0');
INSERT INTO `yp_model_field` VALUES('313','22','1','status','状态','','','0','2','','','box','','','','','1','1','0','1','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('314','22','1','readpoint','阅读收费','','','0','5','','','readpoint','{\"minnumber\":\"1\",\"maxnumber\":\"99999\",\"decimaldigits\":\"0\",\"defaultvalue\":\"\"}','','-99','-99','0','0','0','0','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('315','22','1','username','用户名','','','0','20','','','text','','','','','1','1','0','1','0','0','0','0','98','0','0');
INSERT INTO `yp_model_field` VALUES('316','22','1','islink','转向链接','','','0','0','','','islink','','','','','0','1','0','1','0','1','0','0','20','0','0');
INSERT INTO `yp_model_field` VALUES('317','19','1','pics','产品图组','','','0','0','','','images','{\"upload_allowext\":\"gif|jpg|jpeg|png|bmp\",\"isselectimage\":\"0\",\"upload_number\":\"10\"}','','','','0','0','0','1','0','1','0','0','11','0','0');
INSERT INTO `yp_model_field` VALUES('318','19','1','price','价格','元','','0','0','','','number','{\"minnumber\":\"0\",\"maxnumber\":\"\",\"decimaldigits\":\"2\",\"defaultvalue\":\"0\",\"rangetype\":\"1\"}','','','','0','1','0','1','0','1','0','0','5','0','0');
INSERT INTO `yp_model_field` VALUES('286','21','1','posids','推荐位','','','0','0','','','posid','{\"cols\":\"4\",\"width\":\"125\"}','','','','0','1','0','1','0','0','0','0','18','0','0');
INSERT INTO `yp_model_field` VALUES('287','21','1','groupids_view','阅读权限','','','0','100','','','groupid','{\"groupids\":\"\"}','','','','0','0','0','1','0','0','0','0','19','0','0');
INSERT INTO `yp_model_field` VALUES('288','21','1','url','URL','','','0','100','','','text','','','','','1','1','0','1','0','0','0','0','50','0','0');
INSERT INTO `yp_model_field` VALUES('289','21','1','listorder','排序','','','0','6','','','number','','','','','1','1','0','1','0','0','0','0','51','0','0');
INSERT INTO `yp_model_field` VALUES('290','21','1','template','内容页模板','','','0','30','','','template','{\"size\":\"\",\"defaultvalue\":\"\"})','','-99','-99','0','0','0','0','0','0','0','0','53','0','0');
INSERT INTO `yp_model_field` VALUES('291','21','1','allow_comment','允许评论','','','0','0','','','box','{\"options\":\"\\u5141\\u8bb8\\u8bc4\\u8bba|1\\r\\n\\u4e0d\\u5141\\u8bb8\\u8bc4\\u8bba|0\",\"boxtype\":\"radio\",\"fieldtype\":\"tinyint\",\"minnumber\":\"1\",\"width\":\"88\",\"size\":\"1\",\"defaultvalue\":\"1\",\"outputtype\":\"0\"}','','','','0','0','0','0','0','0','0','0','54','0','0');
INSERT INTO `yp_model_field` VALUES('292','21','1','status','状态','','','0','2','','','box','','','','','1','1','0','1','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('293','21','1','readpoint','阅读收费','','','0','5','','','readpoint','{\"minnumber\":\"1\",\"maxnumber\":\"99999\",\"decimaldigits\":\"0\",\"defaultvalue\":\"\"}','','-99','-99','0','0','0','0','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('294','21','1','username','用户名','','','0','20','','','text','','','','','1','1','0','1','0','0','0','0','98','0','0');
INSERT INTO `yp_model_field` VALUES('295','21','1','islink','转向链接','','','0','0','','','islink','','','','','0','1','0','1','0','1','0','0','20','0','0');
INSERT INTO `yp_model_field` VALUES('296','22','1','catid','栏目','','','1','6','/^[0-9]{1,6}$/','请选择栏目','catid','{\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','0','0','1','0','0');
INSERT INTO `yp_model_field` VALUES('297','22','1','typeid','类别','','','0','0','','','typeid','{\"minnumber\":\"\",\"defaultvalue\":\"\"}','','','','0','1','0','1','1','1','0','0','2','0','0');
INSERT INTO `yp_model_field` VALUES('298','22','1','title','标题','','inputtitle','1','80','','请输入标题','title','','','','','0','1','0','1','1','1','1','1','4','0','0');
INSERT INTO `yp_model_field` VALUES('299','22','1','keywords','关键词','多关键词之间用空格或者“,”隔开','','0','40','','','keyword','{\"size\":\"100\",\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','1','0','7','0','0');
INSERT INTO `yp_model_field` VALUES('300','22','1','description','摘要','','','0','255','','','textarea','{\"width\":\"98\",\"height\":\"46\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','','0','1','0','1','0','1','1','1','10','0','0');
INSERT INTO `yp_model_field` VALUES('301','22','1','updatetime','更新时间','','','0','0','','','datetime','{\"dateformat\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"1\",\"defaultvalue\":\"\"}','','','','1','1','0','1','0','0','0','0','12','0','0');
INSERT INTO `yp_model_field` VALUES('302','22','1','content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','','1','999999','','内容不能为空','editor','{\"toolbar\":\"full\",\"defaultvalue\":\"\",\"enablekeylink\":\"1\",\"replacenum\":\"2\",\"link_mode\":\"0\",\"enablesaveimage\":\"1\"}','','','','0','0','0','1','0','1','1','0','13','0','0');
INSERT INTO `yp_model_field` VALUES('303','22','1','thumb','缩略图','','','0','100','','','image','{\"size\":\"50\",\"defaultvalue\":\"\",\"show_type\":\"1\",\"upload_maxsize\":\"1024\",\"upload_allowext\":\"jpg|jpeg|gif|png|bmp\",\"watermark\":\"0\",\"isselectimage\":\"1\",\"images_width\":\"\",\"images_height\":\"\"}','','','','0','1','0','0','0','1','0','1','14','0','0');
INSERT INTO `yp_model_field` VALUES('304','22','1','relation','相关文章','','','0','0','','','omnipotent','{\"formtext\":\"<input type=\'hidden\' name=\'info[relation]\' id=\'relation\' value=\'{FIELD_VALUE}\' style=\'50\' >\\r\\n<ul class=\\\"list-dot\\\" id=\\\"relation_text\\\"><\\/ul>\\r\\n<div>\\r\\n<input type=\'button\' value=\\\"\\u6dfb\\u52a0\\u76f8\\u5173\\\" onclick=\\\"omnipotent(\'selectid\',\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\',\'\\u6dfb\\u52a0\\u76f8\\u5173\\u6587\\u7ae0\',1)\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<span class=\\\"edit_content\\\">\\r\\n<input type=\'button\' value=\\\"\\u663e\\u793a\\u5df2\\u6709\\\" onclick=\\\"show_relation({MODELID},{ID})\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<\\/span>\\r\\n<\\/div>\",\"fieldtype\":\"varchar\",\"minnumber\":\"1\"}','','2,6,4,5,1,17,18,7','','0','0','0','0','0','0','1','0','15','0','0');
INSERT INTO `yp_model_field` VALUES('305','22','1','pages','分页方式','','','0','0','','','pages','','','-99','-99','0','0','0','1','0','0','0','0','16','0','0');
INSERT INTO `yp_model_field` VALUES('306','22','1','inputtime','发布时间','','','0','0','','','datetime','{\"fieldtype\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"0\"}','','','','0','1','0','0','0','0','0','1','17','0','0');
INSERT INTO `yp_model_field` VALUES('307','22','1','posids','推荐位','','','0','0','','','posid','{\"cols\":\"4\",\"width\":\"125\"}','','','','0','1','0','1','0','0','0','0','18','0','0');
INSERT INTO `yp_model_field` VALUES('308','22','1','groupids_view','阅读权限','','','0','100','','','groupid','{\"groupids\":\"\"}','','','','0','0','0','1','0','0','0','0','19','0','0');
INSERT INTO `yp_model_field` VALUES('309','22','1','url','URL','','','0','100','','','text','','','','','1','1','0','1','0','0','0','0','50','0','0');
INSERT INTO `yp_model_field` VALUES('310','22','1','listorder','排序','','','0','6','','','number','','','','','1','1','0','1','0','0','0','0','51','0','0');
INSERT INTO `yp_model_field` VALUES('284','21','1','pages','分页方式','','','0','0','','','pages','','','-99','-99','0','0','0','1','0','0','0','0','16','0','0');
INSERT INTO `yp_model_field` VALUES('285','21','1','inputtime','发布时间','','','0','0','','','datetime','{\"fieldtype\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"0\"}','','','','0','1','0','0','0','0','0','1','17','0','0');
INSERT INTO `yp_model_field` VALUES('282','21','1','thumb','缩略图','','','0','100','','','image','{\"size\":\"50\",\"defaultvalue\":\"\",\"show_type\":\"1\",\"upload_maxsize\":\"1024\",\"upload_allowext\":\"jpg|jpeg|gif|png|bmp\",\"watermark\":\"0\",\"isselectimage\":\"1\",\"images_width\":\"\",\"images_height\":\"\"}','','','','0','1','0','0','0','1','0','1','14','0','0');
INSERT INTO `yp_model_field` VALUES('283','21','1','relation','相关文章','','','0','0','','','omnipotent','{\"formtext\":\"<input type=\'hidden\' name=\'info[relation]\' id=\'relation\' value=\'{FIELD_VALUE}\' style=\'50\' >\\r\\n<ul class=\\\"list-dot\\\" id=\\\"relation_text\\\"><\\/ul>\\r\\n<div>\\r\\n<input type=\'button\' value=\\\"\\u6dfb\\u52a0\\u76f8\\u5173\\\" onclick=\\\"omnipotent(\'selectid\',\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\',\'\\u6dfb\\u52a0\\u76f8\\u5173\\u6587\\u7ae0\',1)\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<span class=\\\"edit_content\\\">\\r\\n<input type=\'button\' value=\\\"\\u663e\\u793a\\u5df2\\u6709\\\" onclick=\\\"show_relation({MODELID},{ID})\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<\\/span>\\r\\n<\\/div>\",\"fieldtype\":\"varchar\",\"minnumber\":\"1\"}','','2,6,4,5,1,17,18,7','','0','0','0','0','0','0','1','0','15','0','0');
INSERT INTO `yp_model_field` VALUES('281','21','1','content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','','1','999999','','内容不能为空','editor','{\"toolbar\":\"full\",\"defaultvalue\":\"\",\"enablekeylink\":\"1\",\"replacenum\":\"2\",\"link_mode\":\"0\",\"enablesaveimage\":\"1\"}','','','','0','0','0','1','0','1','1','0','13','0','0');
INSERT INTO `yp_model_field` VALUES('276','21','1','typeid','类别','','','0','0','','','typeid','{\"minnumber\":\"\",\"defaultvalue\":\"\"}','','','','0','1','0','1','1','1','0','0','2','0','0');
INSERT INTO `yp_model_field` VALUES('277','21','1','title','标题','','inputtitle','1','80','','请输入标题','title','','','','','0','1','0','1','1','1','1','1','4','0','0');
INSERT INTO `yp_model_field` VALUES('278','21','1','keywords','关键词','多关键词之间用空格或者“,”隔开','','0','40','','','keyword','{\"size\":\"100\",\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','1','0','7','0','0');
INSERT INTO `yp_model_field` VALUES('279','21','1','description','摘要','','','0','255','','','textarea','{\"width\":\"98\",\"height\":\"46\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','','0','1','0','1','0','1','1','1','10','0','0');
INSERT INTO `yp_model_field` VALUES('280','21','1','updatetime','更新时间','','','0','0','','','datetime','{\"dateformat\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"1\",\"defaultvalue\":\"\"}','','','','1','1','0','1','0','0','0','0','12','0','0');
INSERT INTO `yp_model_field` VALUES('274','20','1','islink','转向链接','','','0','0','','','islink','','','','','0','1','0','1','0','1','0','0','20','0','0');
INSERT INTO `yp_model_field` VALUES('275','21','1','catid','栏目','','','1','6','/^[0-9]{1,6}$/','请选择栏目','catid','{\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','0','0','1','0','0');
INSERT INTO `yp_model_field` VALUES('273','20','1','username','用户名','','','0','20','','','text','','','','','1','1','0','1','0','0','0','0','98','0','0');
INSERT INTO `yp_model_field` VALUES('272','20','1','readpoint','阅读收费','','','0','5','','','readpoint','{\"minnumber\":\"1\",\"maxnumber\":\"99999\",\"decimaldigits\":\"0\",\"defaultvalue\":\"\"}','','-99','-99','0','0','0','0','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('271','20','1','status','状态','','','0','2','','','box','','','','','1','1','0','1','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('270','20','1','allow_comment','允许评论','','','0','0','','','box','{\"options\":\"\\u5141\\u8bb8\\u8bc4\\u8bba|1\\r\\n\\u4e0d\\u5141\\u8bb8\\u8bc4\\u8bba|0\",\"boxtype\":\"radio\",\"fieldtype\":\"tinyint\",\"minnumber\":\"1\",\"width\":\"88\",\"size\":\"1\",\"defaultvalue\":\"1\",\"outputtype\":\"0\"}','','','','0','0','0','0','0','0','0','0','54','0','0');
INSERT INTO `yp_model_field` VALUES('267','20','1','url','URL','','','0','100','','','text','','','','','1','1','0','1','0','0','0','0','50','0','0');
INSERT INTO `yp_model_field` VALUES('268','20','1','listorder','排序','','','0','6','','','number','','','','','1','1','0','1','0','0','0','0','51','0','0');
INSERT INTO `yp_model_field` VALUES('269','20','1','template','内容页模板','','','0','30','','','template','{\"size\":\"\",\"defaultvalue\":\"\"})','','-99','-99','0','0','0','0','0','0','0','0','53','0','0');
INSERT INTO `yp_model_field` VALUES('265','20','1','posids','推荐位','','','0','0','','','posid','{\"cols\":\"4\",\"width\":\"125\"}','','','','0','1','0','1','0','0','0','0','18','0','0');
INSERT INTO `yp_model_field` VALUES('266','20','1','groupids_view','阅读权限','','','0','100','','','groupid','{\"groupids\":\"\"}','','','','0','0','0','1','0','0','0','0','19','0','0');
INSERT INTO `yp_model_field` VALUES('264','20','1','inputtime','发布时间','','','0','0','','','datetime','{\"fieldtype\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"0\"}','','','','0','1','0','0','0','0','0','1','17','0','0');
INSERT INTO `yp_model_field` VALUES('263','20','1','pages','分页方式','','','0','0','','','pages','','','-99','-99','0','0','0','1','0','0','0','0','16','0','0');
INSERT INTO `yp_model_field` VALUES('83','10','1','birthday','生日','','','0','0','','生日格式错误','datetime','array (\n  \'fieldtype\' => \'date\',\n  \'format\' => \'Y-m-d\',\n  \'defaulttype\' => \'0\',\n)','','','','0','0','0','0','0','1','1','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('244','19','1','posids','推荐位','','','0','0','','','posid','{\"cols\":\"4\",\"width\":\"125\"}','','','','0','1','0','1','0','0','0','0','18','0','0');
INSERT INTO `yp_model_field` VALUES('243','19','1','inputtime','发布时间','','','0','0','','','datetime','{\"fieldtype\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"0\"}','','','','0','1','0','0','0','0','0','1','17','0','0');
INSERT INTO `yp_model_field` VALUES('242','19','1','pages','分页方式','','','0','0','','','pages','','','-99','-99','0','0','0','1','0','0','0','0','16','0','0');
INSERT INTO `yp_model_field` VALUES('262','20','1','relation','相关文章','','','0','0','','','omnipotent','{\"formtext\":\"<input type=\'hidden\' name=\'info[relation]\' id=\'relation\' value=\'{FIELD_VALUE}\' style=\'50\' >\\r\\n<ul class=\\\"list-dot\\\" id=\\\"relation_text\\\"><\\/ul>\\r\\n<div>\\r\\n<input type=\'button\' value=\\\"\\u6dfb\\u52a0\\u76f8\\u5173\\\" onclick=\\\"omnipotent(\'selectid\',\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\',\'\\u6dfb\\u52a0\\u76f8\\u5173\\u6587\\u7ae0\',1)\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<span class=\\\"edit_content\\\">\\r\\n<input type=\'button\' value=\\\"\\u663e\\u793a\\u5df2\\u6709\\\" onclick=\\\"show_relation({MODELID},{ID})\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<\\/span>\\r\\n<\\/div>\",\"fieldtype\":\"varchar\",\"minnumber\":\"1\"}','','2,6,4,5,1,17,18,7','','0','0','0','0','0','0','1','0','15','0','0');
INSERT INTO `yp_model_field` VALUES('261','20','1','thumb','缩略图','','','0','100','','','image','{\"size\":\"50\",\"defaultvalue\":\"\",\"show_type\":\"1\",\"upload_maxsize\":\"1024\",\"upload_allowext\":\"jpg|jpeg|gif|png|bmp\",\"watermark\":\"0\",\"isselectimage\":\"1\",\"images_width\":\"\",\"images_height\":\"\"}','','','','0','1','0','0','0','1','0','1','14','0','0');
INSERT INTO `yp_model_field` VALUES('260','20','1','content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','','1','999999','','内容不能为空','editor','{\"toolbar\":\"full\",\"defaultvalue\":\"\",\"enablekeylink\":\"1\",\"replacenum\":\"2\",\"link_mode\":\"0\",\"enablesaveimage\":\"1\"}','','','','0','0','0','1','0','1','1','0','13','0','0');
INSERT INTO `yp_model_field` VALUES('255','20','1','typeid','类别','','','0','0','','','typeid','{\"minnumber\":\"\",\"defaultvalue\":\"\"}','','','','0','1','0','1','1','1','0','0','2','0','0');
INSERT INTO `yp_model_field` VALUES('256','20','1','title','标题','','inputtitle','1','80','','请输入标题','title','','','','','0','1','0','1','1','1','1','1','4','0','0');
INSERT INTO `yp_model_field` VALUES('257','20','1','keywords','关键词','多关键词之间用空格或者“,”隔开','','0','40','','','keyword','{\"size\":\"100\",\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','1','0','7','0','0');
INSERT INTO `yp_model_field` VALUES('258','20','1','description','摘要','','','0','255','','','textarea','{\"width\":\"98\",\"height\":\"46\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','','0','1','0','1','0','1','1','1','10','0','0');
INSERT INTO `yp_model_field` VALUES('259','20','1','updatetime','更新时间','','','0','0','','','datetime','{\"dateformat\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"1\",\"defaultvalue\":\"\"}','','','','1','1','0','1','0','0','0','0','12','0','0');
INSERT INTO `yp_model_field` VALUES('254','20','1','catid','栏目','','','1','6','/^[0-9]{1,6}$/','请选择栏目','catid','{\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','0','0','1','0','0');
INSERT INTO `yp_model_field` VALUES('252','19','1','username','用户名','','','0','20','','','text','','','','','1','1','0','1','0','0','0','0','98','0','0');
INSERT INTO `yp_model_field` VALUES('253','19','1','islink','转向链接','','','0','0','','','islink','','','','','0','1','0','1','0','1','0','0','20','0','0');
INSERT INTO `yp_model_field` VALUES('251','19','1','readpoint','阅读收费','','','0','5','','','readpoint','{\"minnumber\":\"1\",\"maxnumber\":\"99999\",\"decimaldigits\":\"0\",\"defaultvalue\":\"\"}','','-99','-99','0','0','0','0','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('250','19','1','status','状态','','','0','2','','','box','','','','','1','1','0','1','0','0','0','0','55','0','0');
INSERT INTO `yp_model_field` VALUES('248','19','1','template','内容页模板','','','0','30','','','template','{\"size\":\"\",\"defaultvalue\":\"\"})','','-99','-99','0','0','0','0','0','0','0','0','53','0','0');
INSERT INTO `yp_model_field` VALUES('249','19','1','allow_comment','允许评论','','','0','0','','','box','{\"options\":\"\\u5141\\u8bb8\\u8bc4\\u8bba|1\\r\\n\\u4e0d\\u5141\\u8bb8\\u8bc4\\u8bba|0\",\"boxtype\":\"radio\",\"fieldtype\":\"tinyint\",\"minnumber\":\"1\",\"width\":\"88\",\"size\":\"1\",\"defaultvalue\":\"1\",\"outputtype\":\"0\"}','','','','0','0','0','0','0','0','0','0','54','0','0');
INSERT INTO `yp_model_field` VALUES('247','19','1','listorder','排序','','','0','6','','','number','','','','','1','1','0','1','0','0','0','0','51','0','0');
INSERT INTO `yp_model_field` VALUES('245','19','1','groupids_view','阅读权限','','','0','100','','','groupid','{\"groupids\":\"\"}','','','','0','0','0','1','0','0','0','0','19','0','0');
INSERT INTO `yp_model_field` VALUES('246','19','1','url','URL','','','0','100','','','text','','','','','1','1','0','1','0','0','0','0','50','0','0');
INSERT INTO `yp_model_field` VALUES('240','19','1','thumb','缩略图','','','0','100','','','image','{\"size\":\"50\",\"defaultvalue\":\"\",\"show_type\":\"1\",\"upload_maxsize\":\"1024\",\"upload_allowext\":\"jpg|jpeg|gif|png|bmp\",\"watermark\":\"0\",\"isselectimage\":\"1\",\"images_width\":\"\",\"images_height\":\"\"}','','','','0','1','0','0','0','1','0','1','14','0','0');
INSERT INTO `yp_model_field` VALUES('241','19','1','relation','相关文章','','','0','0','','','omnipotent','{\"formtext\":\"<input type=\'hidden\' name=\'info[relation]\' id=\'relation\' value=\'{FIELD_VALUE}\' style=\'50\' >\\r\\n<ul class=\\\"list-dot\\\" id=\\\"relation_text\\\"><\\/ul>\\r\\n<div>\\r\\n<input type=\'button\' value=\\\"\\u6dfb\\u52a0\\u76f8\\u5173\\\" onclick=\\\"omnipotent(\'selectid\',\'?m=content&c=content&a=public_relationlist&modelid={MODELID}\',\'\\u6dfb\\u52a0\\u76f8\\u5173\\u6587\\u7ae0\',1)\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<span class=\\\"edit_content\\\">\\r\\n<input type=\'button\' value=\\\"\\u663e\\u793a\\u5df2\\u6709\\\" onclick=\\\"show_relation({MODELID},{ID})\\\" class=\\\"button\\\" style=\\\"width:66px;\\\">\\r\\n<\\/span>\\r\\n<\\/div>\",\"fieldtype\":\"varchar\",\"minnumber\":\"1\"}','','2,6,4,5,1,17,18,7','','0','0','0','0','0','0','1','0','15','0','0');
INSERT INTO `yp_model_field` VALUES('239','19','1','content','内容','<div class=\"content_attr\"><label><input name=\"add_introduce\" type=\"checkbox\"  value=\"1\" checked>是否截取内容</label><input type=\"text\" name=\"introcude_length\" value=\"200\" size=\"3\">字符至内容摘要\r\n<label><input type=\'checkbox\' name=\'auto_thumb\' value=\"1\" checked>是否获取内容第</label><input type=\"text\" name=\"auto_thumb_no\" value=\"1\" size=\"2\" class=\"\">张图片作为标题图片\r\n</div>','','1','999999','','内容不能为空','editor','{\"toolbar\":\"full\",\"defaultvalue\":\"\",\"enablekeylink\":\"1\",\"replacenum\":\"2\",\"link_mode\":\"0\",\"enablesaveimage\":\"1\"}','','','','0','0','0','1','0','1','1','0','13','0','0');
INSERT INTO `yp_model_field` VALUES('172','15','1','nickname','昵称','','','1','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('182','15','1','phone','手机号码','','','1','0','','','number','{\"minnumber\":\"1\",\"maxnumber\":\"\",\"decimaldigits\":\"0\",\"size\":\"30\",\"defaultvalue\":\"\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('174','15','1','wechat','微信号','','','0','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('175','15','1','content','留言内容','','','1','0','','','textarea','{\"width\":\"90\",\"height\":\"60\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','','0','0','0','0','0','0','0','0','99','0','0');
INSERT INTO `yp_model_field` VALUES('176','16','1','nickname','昵称','','','1','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('238','19','1','updatetime','更新时间','','','0','0','','','datetime','{\"dateformat\":\"int\",\"format\":\"Y-m-d H:i:s\",\"defaulttype\":\"1\",\"defaultvalue\":\"\"}','','','','1','1','0','1','0','0','0','0','12','0','0');
INSERT INTO `yp_model_field` VALUES('237','19','1','description','摘要','','','0','255','','','textarea','{\"width\":\"98\",\"height\":\"46\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','','0','1','0','1','0','1','1','1','10','0','0');
INSERT INTO `yp_model_field` VALUES('177','16','1','phone','手机号码','','','1','0','','','number','{\"minnumber\":\"1\",\"maxnumber\":\"\",\"decimaldigits\":\"0\",\"size\":\"30\",\"defaultvalue\":\"\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('236','19','1','keywords','关键词','多关键词之间用空格或者“,”隔开','','0','40','','','keyword','{\"size\":\"100\",\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','1','0','7','0','0');
INSERT INTO `yp_model_field` VALUES('178','16','1','wechat','微信号','','','0','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('179','16','1','email','邮箱','','','0','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('234','19','1','typeid','类别','','','0','0','','','typeid','{\"minnumber\":\"\",\"defaultvalue\":\"\"}','','','','0','1','0','1','1','1','0','0','2','0','0');
INSERT INTO `yp_model_field` VALUES('235','19','1','title','标题','','inputtitle','1','80','','请输入标题','title','','','','','0','1','0','1','1','1','1','1','4','0','0');
INSERT INTO `yp_model_field` VALUES('233','19','1','catid','栏目','','','1','6','/^[0-9]{1,6}$/','请选择栏目','catid','{\"defaultvalue\":\"\"}','','-99','-99','0','1','0','1','1','1','0','0','1','0','0');
INSERT INTO `yp_model_field` VALUES('180','16','1','qq','QQ','','','0','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','1','0');
INSERT INTO `yp_model_field` VALUES('181','16','1','content','咨询内容','','','1','0','','','textarea','{\"width\":\"90\",\"height\":\"60\",\"defaultvalue\":\"\",\"enablehtml\":\"0\"}','','','','0','0','0','0','0','0','0','0','99','0','0');
INSERT INTO `yp_model_field` VALUES('183','15','1','email','邮箱','','','0','0','','','text','{\"size\":\"30\",\"defaultvalue\":\"\",\"ispassword\":\"0\"}','','','','0','0','0','0','0','0','0','0','0','0','0');
INSERT INTO `yp_model_field` VALUES('184','15','1','qq','QQ','','','0','0','','','number','{\"minnumber\":\"1\",\"maxnumber\":\"\",\"decimaldigits\":\"0\",\"size\":\"30\",\"defaultvalue\":\"\"}','','','','0','0','0','0','0','0','0','0','0','1','0');

DROP TABLE IF EXISTS `yp_module`;
CREATE TABLE `yp_module` (
  `module` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `name` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `iscore` tinyint unsigned NOT NULL DEFAULT '0',
  `version` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `setting` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `installdate` date NOT NULL DEFAULT '1000-01-01',
  `updatedate` date NOT NULL DEFAULT '1000-01-01',
  PRIMARY KEY (`module`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_module` VALUES('admin','admin','','1','1.0','','{\"admin_email\":\"phpcms@phpcms.cn\",\"maxloginfailedtimes\":\"8\",\"minrefreshtime\":\"2\",\"mail_type\":\"1\",\"mail_server\":\"smtp.qq.com\",\"mail_port\":\"25\",\"category_ajax\":\"0\",\"mail_user\":\"phpcms.cn@foxmail.com\",\"mail_auth\":\"1\",\"mail_from\":\"phpcms.cn@foxmail.com\",\"mail_password\":\"zcwl888\",\"errorlog_size\":\"20\"}','0','0','2010-10-18','2010-10-18');
INSERT INTO `yp_module` VALUES('member','会员','','1','1.0','','array (\n  \'allowregister\' => \'1\',\n  \'choosemodel\' => \'1\',\n  \'enablemailcheck\' => \'0\',\n  \'registerverify\' => \'0\',\n  \'showapppoint\' => \'0\',\n  \'rmb_point_rate\' => \'10\',\n  \'defualtpoint\' => \'0\',\n  \'defualtamount\' => \'0\',\n  \'showregprotocol\' => \'0\',\n  \'regprotocol\' => \'		 欢迎您注册成为phpcms用户\r\n请仔细阅读下面的协议，只有接受协议才能继续进行注册。 \r\n1．服务条款的确认和接纳\r\n　　phpcms用户服务的所有权和运作权归phpcms拥有。phpcms所提供的服务将按照有关章程、服务条款和操作规则严格执行。用户通过注册程序点击“我同意” 按钮，即表示用户与phpcms达成协议并接受所有的服务条款。\r\n2． phpcms服务简介\r\n　　phpcms通过国际互联网为用户提供新闻及文章浏览、图片浏览、软件下载、网上留言和BBS论坛等服务。\r\n　　用户必须： \r\n　　1)购置设备，包括个人电脑一台、调制解调器一个及配备上网装置。 \r\n　　2)个人上网和支付与此服务有关的电话费用、网络费用。\r\n　　用户同意： \r\n　　1)提供及时、详尽及准确的个人资料。 \r\n　　2)不断更新注册资料，符合及时、详尽、准确的要求。所有原始键入的资料将引用为注册资料。 \r\n　　3)用户同意遵守《中华人民共和国保守国家秘密法》、《中华人民共和国计算机信息系统安全保护条例》、《计算机软件保护条例》等有关计算机及互联网规定的法律和法规、实施办法。在任何情况下，phpcms合理地认为用户的行为可能违反上述法律、法规，phpcms可以在任何时候，不经事先通知终止向该用户提供服务。用户应了解国际互联网的无国界性，应特别注意遵守当地所有有关的法律和法规。\r\n3． 服务条款的修改\r\n　　phpcms会不定时地修改服务条款，服务条款一旦发生变动，将会在相关页面上提示修改内容。如果您同意改动，则再一次点击“我同意”按钮。 如果您不接受，则及时取消您的用户使用服务资格。\r\n4． 服务修订\r\n　　phpcms保留随时修改或中断服务而不需知照用户的权利。phpcms行使修改或中断服务的权利，不需对用户或第三方负责。\r\n5． 用户隐私制度\r\n　　尊重用户个人隐私是phpcms的 基本政策。phpcms不会公开、编辑或透露用户的注册信息，除非有法律许可要求，或phpcms在诚信的基础上认为透露这些信息在以下三种情况是必要的： \r\n　　1)遵守有关法律规定，遵从合法服务程序。 \r\n　　2)保持维护phpcms的商标所有权。 \r\n　　3)在紧急情况下竭力维护用户个人和社会大众的隐私安全。 \r\n　　4)符合其他相关的要求。 \r\n6．用户的帐号，密码和安全性\r\n　　一旦注册成功成为phpcms用户，您将得到一个密码和帐号。如果您不保管好自己的帐号和密码安全，将对因此产生的后果负全部责任。另外，每个用户都要对其帐户中的所有活动和事件负全责。您可随时根据指示改变您的密码，也可以结束旧的帐户重开一个新帐户。用户同意若发现任何非法使用用户帐号或安全漏洞的情况，立即通知phpcms。\r\n7． 免责条款\r\n　　用户明确同意网站服务的使用由用户个人承担风险。 　　 \r\n　　phpcms不作任何类型的担保，不担保服务一定能满足用户的要求，也不担保服务不会受中断，对服务的及时性，安全性，出错发生都不作担保。用户理解并接受：任何通过phpcms服务取得的信息资料的可靠性取决于用户自己，用户自己承担所有风险和责任。 \r\n8．有限责任\r\n　　phpcms对任何直接、间接、偶然、特殊及继起的损害不负责任。\r\n9． 不提供零售和商业性服务 \r\n　　用户使用网站服务的权利是个人的。用户只能是一个单独的个体而不能是一个公司或实体商业性组织。用户承诺不经phpcms同意，不能利用网站服务进行销售或其他商业用途。\r\n10．用户责任 \r\n　　用户单独承担传输内容的责任。用户必须遵循： \r\n　　1)从中国境内向外传输技术性资料时必须符合中国有关法规。 \r\n　　2)使用网站服务不作非法用途。 \r\n　　3)不干扰或混乱网络服务。 \r\n　　4)不在论坛BBS或留言簿发表任何与政治相关的信息。 \r\n　　5)遵守所有使用网站服务的网络协议、规定、程序和惯例。\r\n　　6)不得利用本站危害国家安全、泄露国家秘密，不得侵犯国家社会集体的和公民的合法权益。\r\n　　7)不得利用本站制作、复制和传播下列信息： \r\n　　　1、煽动抗拒、破坏宪法和法律、行政法规实施的；\r\n　　　2、煽动颠覆国家政权，推翻社会主义制度的；\r\n　　　3、煽动分裂国家、破坏国家统一的；\r\n　　　4、煽动民族仇恨、民族歧视，破坏民族团结的；\r\n　　　5、捏造或者歪曲事实，散布谣言，扰乱社会秩序的；\r\n　　　6、宣扬封建迷信、淫秽、色情、赌博、暴力、凶杀、恐怖、教唆犯罪的；\r\n　　　7、公然侮辱他人或者捏造事实诽谤他人的，或者进行其他恶意攻击的；\r\n　　　8、损害国家机关信誉的；\r\n　　　9、其他违反宪法和法律行政法规的；\r\n　　　10、进行商业广告行为的。\r\n　　用户不能传输任何教唆他人构成犯罪行为的资料；不能传输长国内不利条件和涉及国家安全的资料；不能传输任何不符合当地法规、国家法律和国际法 律的资料。未经许可而非法进入其它电脑系统是禁止的。若用户的行为不符合以上的条款，phpcms将取消用户服务帐号。\r\n11．网站内容的所有权\r\n　　phpcms定义的内容包括：文字、软件、声音、相片、录象、图表；在广告中全部内容；电子邮件的全部内容；phpcms为用户提供的商业信息。所有这些内容受版权、商标、标签和其它财产所有权法律的保护。所以，用户只能在phpcms和广告商授权下才能使用这些内容，而不能擅自复制、篡改这些内容、或创造与内容有关的派生产品。\r\n12．附加信息服务\r\n　　用户在享用phpcms提供的免费服务的同时，同意接受phpcms提供的各类附加信息服务。\r\n13．解释权\r\n　　本注册协议的解释权归phpcms所有。如果其中有任何条款与国家的有关法律相抵触，则以国家法律的明文规定为准。 \',\n  \'registerverifymessage\' => \' 欢迎您注册成为phpcms用户，您的账号需要邮箱认证，点击下面链接进行认证：{click}\r\n或者将网址复制到浏览器：{url}\',\n  \'forgetpassword\' => \' phpcms密码找回，请在一小时内点击下面链接进行操作：{click}\r\n或者将网址复制到浏览器：{url}\',\n)','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('pay','支付','','1','1.0','','','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('digg','顶一下','','0','1.0','','','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('special','专题','','0','1.0','','','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('content','内容模块','','1','1.0','','','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('search','全站搜索','','0','1.0','','array (\n  \'fulltextenble\' => \'1\',\n  \'relationenble\' => \'1\',\n  \'suggestenable\' => \'1\',\n  \'sphinxenable\' => \'0\',\n  \'sphinxhost\' => \'10.228.134.102\',\n  \'sphinxport\' => \'9312\',\n)','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('scan','木马扫描','scan','0','1.0','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('attachment','附件','attachment','1','1.0','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('block','碎片','','1','1.0','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('collection','采集模块','collection','1','1.0','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('dbsource','数据源','','1','','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('template','模板风格','','1','1.0','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('release','发布点','','1','1.0','','','0','0','2010-09-01','2010-09-06');
INSERT INTO `yp_module` VALUES('video','视频库','','0','1.0','','','0','0','2012-09-28','2012-09-28');
INSERT INTO `yp_module` VALUES('announce','公告','announce/','0','1.0','公告','','0','0','2019-02-26','2019-02-26');
INSERT INTO `yp_module` VALUES('comment','评论','comment/','0','1.0','评论','','0','0','2019-02-26','2019-02-26');
INSERT INTO `yp_module` VALUES('link','友情链接','','0','1.0','','array (\n  1 => \n  array (\n    \'is_post\' => \'1\',\n    \'enablecheckcode\' => \'0\',\n  ),\n)','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('vote','投票','','0','1.0','','array (\r\n  1 => \r\n  array (\r\n    \'default_style\' => \'default\',\r\n    \'vote_tp_template\' => \'vote_tp\',\r\n    \'allowguest\' => \'1\',\r\n    \'enabled\' => \'1\',\r\n    \'interval\' => \'1\',\r\n    \'credit\' => \'1\',\r\n  ),\r\n)','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('message','短消息','','0','1.0','','','0','0','2010-09-06','2010-09-06');
INSERT INTO `yp_module` VALUES('mood','新闻心情','mood/','0','1.0','新闻心情','','0','0','2019-02-26','2019-02-26');
INSERT INTO `yp_module` VALUES('poster','广告模块','poster/','0','1.0','广告模块','','0','0','2019-02-26','2019-02-26');
INSERT INTO `yp_module` VALUES('formguide','表单向导','formguide/','0','1.0','formguide','{\"allowmultisubmit\":\"0\",\"interval\":\"\",\"allowunreg\":\"1\",\"mailmessage\":\"\"}','0','0','2010-10-20','2010-10-20');
INSERT INTO `yp_module` VALUES('wap','手机门户','wap/','0','1.0','手机门户','','0','0','2019-02-26','2019-02-26');
INSERT INTO `yp_module` VALUES('upgrade','在线升级','','0','1.0','','','0','0','2011-05-18','2011-05-18');
INSERT INTO `yp_module` VALUES('tag','标签向导','tag/','0','1.0','标签向导','','0','0','2019-02-26','2019-02-26');
INSERT INTO `yp_module` VALUES('sms','短信平台','sms/','0','1.0','短信平台','','0','0','2011-09-02','2011-09-02');

DROP TABLE IF EXISTS `yp_mood`;
CREATE TABLE `yp_mood` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `catid` int unsigned NOT NULL DEFAULT '0' COMMENT '栏目id',
  `siteid` mediumint unsigned NOT NULL DEFAULT '0' COMMENT '站点ID',
  `contentid` int unsigned NOT NULL DEFAULT '0' COMMENT '文章id',
  `total` int unsigned NOT NULL DEFAULT '0' COMMENT '总数',
  `n1` int unsigned NOT NULL DEFAULT '0',
  `n2` int unsigned NOT NULL DEFAULT '0',
  `n3` int unsigned NOT NULL DEFAULT '0',
  `n4` int unsigned NOT NULL DEFAULT '0',
  `n5` int unsigned NOT NULL DEFAULT '0',
  `n6` int unsigned NOT NULL DEFAULT '0',
  `n7` int unsigned NOT NULL DEFAULT '0',
  `n8` int unsigned NOT NULL DEFAULT '0',
  `n9` int unsigned NOT NULL DEFAULT '0',
  `n10` int unsigned NOT NULL DEFAULT '0',
  `lastupdate` int unsigned NOT NULL DEFAULT '0' COMMENT '最后更新时间',
  PRIMARY KEY (`id`),
  KEY `total` (`total`),
  KEY `lastupdate` (`lastupdate`),
  KEY `catid` (`catid`,`siteid`,`contentid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_news`;
CREATE TABLE `yp_news` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `typeid` smallint unsigned NOT NULL,
  `title` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `posids` tinyint unsigned NOT NULL DEFAULT '0',
  `url` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint unsigned NOT NULL DEFAULT '0',
  `islink` tinyint unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputtime` int unsigned NOT NULL DEFAULT '0',
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `yp_news_data`;
CREATE TABLE `yp_news_data` (
  `id` mediumint unsigned DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `readpoint` smallint unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint NOT NULL,
  `template` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytype` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `yp_other`;
CREATE TABLE `yp_other` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `typeid` smallint unsigned NOT NULL,
  `title` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `posids` tinyint unsigned NOT NULL DEFAULT '0',
  `url` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint unsigned NOT NULL DEFAULT '0',
  `islink` tinyint unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputtime` int unsigned NOT NULL DEFAULT '0',
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `yp_other` VALUES('1','14','0','精工制造，匠心独运','','/uploadfile/2023/1128/20231128095933490.jpg','','banner_01','0','/index.php?m=content&c=index&a=show&catid=14&id=1','0','99','1','0','super_user','1700233858','1701136776');
INSERT INTO `yp_other` VALUES('2','14','0','服务于各行业的中小企业','','/uploadfile/2023/1128/20231128095933490.jpg','','banner_02','0','/index.php?m=content&c=index&a=show&catid=14&id=2','0','99','1','0','super_user','1700233882','1701136783');

DROP TABLE IF EXISTS `yp_other_data`;
CREATE TABLE `yp_other_data` (
  `id` mediumint unsigned DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `readpoint` smallint unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint NOT NULL,
  `template` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytype` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `yp_other_data` VALUES('1','<p>我们力求做到每一步扎实细腻，成立数年间，我们已与多家本地著名企业达成战略合作，每一单的客户案例都凝聚着云铺服务决心的点点滴滴，这些点滴也会更加坚定我们将互联网东风带给更多企业的决心！</p>\r\n','0','','0','10000','','0','1','');
INSERT INTO `yp_other_data` VALUES('2','<p>云铺网络自成立起，一直致力于用时下主流的云技术服务于各行各业，包括但不限于网站建设、关键词/朋友圈推广、微信公众号/小程序搭建开发、抖音建设推广、OA/ERP软件开发等，从售前洽谈、项目实施到售后服务，我们拥有一套完整的客服服务流程。</p>\r\n','0','','0','10000','','0','1','');

DROP TABLE IF EXISTS `yp_page`;
CREATE TABLE `yp_page` (
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `title` varchar(160) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `style` varchar(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `keywords` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `template` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  KEY `catid` (`catid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_page` VALUES('1','关于我们',';','关于我们','','','0');
INSERT INTO `yp_page` VALUES('2','公司简介',';','公司简介','<div>\r\n<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploadfile/2022/0216/20220216040220536.jpg\" style=\"width: 860px; height: 326px;\" /></div>\r\n<div><br />\r\n公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司简介公司。</div>\r\n<div>为您提供更优质的产品，更优质的服务是我厂不断进取的目标，让我们携起手来共同创造美好的明天！真诚欢迎新老客户来我厂作客、指导或登陆我公司网站。</div>\r\n</div>\r\n<div style=\"text-align: center;\">&nbsp;</div>\r\n<div>&nbsp;</div>\r\n','','0');
INSERT INTO `yp_page` VALUES('3','企业文化',';','企业文化','<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploadfile/2022/0216/20220216035508114.jpg\" style=\"width: 860px; height: 326px;\" /></div>\r\n','','0');
INSERT INTO `yp_page` VALUES('18','人才招聘',';','人才招聘','<div style=\"text-align:center\">\r\n<p style=\"text-align:left\">优耐德高度重视人才培养，不断吸纳高校及社会高科技人才，努力为顾客提供高质量的服务，以最大限度地为客户着想，使之在市场竞争中占据优势地位.</p>\r\n\r\n<p style=\"text-align:left\">一、销售经理<br />\r\n岗位要求：<br />\r\n1、性别要求：男性，35周岁以下（条件优越者可适当放宽）；<br />\r\n2、工资待遇：底薪+提成+出差补助+年终奖<br />\r\n3、工作地点：江苏省高邮市经济开发区；<br />\r\n4、职能要求：大专以上学历，机械设备专业优先，能独立出差，要求上进，有创业理想，试用期1800元+提成+出差补助+年终奖，试用期三个月，期满后参加保险。</p>\r\n\r\n<p style=\"text-align:left\">二、销售助理<br />\r\n岗位要求：<br />\r\n1、性别要求：女性，35周岁以下（条件优越者可适当放宽）；<br />\r\n2、工资待遇：底薪+提成+出差补助+年终奖；试用期三个月，期满后参加保险；<br />\r\n3、工作地点：江苏省高邮市经济开发区；<br />\r\n4、职能要求：大专以上学历，机械设备专业优先，能熟练操作电脑，主要工作在网上与客户沟通介绍我司的产品，试用期1800元+提成+出差补助+年终奖，试用期三个月，期满后参加保险。</p>\r\n\r\n<p style=\"text-align:left\">【联系优耐德】<br />\r\n1、地址：江苏省高邮市经济开发区<br />\r\n2、联系电话：13773431288，0514-84601128<br />\r\n3、联系人：颜经理<br />\r\n4、简历投递邮箱：yzynd@yzynd.com</p>\r\n</div>\r\n\r\n<div>&nbsp;</div>\r\n','','0');
INSERT INTO `yp_page` VALUES('19','在线留言',';','在线留言','<div style=\"text-align: center;\"><img alt=\"\" src=\"/uploadfile/2022/0216/20220216041552197.jpg\" style=\"width: 860px; height: 326px;\" /></div>\r\n','','0');
INSERT INTO `yp_page` VALUES('28','荣誉资质',';','荣誉资质 荣誉','<img alt=\"\" src=\"/uploadfile/2019/0404/20190404042954523.jpg\" style=\"width: 900px; height: 1175px;\" />','','0');
INSERT INTO `yp_page` VALUES('17','服务策略',';','服务策略','<p>优耐德的最高宗旨，即是保障客户安全有效地运营。我们始终秉承&ldquo;诚信合作，合作双赢&rdquo;的服务理念，为您提供从售前、售中到售后的一系列无忧服务，将增值服务融入到与每位客户的任何一个环节。</p>\r\n\r\n<p>一、售前服务<br />\r\n为了将服务信息准确、高效地传达，这里被分为信息沟通中心、客户满意度提升中心、客户行为分析中心和产品营销推广中心。这里，会为您提供产品介绍、产品价格咨询、技术支持、产品投诉、服务投诉、报修及备件咨询及销售等一站式的专业服务。<br />\r\n深度定制施工解决方案。我们拥有软、硬件资源以及积累多年的施工经验，同时，我们也诚挚邀请您来担当企业产品设计、制造、服务细则制定的顾问，为了提供高效、深度地定制施工解决方案，我们携手奋进。</p>\r\n\r\n<p>二、售中服务<br />\r\n顾问式销售。我们全力协助您进行设备的优化选型，帮助您实现购买设备的价值最优化。<br />\r\n管家式运输。为了满足您的需求，我们会提供专业的运输送货上门服务，并为每台设备提供首次安装和交机培训服务。</p>\r\n\r\n<p>三、售后服务<br />\r\n365&times;24全年无休服务。我们坚决做到：24小时全年无休地为您提供&ldquo;15分钟快速响应，24小时完工&rdquo;的用心服务。<br />\r\nVIP客户俱乐部。这里是一个&ldquo;客户、专家、厂方、工程&rdquo;四方合作交流的平台，有着完善的管理制度和工作流程。</p>\r\n\r\n<p>备件及时达。我们承诺，备件会在三个工作日之内为您送达。</p>\r\n\r\n<p>后市场无忧服务。我们致力于为您提供租赁、二手设备评估、交易、大修以及回收再制造等后市场服务，为您解决后顾之忧是我们一直以来坚定奉行的责任与使命。</p>\r\n','','0');
INSERT INTO `yp_page` VALUES('5','企业简介',';','企业简介','<p>扬州云铺网络有限公司自成立起，一直致力于用时下主流的云技术服务于各行各业，包括但不限于扬州做网站建设、关键词/朋友圈推广、微信公众号搭建/小程序开发、抖音推广建设、OA/ERP软件开发等，我们拥有一套完整的客服服务流程，从售前洽谈、项目实施到售后服务，每一步我们力求做到扎实细腻，真正一站式管家服务让你没有任何后顾之忧。</p>\r\n\r\n<p>成立数年间，我们已与多家本地著名企业达成战略合作，每一单的客户案例都凝聚着云铺服务决心的点点滴滴，这些点滴也会更加坚定我们将互联网东风带给更多企业的决心！</p>\r\n\r\n<p>热枕欢迎各位新老朋友光临我公司指导。</p>\r\n','','0');
INSERT INTO `yp_page` VALUES('6','企业文化',';','企业文化','<p>企业精神 ：<br />\r\n诚信、创新、超越</p>\r\n\r\n<p>企业愿景 ：<br />\r\n创造全球知名品牌、树立离心机行业标杆</p>\r\n\r\n<p>经营宗旨 &nbsp;：<br />\r\n为顾客创造价值，为员工创造机会，为社会创造效益</p>\r\n\r\n<p>核心价值观 ：<br />\r\n艰苦坚实、诚信承诺、实干实效，以艰苦的作风打拼坚实的企业基础；以诚实的信念承诺一流的企业服务；以实干的精神创造高效的企业绩</p>\r\n','','0');
INSERT INTO `yp_page` VALUES('7','联系方式',';','联系方式','','','0');
INSERT INTO `yp_page` VALUES('29','董事长致辞',';','董事长致辞','<p>二十载风雨兼程，二十载岁月如歌。</p>\r\n\r\n<p>我们渴望合作与共赢，创建全球知名品牌、树立离心机行业标杆的企业愿景，要求我们不仅参与竞争，更要追求合作，与合作伙伴风雨同舟，共谋发展。请相信，优耐德不仅是各位朋友首选的合作伙伴，更是您永远最可信赖的朋友!</p>\r\n\r\n<p>良好的社会信誉及底蕴、深厚的企业文化，形成了优耐德完美的内涵体系。</p>\r\n\r\n<p>明天会更好。</p>\r\n\r\n<p>在新的历程里，优耐德人肩并肩、手挽手、心连心，谈笑高歌、继续猛进。</p>\r\n','','0');

DROP TABLE IF EXISTS `yp_pay_account`;
CREATE TABLE `yp_pay_account` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `trade_sn` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `contactname` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `email` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `telephone` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `discount` float(8,2) NOT NULL DEFAULT '0.00',
  `money` char(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `quantity` int unsigned NOT NULL DEFAULT '1',
  `addtime` int NOT NULL DEFAULT '0',
  `paytime` int NOT NULL DEFAULT '0',
  `usernote` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pay_id` tinyint NOT NULL,
  `pay_type` enum('offline','recharge','selfincome','online') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT 'recharge',
  `payment` char(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` tinyint NOT NULL DEFAULT '1',
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0.0.0.0',
  `status` enum('succ','failed','error','progress','timeout','cancel','waitting','unpay') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT 'unpay',
  `adminnote` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `status` (`status`),
  KEY `userid` (`userid`),
  KEY `trade_sn` (`trade_sn`,`money`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_pay_payment`;
CREATE TABLE `yp_pay_payment` (
  `pay_id` tinyint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pay_name` varchar(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pay_code` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pay_desc` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pay_method` tinyint(1) DEFAULT NULL,
  `pay_fee` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `config` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `is_cod` tinyint unsigned NOT NULL DEFAULT '0',
  `is_online` tinyint unsigned NOT NULL DEFAULT '0',
  `pay_order` tinyint unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint unsigned NOT NULL DEFAULT '0',
  `author` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `website` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `version` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`pay_id`),
  KEY `pay_code` (`pay_code`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_pay_spend`;
CREATE TABLE `yp_pay_spend` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `creat_at` int unsigned NOT NULL DEFAULT '0',
  `userid` int unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `logo` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `value` int NOT NULL,
  `op_userid` int unsigned NOT NULL DEFAULT '0',
  `op_username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `msg` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `type` (`type`),
  KEY `creat_at` (`creat_at`),
  KEY `logo` (`logo`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_picture`;
CREATE TABLE `yp_picture` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `typeid` smallint unsigned NOT NULL,
  `title` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `posids` tinyint unsigned NOT NULL DEFAULT '0',
  `url` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint unsigned NOT NULL DEFAULT '0',
  `islink` tinyint unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputtime` int unsigned NOT NULL DEFAULT '0',
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `yp_picture_data`;
CREATE TABLE `yp_picture_data` (
  `id` mediumint unsigned DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `readpoint` smallint unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint NOT NULL,
  `template` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytype` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pics` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `yp_position`;
CREATE TABLE `yp_position` (
  `posid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `modelid` smallint unsigned DEFAULT '0',
  `catid` smallint unsigned DEFAULT '0',
  `name` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `maxnum` smallint NOT NULL DEFAULT '20',
  `extention` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `thumb` varchar(150) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`posid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_position` VALUES('1','20','0','首页新闻推荐','20','','1','1','');
INSERT INTO `yp_position` VALUES('2','19','0','首页产品推荐','20','','4','1','');
INSERT INTO `yp_position` VALUES('12','21','0','首页图片推荐','20','','0','1','');

DROP TABLE IF EXISTS `yp_position_data`;
CREATE TABLE `yp_position_data` (
  `id` mediumint unsigned NOT NULL DEFAULT '0',
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `posid` smallint unsigned NOT NULL DEFAULT '0',
  `module` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `modelid` smallint unsigned DEFAULT '0',
  `thumb` tinyint(1) NOT NULL DEFAULT '0',
  `data` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `siteid` smallint unsigned NOT NULL DEFAULT '1',
  `listorder` mediumint DEFAULT '0',
  `expiration` int NOT NULL,
  `extention` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `synedit` tinyint(1) DEFAULT '0',
  KEY `posid` (`posid`),
  KEY `listorder` (`listorder`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_poster`;
CREATE TABLE `yp_poster` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `spaceid` smallint unsigned NOT NULL DEFAULT '0',
  `type` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `setting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `startdate` int unsigned NOT NULL DEFAULT '0',
  `enddate` int unsigned NOT NULL DEFAULT '0',
  `addtime` int unsigned NOT NULL DEFAULT '0',
  `hits` mediumint unsigned NOT NULL DEFAULT '0',
  `clicks` smallint unsigned NOT NULL DEFAULT '0',
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `spaceid` (`spaceid`,`siteid`,`disabled`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_poster` VALUES('1','1','banner','1','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/2.png\',\n    \'alt\' => \'\',\n  ),\n)','1285813808','1446249600','1285813833','0','1','0','0');
INSERT INTO `yp_poster` VALUES('2','1','phpcmsv9','2','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/statics/images/v9/ad_login.jpg\',\n    \'alt\' => \'phpcms专业建站系统\',\n  ),\n)','1285816298','1446249600','1285816310','0','1','0','0');
INSERT INTO `yp_poster` VALUES('3','1','phpcms下载推荐','3','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/3.png\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)','1286504815','1446249600','1286504865','0','1','0','0');
INSERT INTO `yp_poster` VALUES('4','1','phpcms广告','4','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/4.gif\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)','1286505141','1446249600','1286505178','0','0','0','0');
INSERT INTO `yp_poster` VALUES('5','1','phpcms下载','5','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)','1286509363','1446249600','1286509401','0','0','0','0');
INSERT INTO `yp_poster` VALUES('6','1','phpcms下载推荐1','6','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)','1286510183','1446249600','1286510227','0','0','0','0');
INSERT INTO `yp_poster` VALUES('7','1','phpcms下载详情','7','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/5.gif\',\n    \'alt\' => \'官方\',\n  ),\n)','1286510314','1446249600','1286510341','0','0','0','0');
INSERT INTO `yp_poster` VALUES('8','1','phpcms下载页','8','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/1.jpg\',\n    \'alt\' => \'官方站\',\n  ),\n)','1286522084','1446249600','1286522125','0','0','0','0');
INSERT INTO `yp_poster` VALUES('9','1','phpcms v9广告','9','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/4.gif\',\n    \'alt\' => \'\',\n  ),\n)','1287041759','1446249600','1287041804','0','0','0','0');
INSERT INTO `yp_poster` VALUES('10','1','phpcms','10','images','array (\n  1 => \n  array (\n    \'linkurl\' => \'http://www.phpcms.cn\',\n    \'imageurl\' => \'http://yzhcft.gotoip11.com/uploadfile/poster/6.jpg\',\n    \'alt\' => \'phpcms官方\',\n  ),\n)','1289270509','1446249600','1289270541','1','0','0','0');

DROP TABLE IF EXISTS `yp_poster_201902`;
CREATE TABLE `yp_poster_201902` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `spaceid` smallint unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`type`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `yp_poster_201903`;
CREATE TABLE `yp_poster_201903` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `spaceid` smallint unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`type`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `yp_poster_201904`;
CREATE TABLE `yp_poster_201904` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` smallint unsigned NOT NULL DEFAULT '0',
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `spaceid` smallint unsigned NOT NULL DEFAULT '0',
  `username` char(20) NOT NULL,
  `area` char(40) NOT NULL,
  `ip` char(15) NOT NULL,
  `referer` char(120) NOT NULL,
  `clicktime` int unsigned NOT NULL DEFAULT '0',
  `type` tinyint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `pid` (`pid`,`type`,`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;


DROP TABLE IF EXISTS `yp_poster_space`;
CREATE TABLE `yp_poster_space` (
  `spaceid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `name` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `path` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `width` smallint unsigned NOT NULL DEFAULT '0',
  `height` smallint unsigned NOT NULL DEFAULT '0',
  `setting` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `items` tinyint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`spaceid`),
  KEY `disabled` (`disabled`,`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_poster_space` VALUES('1','1','顶部搜索右侧广告位','banner','poster_js/1.js','430','63','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('2','1','会员登陆页广告','banner','poster_js/2.js','310','304','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','会员登陆页广告右侧代替外部通行证广告','1','0');
INSERT INTO `yp_poster_space` VALUES('3','1','图片频道图片排行下方','banner','poster_js/3.js','249','87','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('4','1','新闻中心推荐链接左侧','banner','poster_js/4.js','748','91','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('5','1','下载列表页右侧顶部','banner','poster_js/5.js','248','162','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('6','1','下载详情页右侧顶部','banner','poster_js/6.js','248','162','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('7','1','下载详情页右侧下部','banner','poster_js/7.js','248','162','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('8','1','下载频道首页','banner','poster_js/8.js','698','80','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('9','1','下载详情页地址列表右侧','banner','poster_js/12.js','330','50','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');
INSERT INTO `yp_poster_space` VALUES('10','1','首页关注下方广告','banner','poster_js/10.js','307','60','array (\n  \'paddleft\' => \'\',\n  \'paddtop\' => \'\',\n)','','1','0');

DROP TABLE IF EXISTS `yp_product`;
CREATE TABLE `yp_product` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `catid` smallint unsigned NOT NULL DEFAULT '0',
  `typeid` smallint unsigned NOT NULL,
  `title` char(80) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `style` char(24) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `thumb` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` char(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` char(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `posids` tinyint unsigned NOT NULL DEFAULT '0',
  `url` char(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `listorder` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `sysadd` tinyint unsigned NOT NULL DEFAULT '0',
  `islink` tinyint unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `inputtime` int unsigned NOT NULL DEFAULT '0',
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  `price` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `status` (`status`,`listorder`,`id`),
  KEY `listorder` (`catid`,`status`,`listorder`,`id`),
  KEY `catid` (`catid`,`status`,`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `yp_product_data`;
CREATE TABLE `yp_product_data` (
  `id` mediumint unsigned DEFAULT '0',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `readpoint` smallint unsigned NOT NULL DEFAULT '0',
  `groupids_view` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paginationtype` tinyint(1) NOT NULL,
  `maxcharperpage` mediumint NOT NULL,
  `template` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `paytype` tinyint unsigned NOT NULL DEFAULT '0',
  `allow_comment` tinyint unsigned NOT NULL DEFAULT '1',
  `relation` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `pics` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `yp_queue`;
CREATE TABLE `yp_queue` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` char(5) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `siteid` smallint unsigned DEFAULT '0',
  `path` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `status1` tinyint(1) DEFAULT '0',
  `status2` tinyint(1) DEFAULT '0',
  `status3` tinyint(1) DEFAULT '0',
  `status4` tinyint(1) DEFAULT '0',
  `times` int unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `siteid` (`siteid`),
  KEY `times` (`times`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_release_point`;
CREATE TABLE `yp_release_point` (
  `id` mediumint NOT NULL AUTO_INCREMENT,
  `name` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `host` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `username` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `password` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `port` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '21',
  `pasv` tinyint(1) DEFAULT '0',
  `ssl` tinyint(1) DEFAULT '0',
  `path` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_search`;
CREATE TABLE `yp_search` (
  `searchid` int unsigned NOT NULL AUTO_INCREMENT,
  `typeid` smallint unsigned NOT NULL DEFAULT '0',
  `id` mediumint unsigned NOT NULL DEFAULT '0',
  `adddate` int unsigned NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `siteid` smallint unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`searchid`),
  KEY `typeid` (`typeid`,`id`),
  KEY `siteid` (`siteid`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_search` VALUES('1','61','1','1700233858','精工制造，匠心独运  我们 决心 企业 案例 更多 带给 东风 互联网 坚定 更加 这些 服务 凝聚 战略合作 客户 制造 达成 著名 本地 多家 年间 成立 扎实 做到 力求','1');
INSERT INTO `yp_search` VALUES('2','61','2','1700233882','服务于各行业的中小企业  推广 项目 搭建 开发 建设 软件开发 洽谈 服务于 程序 售后服务 我们 拥有 完整 服务 流程 实施 公众 行业 中小企业 网络 成立 一直 致力于 主流 朋友 技术服务 包括 限于 网站建设 关键词','1');

DROP TABLE IF EXISTS `yp_search_keyword`;
CREATE TABLE `yp_search_keyword` (
  `keyword` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pinyin` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `searchnums` int unsigned NOT NULL,
  `data` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  UNIQUE KEY `keyword` (`keyword`),
  UNIQUE KEY `pinyin` (`pinyin`),
  FULLTEXT KEY `data` (`data`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_session`;
CREATE TABLE `yp_session` (
  `sessionid` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `lastvisit` int unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint unsigned DEFAULT '0',
  `groupid` tinyint unsigned NOT NULL DEFAULT '0',
  `m` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `c` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `a` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_session` VALUES('fn64d3o7g4vhpoo4icjg30c860','1','192.168.65.1','1701138895','1','0','admin','database','export','code|s:0:\"\";userid|s:1:\"1\";roleid|s:1:\"1\";pc_hash|s:6:\"bR1I1Y\";lock_screen|i:0;');

DROP TABLE IF EXISTS `yp_site`;
CREATE TABLE `yp_site` (
  `siteid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `name` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `dirname` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `domain` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `site_title` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `keywords` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `description` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `release_point` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `default_style` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `template` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `setting` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `uuid` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `company_cn` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `company_en` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `contact` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `qq` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `mobile` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `tel` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `email` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `address` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `mappoint` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `zipcode` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  `icp` varchar(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT '',
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_site` VALUES('1','云铺网络演示站','','http://phpcms.lc/','云铺网络演示站','云铺网络演示站','云铺网络演示站','','default','default','{\"upload_maxsize\":\"10240\",\"upload_allowext\":\"jpg|jpeg|gif|bmp|png|doc|docx|xls|xlsx|ppt|pptx|pdf|txt|rar|zip|swf|mp4\",\"watermark_enable\":\"0\",\"watermark_minwidth\":\"200\",\"watermark_minheight\":\"200\",\"watermark_img\":\"statics\\/images\\/water\\/\\/mark.png\",\"watermark_pct\":\"85\",\"watermark_quality\":\"80\",\"watermark_pos\":\"9\"}','e5ccf8d4-39d8-11e9-825c-00163e0493ee','云铺网络演示站','YUNPU','Shiki','10086','132-8888-8888','0514-82688686','admin@yzypwl.com','江苏省扬州市广陵区','119.470231,32.393748','225000','苏ICP备18XXXXXXX号');

DROP TABLE IF EXISTS `yp_sms_report`;
CREATE TABLE `yp_sms_report` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `mobile` varchar(11) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `posttime` int unsigned NOT NULL DEFAULT '0',
  `id_code` varchar(10) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `msg` varchar(90) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `send_userid` mediumint unsigned NOT NULL DEFAULT '0',
  `status` tinyint NOT NULL DEFAULT '0',
  `return_id` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ip` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `mobile` (`mobile`,`posttime`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_special`;
CREATE TABLE `yp_special` (
  `id` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `aid` int unsigned NOT NULL DEFAULT '0',
  `title` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `typeids` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `thumb` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `banner` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ishtml` tinyint unsigned NOT NULL DEFAULT '0',
  `ispage` tinyint unsigned NOT NULL,
  `filename` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `pics` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `voteid` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `style` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `index_template` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `list_template` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `show_template` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `css` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `username` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `createtime` int unsigned NOT NULL DEFAULT '0',
  `listorder` smallint unsigned NOT NULL,
  `elite` tinyint unsigned NOT NULL DEFAULT '0',
  `disabled` tinyint unsigned NOT NULL DEFAULT '0',
  `isvideo` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `disabled` (`disabled`,`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_special_c_data`;
CREATE TABLE `yp_special_c_data` (
  `id` mediumint unsigned NOT NULL DEFAULT '0',
  `author` varchar(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `content` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `paginationtype` tinyint unsigned NOT NULL DEFAULT '0',
  `maxcharperpage` mediumint unsigned NOT NULL DEFAULT '0',
  `style` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `show_template` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_special_content`;
CREATE TABLE `yp_special_content` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `specialid` smallint unsigned NOT NULL DEFAULT '0',
  `title` char(80) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `style` char(24) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `typeid` smallint unsigned NOT NULL DEFAULT '0',
  `thumb` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `keywords` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `curl` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` mediumint unsigned NOT NULL DEFAULT '0',
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `inputtime` int unsigned NOT NULL DEFAULT '0',
  `updatetime` int unsigned NOT NULL DEFAULT '0',
  `searchid` mediumint unsigned NOT NULL DEFAULT '0',
  `islink` tinyint unsigned NOT NULL DEFAULT '0',
  `isdata` tinyint unsigned NOT NULL DEFAULT '0',
  `videoid` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `specialid` (`specialid`,`typeid`,`isdata`),
  KEY `typeid` (`typeid`,`isdata`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_sphinx_counter`;
CREATE TABLE `yp_sphinx_counter` (
  `counter_id` int unsigned NOT NULL,
  `max_doc_id` int unsigned NOT NULL,
  PRIMARY KEY (`counter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_sso_admin`;
CREATE TABLE `yp_sso_admin` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `password` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `encrypt` char(6) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `issuper` tinyint(1) DEFAULT '0',
  `lastlogin` int DEFAULT NULL,
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_sso_admin` VALUES('1','super_user','849efbe7c9bbd0e6e206d99849e86ba4','3zLpjn','1','0','');

DROP TABLE IF EXISTS `yp_sso_applications`;
CREATE TABLE `yp_sso_applications` (
  `appid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `type` char(16) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `name` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `url` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `authkey` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `apifilename` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT 'phpsso.php',
  `charset` char(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `synlogin` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`appid`),
  KEY `synlogin` (`synlogin`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_sso_applications` VALUES('1','phpcms_v9','phpcms v9','http://yzhcft.gotoip11.com/','EZuUti1a9lHoG1OlgUd5eW4W5dl9LWS6','','api.php?op=phpsso','utf-8','1');

DROP TABLE IF EXISTS `yp_sso_members`;
CREATE TABLE `yp_sso_members` (
  `uid` int unsigned NOT NULL AUTO_INCREMENT,
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `password` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `random` char(8) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `email` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `regip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `regdate` int unsigned NOT NULL DEFAULT '0',
  `lastip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '0',
  `lastdate` int unsigned NOT NULL DEFAULT '0',
  `appname` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` enum('app','connect') CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `avatar` tinyint(1) NOT NULL DEFAULT '0',
  `ucuserid` mediumint unsigned DEFAULT '0',
  PRIMARY KEY (`uid`),
  UNIQUE KEY `username` (`username`),
  KEY `email` (`email`),
  KEY `ucuserid` (`ucuserid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_sso_members` VALUES('1','echoshiki','badeb1bee082acfa0dd47fc50e0aab8f','pieUzJ','admin@admin.com','114.230.133.193','1551194366','0','1551194366','phpcms v9','app','0','0');
INSERT INTO `yp_sso_members` VALUES('2','user','bc1fae823978322daee9b9f71ff7b496','BRBQ5Y','user@qq.com','49.71.101.118','1563630110','0','1563630110','phpcms v9','app','0','0');
INSERT INTO `yp_sso_members` VALUES('3','ccfmpejikhkw','93b06dc9be8c188118dc7bd2b3a48e02','vSA3Ay','lvdnmqkqg@jmbihl.com','111.6.79.73','1564223396','0','1564223396','phpcms v9','app','0','0');

DROP TABLE IF EXISTS `yp_sso_messagequeue`;
CREATE TABLE `yp_sso_messagequeue` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `operation` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `succeed` tinyint(1) NOT NULL DEFAULT '0',
  `totalnum` smallint unsigned NOT NULL DEFAULT '0',
  `noticedata` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `dateline` int unsigned NOT NULL DEFAULT '0',
  `appstatus` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `dateline` (`dateline`),
  KEY `succeed` (`succeed`,`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_sso_messagequeue` VALUES('1','member_add','0','1','{\"username\":\"echoshiki\",\"password\":\"badeb1bee082acfa0dd47fc50e0aab8f\",\"email\":\"admin@admin.com\",\"regip\":\"114.230.133.193\",\"regdate\":\"1551194366\",\"lastdate\":\"1551194366\",\"appname\":\"phpcms v9\",\"type\":\"app\",\"random\":\"pieUzJ\",\"ucuserid\":\"0\",\"uid\":\"1\",\"action\":\"member_add\"}','1551194366','{\"1\":1}');
INSERT INTO `yp_sso_messagequeue` VALUES('2','member_edit','0','1','{\"appname\":\"phpcms v9\",\"uid\":\"1\",\"action\":\"member_edit\"}','1551589901','{\"1\":1}');
INSERT INTO `yp_sso_messagequeue` VALUES('3','member_add','0','1','{\"username\":\"user\",\"password\":\"bc1fae823978322daee9b9f71ff7b496\",\"email\":\"user@qq.com\",\"regip\":\"49.71.101.118\",\"regdate\":\"1563630110\",\"lastdate\":\"1563630110\",\"appname\":\"phpcms v9\",\"type\":\"app\",\"random\":\"BRBQ5Y\",\"ucuserid\":\"0\",\"uid\":\"2\",\"action\":\"member_add\"}','1563630110','{\"1\":1}');
INSERT INTO `yp_sso_messagequeue` VALUES('4','member_add','0','1','{\"username\":\"ccfmpejikhkw\",\"password\":\"93b06dc9be8c188118dc7bd2b3a48e02\",\"email\":\"lvdnmqkqg@jmbihl.com\",\"regip\":\"111.6.79.73\",\"regdate\":\"1564223396\",\"lastdate\":\"1564223396\",\"appname\":\"phpcms v9\",\"type\":\"app\",\"random\":\"vSA3Ay\",\"ucuserid\":\"0\",\"uid\":\"3\",\"action\":\"member_add\"}','1564223396','{\"1\":1}');

DROP TABLE IF EXISTS `yp_sso_session`;
CREATE TABLE `yp_sso_session` (
  `sessionid` char(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `lastvisit` int unsigned NOT NULL DEFAULT '0',
  `roleid` tinyint unsigned DEFAULT '0',
  `groupid` tinyint unsigned NOT NULL DEFAULT '0',
  `m` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `c` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `a` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`sessionid`),
  KEY `lastvisit` (`lastvisit`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_sso_settings`;
CREATE TABLE `yp_sso_settings` (
  `name` varchar(32) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL DEFAULT '',
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_sso_settings` VALUES('denyemail','');
INSERT INTO `yp_sso_settings` VALUES('denyusername','');
INSERT INTO `yp_sso_settings` VALUES('creditrate','');
INSERT INTO `yp_sso_settings` VALUES('sp4','');
INSERT INTO `yp_sso_settings` VALUES('ucenter','');

DROP TABLE IF EXISTS `yp_tag`;
CREATE TABLE `yp_tag` (
  `id` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `tag` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `name` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `type` tinyint unsigned NOT NULL DEFAULT '0',
  `module` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `action` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `page` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `return` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `cache` mediumint unsigned NOT NULL DEFAULT '0',
  `num` smallint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_template_bak`;
CREATE TABLE `yp_template_bak` (
  `id` int NOT NULL AUTO_INCREMENT,
  `creat_at` int unsigned DEFAULT '0',
  `fileid` char(50) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `userid` mediumint DEFAULT NULL,
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `template` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  PRIMARY KEY (`id`),
  KEY `fileid` (`fileid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_times`;
CREATE TABLE `yp_times` (
  `username` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `logintime` int unsigned NOT NULL DEFAULT '0',
  `isadmin` tinyint(1) NOT NULL DEFAULT '0',
  `times` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`username`,`isadmin`)
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_times` VALUES('admin','192.168.65.1','1701091527','1','7');

DROP TABLE IF EXISTS `yp_type`;
CREATE TABLE `yp_type` (
  `typeid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `module` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `modelid` smallint unsigned NOT NULL DEFAULT '0',
  `name` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `parentid` smallint unsigned NOT NULL DEFAULT '0',
  `typedir` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `url` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `template` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`typeid`),
  KEY `module` (`module`,`parentid`,`siteid`,`listorder`)
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_type` VALUES('52','1','search','0','专题','0','special','','','4','专题');
INSERT INTO `yp_type` VALUES('61','1','search','22','其他','0','','','','0','');
INSERT INTO `yp_type` VALUES('60','1','search','21','图片模型','0','','','','0','');
INSERT INTO `yp_type` VALUES('59','1','search','20','新闻模型','0','','','','0','');
INSERT INTO `yp_type` VALUES('58','1','search','19','产品模型','0','','','','0','');

DROP TABLE IF EXISTS `yp_urlrule`;
CREATE TABLE `yp_urlrule` (
  `urlruleid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `module` varchar(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `file` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ishtml` tinyint unsigned NOT NULL DEFAULT '0',
  `urlrule` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `example` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  PRIMARY KEY (`urlruleid`)
) ENGINE=MyISAM AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_urlrule` VALUES('1','content','category','1','{$categorydir}{$catdir}/index.html|{$categorydir}{$catdir}/{$page}.html','news/china/1000.html');
INSERT INTO `yp_urlrule` VALUES('6','content','category','0','index.php?m=content&c=index&a=lists&catid={$catid}|index.php?m=content&c=index&a=lists&catid={$catid}&page={$page}','index.php?m=content&c=index&a=lists&catid=1&page=1');
INSERT INTO `yp_urlrule` VALUES('11','content','show','1','{$year}/{$catdir}_{$month}{$day}/{$id}.html|{$year}/{$catdir}_{$month}{$day}/{$id}_{$page}.html','2010/catdir_0720/1_2.html');
INSERT INTO `yp_urlrule` VALUES('12','content','show','1','{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}.html|{$categorydir}{$catdir}/{$year}/{$month}{$day}/{$id}_{$page}.html','it/product/2010/0720/1_2.html');
INSERT INTO `yp_urlrule` VALUES('16','content','show','0','index.php?m=content&c=index&a=show&catid={$catid}&id={$id}|index.php?m=content&c=index&a=show&catid={$catid}&id={$id}&page={$page}','index.php?m=content&c=index&a=show&catid=1&id=1');
INSERT INTO `yp_urlrule` VALUES('17','content','show','0','show-{$catid}-{$id}-{$page}.html','show-1-2-1.html');
INSERT INTO `yp_urlrule` VALUES('18','content','show','0','content-{$catid}-{$id}-{$page}.html','content-1-2-1.html');
INSERT INTO `yp_urlrule` VALUES('30','content','category','0','list-{$catid}-{$page}.html','list-1-1.html');

DROP TABLE IF EXISTS `yp_video_content`;
CREATE TABLE `yp_video_content` (
  `contentid` int unsigned NOT NULL DEFAULT '0',
  `modelid` smallint unsigned NOT NULL DEFAULT '0',
  `videoid` int unsigned NOT NULL DEFAULT '0',
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  KEY `videoid` (`videoid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_video_store`;
CREATE TABLE `yp_video_store` (
  `videoid` int unsigned NOT NULL AUTO_INCREMENT,
  `title` char(60) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `vid` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `keywords` char(40) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `status` tinyint NOT NULL DEFAULT '0',
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `addtime` int unsigned NOT NULL DEFAULT '0',
  `userid` mediumint unsigned NOT NULL DEFAULT '0',
  `picpath` char(120) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `size` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `timelen` mediumint NOT NULL DEFAULT '0',
  `userupload` tinyint(1) NOT NULL DEFAULT '0',
  `channelid` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`videoid`),
  KEY `videoid` (`videoid`,`status`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_vote_data`;
CREATE TABLE `yp_vote_data` (
  `userid` mediumint unsigned DEFAULT '0',
  `username` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `subjectid` mediumint unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `ip` char(15) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `data` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `userinfo` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  KEY `subjectid` (`subjectid`),
  KEY `userid` (`userid`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_vote_option`;
CREATE TABLE `yp_vote_option` (
  `optionid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned DEFAULT '0',
  `subjectid` mediumint unsigned NOT NULL DEFAULT '0',
  `option` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `image` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `listorder` tinyint unsigned DEFAULT '0',
  PRIMARY KEY (`optionid`),
  KEY `subjectid` (`subjectid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_vote_subject`;
CREATE TABLE `yp_vote_subject` (
  `subjectid` mediumint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned DEFAULT '0',
  `subject` char(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `ismultiple` tinyint unsigned NOT NULL DEFAULT '0',
  `ischeckbox` tinyint unsigned NOT NULL DEFAULT '0',
  `credit` smallint unsigned NOT NULL DEFAULT '0',
  `addtime` int unsigned NOT NULL DEFAULT '0',
  `fromdate` date NOT NULL DEFAULT '1000-01-01',
  `todate` date NOT NULL DEFAULT '1000-01-01',
  `interval` tinyint unsigned NOT NULL DEFAULT '0',
  `enabled` tinyint unsigned NOT NULL DEFAULT '1',
  `template` char(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `listorder` smallint unsigned NOT NULL DEFAULT '0',
  `allowguest` tinyint unsigned NOT NULL DEFAULT '1',
  `maxval` tinyint unsigned NOT NULL DEFAULT '0',
  `minval` tinyint unsigned NOT NULL DEFAULT '1',
  `allowview` tinyint unsigned NOT NULL DEFAULT '1',
  `optionnumber` tinyint unsigned NOT NULL DEFAULT '0',
  `votenumber` mediumint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`subjectid`),
  KEY `enabled` (`enabled`),
  KEY `fromdate` (`fromdate`,`todate`),
  KEY `todate` (`todate`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_wap`;
CREATE TABLE `yp_wap` (
  `siteid` smallint unsigned NOT NULL DEFAULT '1',
  `sitename` char(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `logo` char(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `domain` varchar(100) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin DEFAULT NULL,
  `setting` mediumtext CHARACTER SET utf8mb3 COLLATE utf8mb3_bin,
  `status` tinyint DEFAULT NULL,
  PRIMARY KEY (`siteid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_wap` VALUES('1','PHPCMS手机门户','/statics/images/wap/wlogo.gif','','array (\n  \'listnum\' => \'10\',\n  \'thumb_w\' => \'220\',\n  \'thumb_h\' => \'0\',\n  \'c_num\' => \'1000\',\n  \'index_template\' => \'index\',\n  \'category_template\' => \'category\',\n  \'list_template\' => \'list\',\n  \'show_template\' => \'show\',\n)','0');

DROP TABLE IF EXISTS `yp_wap_type`;
CREATE TABLE `yp_wap_type` (
  `typeid` smallint NOT NULL AUTO_INCREMENT,
  `cat` smallint NOT NULL,
  `parentid` smallint NOT NULL,
  `typename` varchar(30) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `siteid` smallint NOT NULL,
  `listorder` smallint DEFAULT '0',
  PRIMARY KEY (`typeid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;


DROP TABLE IF EXISTS `yp_workflow`;
CREATE TABLE `yp_workflow` (
  `workflowid` smallint unsigned NOT NULL AUTO_INCREMENT,
  `siteid` smallint unsigned NOT NULL DEFAULT '0',
  `steps` tinyint unsigned NOT NULL DEFAULT '1',
  `workname` varchar(20) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `setting` text CHARACTER SET utf8mb3 COLLATE utf8mb3_bin NOT NULL,
  `flag` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`workflowid`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_bin;

INSERT INTO `yp_workflow` VALUES('1','1','1','一级审核','审核一次','','0');
INSERT INTO `yp_workflow` VALUES('2','1','2','二级审核','审核两次','','0');
INSERT INTO `yp_workflow` VALUES('3','1','3','三级审核','审核三次','','0');
INSERT INTO `yp_workflow` VALUES('4','1','4','四级审核','四级审核','','0');

