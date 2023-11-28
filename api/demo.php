<?php
// 
    defined('IN_PHPCMS') or exit('No permission resources.'); 

    if ($_GET['catid'] && $_GET['page']) {
        
        $catid = intval($_GET['catid']); //用来接收请求的栏目id
        $page = intval($_GET['page']); //用来接收获取数量
    
        $modelid = 20;
        $db = pc_base::load_model('content_model');
        $db->set_model($modelid);

        $arr = $db->listinfo(array('catid' => $catid),'id', $page, 2);
        $r = json_encode($arr);
        echo $_GET['jsoncallback'] . "(".$r.")";

    } 


?>