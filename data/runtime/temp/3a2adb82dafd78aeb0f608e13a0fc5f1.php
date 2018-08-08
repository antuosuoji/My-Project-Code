<?php if (!defined('THINK_PATH')) exit(); /*a:5:{s:31:"themes/index/portal\\index.html";i:1533527143;s:45:"E:\demo6\public\themes\index\public\base.html";i:1533621848;s:45:"E:\demo6\public\themes\index\public\head.html";i:1533613451;s:47:"E:\demo6\public\themes\index\public\header.html";i:1533612465;s:47:"E:\demo6\public\themes\index\public\banner.html";i:1533527896;}*/ ?>
<!DOCTYPE html>
<html>

  <head>
  
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title><?php echo (isset($category['seo_title']) && ($category['seo_title'] !== '')?$category['seo_title']:$site_info['site_name']); ?></title>
  <meta name="keywords" content="<?php echo (isset($category['seo_keywords']) && ($category['seo_keywords'] !== '')?$category['seo_keywords']:$site_info['site_seo_keywords']); ?>">
  <meta name="description" content="<?php echo (isset($category['seo_description']) && ($category['seo_description'] !== '')?$category['seo_description']:$site_info['site_seo_description']); ?>"/>
  <link rel="stylesheet" type="text/css" href="/themes/index/public/assets/css/default/swiper.min.css">
  <link rel="stylesheet" type="text/css" href="/themes/index/public/assets/css/default/index.css">
  <link rel="stylesheet" type="text/css" href="/themes/index/public/assets/css/default/page.css">
      <link rel="stylesheet" type="text/css" href="/themes/index/public/assets/css/default/media.css">
  <script type="text/javascript" src="/themes/index/public/assets/js/default/jquery.min.js"></script>
  <script type="text/javascript" src="/themes/index/public/assets/js/default/swiper.min.js"></script>
  <script type="text/javascript" src="/themes/index/public/assets/js/default/index.js"></script>
  <script type="text/javascript">
      //全局变量
      var GV = {
          ROOT: "/",
          WEB_ROOT: "/",
          JS_ROOT: "static/js/"
      };
  </script>
  <script src="/static/js/wind.js"></script>
</head>


    <body>
      <!-- 头部  导航 -->
      
        <div class="header">
    <div class="header_ch">
        <a class="logo" href="/"></a>
        <?php 
          if(isset($category))
          define('CATID',$category['id']);
          else
           define('CATID',0);
         ?>
        <ul class="nav">
          <?php

