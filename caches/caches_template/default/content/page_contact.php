<?php defined('IN_PHPCMS') or exit('No permission resources.'); ?><?php include template("content","header"); ?>    

<div class="mod page">
    <div class="rom">
        
        <?php include template("content","left"); ?> 

        <!-- 标题 & 面包屑 -->
        <div class="right-col right">
            
            <?php include template("content","bread"); ?>

            <div class="contact">
                <div class="content-info"><?php echo $content;?></div>
                <fieldset class="layui-elem-field map-info">
                    <legend>地图位置</legend>
                    <div class="layui-field-box">      
                        <html>
                            <head>
                                <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
                                <meta name="viewport" content="initial-scale=1.0, user-scalable=no" />
                                <style type="text/css">
                                    body, html{ width: 100%; height: 100%; margin: 0px; }
                                    #l-map{ height: 100%; width: 100%; }
                                    #r-result{ width: 100%; }
                                </style>
                                <script type="text/javascript" src="http://api.map.baidu.com/api?v=2.0&ak=kXuuknLiqndyb2hxtV51OZtaNBeMANkM"></script>
                                <title>本地搜索的结果面板</title>
                            </head>
                            <body>
                                <div id="l-map"></div>
                                <div id="r-result"></div>
                            </body>
                        </html>
                        <script type="text/javascript">
                            // 百度地图API功能
                            var map = new BMap.Map("l-map");            // 创建Map实例
                            map.centerAndZoom(new BMap.Point(<?php echo $sitelist[1]['mappoint']; ?>), 16);
                            var marker = new BMap.Marker(new BMap.Point(<?php echo $sitelist[1]['mappoint']; ?>)); // 创建标注
                        　　map.addOverlay(marker); // 将标注添加到地图中
                            map.addControl(new BMap.MapTypeControl());   //添加地图类型控件
                            map.setCurrentCity("扬州");          // 设置地图显示的城市 此项是必须设置的
                            map.enableScrollWheelZoom(true);
                        </script>
                    </div>
                </fieldset>
            </div>
        </div>
        
        <div class="clear"></div>

    </div>
</div>

<?php include template("content","footer"); ?>