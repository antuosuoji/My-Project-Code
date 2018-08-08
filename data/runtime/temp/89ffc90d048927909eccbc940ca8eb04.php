<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:37:"themes/index/portal\article_news.html";i:1533695638;s:45:"E:\demo6\public\themes\index\public\base.html";i:1533621848;s:45:"E:\demo6\public\themes\index\public\head.html";i:1533613451;s:47:"E:\demo6\public\themes\index\public\header.html";i:1533612465;}*/ ?>
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

function __parse_navigationd803e1232c6ef7af7c25d81179d774a7($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigationd803e1232c6ef7af7c25d81179d774a7';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
                <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
              
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigationd803e1232c6ef7af7c25d81179d774a7($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigationd803e1232c6ef7af7c25d81179d774a7($menus); ?>
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

function __parse_navigation95ac0b0377986107e168a3b76d3e397c($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation95ac0b0377986107e168a3b76d3e397c';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
            <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
          
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation95ac0b0377986107e168a3b76d3e397c($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation95ac0b0377986107e168a3b76d3e397c($menus); ?>
    </>
<?php endif; ?>

    </ul>
</div>

      
      <!-- banner 区域 -->
      
	<div class="new1">
			THE NEWS
	</div>

      <!--content 内容区域  -->
      
	<div class="new2">
			<div class="new2_ch">
					<div class="mbx">
							<p><a href="/">首页</a><span> > </span></p>
							<?php
if(!empty($category['id'])){
    $__BREADCRUMB_ITEMS__ = \app\portal\service\ApiService::breadcrumb($category['id'],true);
if(is_array($__BREADCRUMB_ITEMS__) || $__BREADCRUMB_ITEMS__ instanceof \think\Collection || $__BREADCRUMB_ITEMS__ instanceof \think\Paginator): $i = 0; $__LIST__ = $__BREADCRUMB_ITEMS__;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>
    
							<p><a href="<?php echo cmf_url('portal/List/index',['id'=>$vo['id']]); ?>"><?php echo $vo['name']; ?></a><span> > </span></p>
							
<?php endforeach; endif; else: echo "" ;endif; }
?>
							<p><?php echo $article['post_title']; ?></p>
					</div>
					<div class="new_tit"><?php echo $article['post_title']; ?></div>
					<div class="zzsj">
							<span>作者：<?php echo !empty($article['post_source'])?$article['post_source'] : '世纪盛和'; ?></span>
							<span>发布时间：<?php echo date("Y-m-d",$article['published_time']); ?></span>
					</div>
					<div class="new_text">
						    <?php echo $article['post_content']; ?>
					</div>
			</div>
	</div>
	<div class="new3">
			<div class="new3_ch">
					<div class="cnxh">猜你喜欢</div>
					<div class="swiper-container">
							<div class="swiper-wrapper">
								<?php
$articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => "",
    'limit'   => '20',
    'order'   => 'post.post_hits DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>'1'
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

									<div class="swiper-slide">
											<a class="cnxh_img" style="background: url(<?php echo cmf_get_image_url($vo['thumbnail']); ?>) 50% no-repeat;" href="<?php echo cmf_url('portal/Article/index',array('id'=>$vo['id'],'cid'=>$vo['category_id'])); ?>"></a>
											<a class="cnxh_tit" href="<?php echo cmf_url('portal/Article/index',array('id'=>$vo['id'],'cid'=>$vo['category_id'])); ?>"><?php echo $vo['post_title']; ?></a>
											<p class="cnxh_text"><?php echo $vo['post_excerpt']; ?></p>
									</div>
								
<?php endforeach; endif; else: echo "" ;endif; ?>

							</div>
							<div style="display: none;" class="swiper-pagination"></div>
							<div style="display: none;" class="swiper-button-next"></div>
							<div style="display: none;" class="swiper-button-prev"></div>
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