function __parse_navigation344c973f6210ae03e71881c841a1439d($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation344c973f6210ae03e71881c841a1439d';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
                <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
              
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation344c973f6210ae03e71881c841a1439d($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation344c973f6210ae03e71881c841a1439d($menus); ?>
    </>
<?php endif; ?>

        </ul>
    </div>
</div>
<div class="header_m">
    <a class="logo_m" href="/"></a>
    <div class="nav_h">
        <span class="heng1"></span>
        <span class="heng2"></span>
        <span class="heng3"></span>
    </div>
    <a class="phone_top_m" href="tel:400-8888-888"></a>

    <ul class="nav_ul">
      <?php

function __parse_navigationa2ba03c4591aa972f031553ff1ff5d35($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigationa2ba03c4591aa972f031553ff1ff5d35';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
            <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
          
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigationa2ba03c4591aa972f031553ff1ff5d35($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigationa2ba03c4591aa972f031553ff1ff5d35($menus); ?>
    </>
<?php endif; ?>

    </ul>
</div>

      
      <!-- banner 区域 -->
      
        <div class="banner">
  <div class="swiper-container">
          <div class="swiper-wrapper">
                <?php
     $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides(1);
if(is_array($__SLIDE_ITEMS__) || $__SLIDE_ITEMS__ instanceof \think\Collection || $__SLIDE_ITEMS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__SLIDE_ITEMS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                    <div class="swiper-slide"><a href="<?php echo $vo['url']; ?>" target="_blank"><img src="<?php echo cmf_get_image_url($vo['image']); ?>"><img src="<?php echo cmf_get_image_url($vo['image']); ?>"></a></div>
                
<?php endforeach; endif; else: echo "" ;endif; ?>
          </div>
          <div class="swiper-pagination"></div>
          <div class="swiper-button-next"></div>
          <div class="swiper-button-prev"></div>
      </div>
</div>

      
      <!--content 内容区域  -->
      
        <div class="in1">
            <img class="in1_bei" src="/themes/index/public/assets/images/in1_bei.png">
            <div class="in1_ch">
                <div class="index_title">
                    <p><a style="color: #000;" href="<?php echo cmf_url('portal/List/index',array('id'=>1)); ?>">最新动态</a></p>
                    <p></p>
                </div>
                <ul class="in1_ul">
                  <?php $where=['post.recommended'=>['=',1]]; $articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => $where,
    'limit'   => '3',
    'order'   => 'post.published_time DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>'1'
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                    <li>
                        <a href="<?php echo cmf_url('portal/Article/index',array('id'=>$vo['id'],'cid'=>$vo['category_id'])); ?>">
                            <img src="<?php echo cmf_get_image_url($vo['thumbrecomm']); ?>">
                            <div><span><?php echo $vo['post_title']; ?></span></div>
                        </a>
                    </li>
                  
<?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>

        <div class="in2">
            <div class="in2_ch">
                <ul>
                  <?php
$articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => "",
    'limit'   => '3',
    'order'   => 'post.published_time DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>'2'
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                    <li>
                      <a >
                        <div class="in2_fl">
                            <span></span>
                            <div class="in2_tit">
                                <p><?php echo $vo['post_title']; ?></p>
                                <p></p>
                                <p><?php echo $vo['post_title_en']; ?> </p>
                            </div>
                        </div>
                        <div class="in2_fr" style="background: url(<?php echo cmf_get_image_url($vo['thumbnail']); ?>) 50% no-repeat;">
                            <P>总体鸟瞰图</P>
                            <div class="in2_fr_text">
                                <div>
                                  <?php echo strip_tags($vo['post_content']); ?>
                                </div>
                            </div>
                        </div>
                    </a>
                  </li>
		              
<?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>

        <div class="in3">
            <div class="in3_ch">
                <div class="index_title">
                    <p>平台服务</p>
                    <p></p>
                </div>
                <ul>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/in3_biao.png) no-repeat;background-size: 100%;"></span>
                        <span>材料备输</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/in3_biao.png) no-repeat;background-size: 100%;"></span>
                        <span>规划设计</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/in3_biao.png) no-repeat;background-size: 100%;"></span>
                        <span>建设施工</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/in3_biao.png) no-repeat;background-size: 100%;"></span>
                        <span>产业运营</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/in3_biao.png) no-repeat;background-size: 100%;"></span>
                        <span>材料准备</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/in3_biao.png) no-repeat;background-size: 100%;"></span>
                        <span>营销推广</span>
                    </li>
                </ul>
            </div>
            <img class="in3_bei" src="/themes/index/public/assets/images/in3_bei.png">
        </div>
      
      <!--footer 底部  -->
      
        <div class="footer">
            <div class="footer_ch">
                <form class="js-ajax-form" action="<?php echo url('portal/article/postmessage'); ?>" method="post">
                    <div>
                        <input type="text" name="email" placeholder="邮箱">
                        <input type="text" name="tel" placeholder="电话">
                    </div>
                    <div><textarea name="message" placeholder="留言"></textarea></div>
                    <div class="tjbd">
                        <button class="btn btn-primary btn-block js-ajax-submit" type="submit">提交</button>
                    </div>
                </form>
                <div class="ft_lxfs">
                    <div class="ft_lxfs_ch ft_lxfs_fl">
                        <div>客服服务</div>
                        <div>
                            <p>邮箱：<?php echo cmf_get_option('server_settings')['k_email']; ?></p>
                            <a href="40009092091">电话：<?php echo cmf_get_option('server_settings')['k_tel']; ?></a>
                        </div>
                    </div>
                    <div class="ft_lxfs_ch ft_lxfs_fr">
                        <div>渠道合作</div>
                        <div>
                            <p>邮箱：<?php echo cmf_get_option('server_settings')['q_email']; ?></p>
                            <a href="13020092039">电话：<?php echo cmf_get_option('server_settings')['q_tel']; ?></a>
                        </div>
                    </div>
                </div>
                <div class="beian">2018，Shijishenghe Security Response Center,Inc. All Right Reserved. 免责声明</div>
            </div>
        </div>
        <script src="/static/js/admin.js"></script>
      
    </body>
</html>
