<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:35:"themes/index/portal\list_about.html";i:1533610968;s:45:"E:\demo6\public\themes\index\public\base.html";i:1533621848;s:45:"E:\demo6\public\themes\index\public\head.html";i:1533613451;s:47:"E:\demo6\public\themes\index\public\header.html";i:1533612465;}*/ ?>
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

function __parse_navigation417e63bc531ef5188d5cab2496af8867($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation417e63bc531ef5188d5cab2496af8867';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
                <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
              
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation417e63bc531ef5188d5cab2496af8867($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation417e63bc531ef5188d5cab2496af8867($menus); ?>
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

function __parse_navigation189060f9b36dd5a9bed2ad967d755594($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation189060f9b36dd5a9bed2ad967d755594';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
            <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
          
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation189060f9b36dd5a9bed2ad967d755594($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation189060f9b36dd5a9bed2ad967d755594($menus); ?>
    </>
<?php endif; ?>

    </ul>
</div>

      
      <!-- banner 区域 -->
      
	<div class="banner">
	  <div class="swiper-container">
	          <div class="swiper-wrapper">
	                <?php
     $__SLIDE_ITEMS__ = \app\admin\service\ApiService::slides(2);
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
      
        <div class="ab1">
            <img class="ab1_bei" src="/themes/index/public/assets/images/ab1_bei.png">
            <div class="ab1_ch">
                <div class="ab1_tit">
                    <p><?php echo get_cat_info(12)['name']; ?></p>
                    <p>STEEL STRUCTURE</p>
                </div>
                <div class="ab1_text"><?php echo get_cat_info(12)['description']; ?></div>
                <ul class="ab1_ul">
									<?php
$articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => "",
    'limit'   => '4',
    'order'   => 'post.published_time DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>'12'
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

										<li><img src="<?php echo cmf_get_image_url($vo['thumbnail']); ?>"></li>
									
<?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>

        <div class="ab2">
            <img class="ab2_z2" src="/themes/index/public/assets/images/ab2_z2.png">
            <img class="ab2_z1" src="/themes/index/public/assets/images/ab2_z1.png">
            <div class="ab2_ch">
                <div class="ab1_tit ab2_tit">
                    <p>SIX 钢结构装配结构特征</p>
                    <p>CHARACTERISTICS</p>
                </div>
                <ul class="ab2_ul">
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/ab2_1.png) 50% no-repeat;background-size: 100%"></span><span>集成化设计</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/ab2_1.png) 50% no-repeat;background-size: 100%"></span><span>一体化装修</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/ab2_1.png) 50% no-repeat;background-size: 100%"></span><span>工业化生产</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/ab2_1.png) 50% no-repeat;background-size: 100%"></span><span>智能化应用</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/ab2_1.png) 50% no-repeat;background-size: 100%"></span><span>装配式施工</span>
                    </li>
                    <li>
                        <span style="background: url(/themes/index/public/assets/images/ab2_1.png) 50% no-repeat;background-size: 100%"></span><span>信息化管理</span>
                    </li>
                </ul>
            </div>
        </div>

        <div class="ab3">
            <div class="ab3_ch">
                <div class="ab3_tit">
                    <p>研发专利</p>
                    <p></p>
                </div>
                <div class="swiper-container">
                    <div class="swiper-wrapper">
											<?php
$articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => "",
    'limit'   => '400',
    'order'   => 'post.published_time DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>'13'
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

                        <div class="swiper-slide" style="background: url(<?php echo cmf_get_image_url($vo['thumbnail']); ?>) 50% no-repeat;"></div>
                      
<?php endforeach; endif; else: echo "" ;endif; ?>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </div>

        <div class="ab4">
            <img class="ab4_z1" src="/themes/index/public/assets/images/ab4_z1.png">
            <img class="ab4_z2" src="/themes/index/public/assets/images/ab4_z2.png">
            <div class="ab4_ch">
                <div class="ab3_tit ab4_tit">
                    <p>业务范围</p>
                    <p></p>
                </div>
                <div class="ab4_text">世纪盛和开发项目以国家政策为导向坚持“精准扶贫、产业脱贫”的工作思路,帮助二三线城市经济发展</div>
                <div class="ab4_bei">
                    <img src="/themes/index/public/assets/images/dt_yw.png">
                </div>
            </div>
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
