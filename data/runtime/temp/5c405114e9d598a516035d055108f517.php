<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:34:"themes/index/portal\list_tech.html";i:1533625063;s:45:"E:\demo6\public\themes\index\public\base.html";i:1533621848;s:45:"E:\demo6\public\themes\index\public\head.html";i:1533613451;s:47:"E:\demo6\public\themes\index\public\header.html";i:1533612465;}*/ ?>
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

function __parse_navigationc05dbaefd5aa87be5bcf60e656eb758c($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigationc05dbaefd5aa87be5bcf60e656eb758c';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
                <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
              
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigationc05dbaefd5aa87be5bcf60e656eb758c($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigationc05dbaefd5aa87be5bcf60e656eb758c($menus); ?>
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

function __parse_navigation6ab93b9d48d88173d54bace5b9592b6c($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation6ab93b9d48d88173d54bace5b9592b6c';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
            <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
          
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation6ab93b9d48d88173d54bace5b9592b6c($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation6ab93b9d48d88173d54bace5b9592b6c($menus); ?>
    </>
<?php endif; ?>

    </ul>
</div>

      
      <!-- banner 区域 -->
      
	<div class="banner2 banner3">
			<img src="<?php echo cmf_get_image_url($category['more']['thumbnail']); ?>">
			<img src="/themes/index/public/assets/images/banner4m.png">
			<div class="banner3_ch">
					<ul>
							<li class="shuzi1_bg">
									<div id="shuzi1"></div>
									<i class="jia"></i>
									<p>钢材服务</p>
							</li>
							<li class="shuzi2_bg">
									<div id="shuzi2"></div>
									<i class="jia bai">%</i>
									<i class="jia"></i>
									<p>2017业务环比增长</p>
							</li>
							<li class="shuzi3_bg">
									<div id="shuzi3"></div>
									<i class="jia"></i>
									<p>权威认证</p>
							</li>
							<li class="shuzi4_bg">
									<div id="shuzi4"></div>
									<i class="jia"></i>
									<p>权威认证</p>
							</li>
					</ul>
			</div>
		</div>
		<script type="text/javascript" src="/themes/index/public/assets/js/default/shuzi.js"></script>
		<script type="text/javascript">
		/*数字跳转*/
		$(function(){
			$("#shuzi1").rollNum({
				deVal:1200
			});
			$("#shuzi2").rollNum({
				deVal:500
			});
			$("#shuzi3").rollNum({
				deVal:100
			});
			$("#shuzi4").rollNum({
				deVal:9000
			});
		});
	</script>

      <!--content 内容区域  -->
      
        <div class="js1">
            <img class="js1_z1" src="/themes/index/public/assets/images/js1_z1.png">
            <img class="js1_z2" src="/themes/index/public/assets/images/js1_z2.png">
            <div class="js1_ch">
                <div class="js1_tit">
                  <p>产品线</p>
                  <p>PRODUCT</p>
                </div>
                <ul>
										<?php
$articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => "",
    'limit'   => '2',
    'order'   => 'post.published_time DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>'5'
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

	                    <li>
	                        <div class="js1_fl">
	                            <p>0<?php echo $key+1; ?></p>
	                            <p></p>
	                            <P><?php echo $vo['post_title']; ?></P>
	                            <div class="js1_text"><?php echo strip_tags($vo['post_content']); ?></div>
	                        </div>
	                        <div class="js1_fr">
	                            <div class="swiper-container">
	                                <div class="swiper-wrapper">
																		<?php if(is_array($vo['more']['photos']) || $vo['more']['photos'] instanceof \think\Collection || $vo['more']['photos'] instanceof \think\Paginator): if( count($vo['more']['photos'])==0 ) : echo "" ;else: foreach($vo['more']['photos'] as $key=>$vv): ?>
																			<div class="swiper-slide" style="background: url(<?php echo cmf_get_image_url($vv['url']); ?>) 50% no-repeat;"></div>
																		<?php endforeach; endif; else: echo "" ;endif; ?>
	                                </div>
	                                <div class="swiper-pagination"></div>
	                            </div>
	                        </div>
	                    </li>
										
<?php endforeach; endif; else: echo "" ;endif; ?>
                </ul>
            </div>
        </div>
        <div class="js2">
          <img class="js2_bei" src="/themes/index/public/assets/images/in3_bei.png">
          <div class="js2_ch">
            <div class="js1_tit">
              <p>产品优势</p>
              <p>PRODUCT</p>
            </div>
            <ul class="js2_tab1">
							<?php
$portal_sub_categories_data = \app\portal\service\ApiService::subCategories(6);
 
 if(is_array($portal_sub_categories_data) || $portal_sub_categories_data instanceof \think\Collection || $portal_sub_categories_data instanceof \think\Paginator): $i = 0; $__LIST__ = $portal_sub_categories_data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

									  <li <?php if($key == 0):?>class="bg" <?php endif;?>><?php echo $vo['name']; ?></li>
							
<?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
            <ul class="js2_tab2">
								<?php
$portal_sub_categories_data = \app\portal\service\ApiService::subCategories(6);
 
 if(is_array($portal_sub_categories_data) || $portal_sub_categories_data instanceof \think\Collection || $portal_sub_categories_data instanceof \think\Paginator): $i = 0; $__LIST__ = $portal_sub_categories_data;if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vo): $mod = ($i % 2 );++$i;?>

		              <li <?php if($key == 0):?>class="bg" <?php endif;?>>
		                <div class="js2_img" style="background: url(<?php echo cmf_get_image_url($vo['more']['thumbnail']); ?>) 50% no-repeat;background-size: 60%;"></div>
		                <div class="js2_fr">
											<?php
$articles_data = \app\portal\service\ApiService::articles([
    'field'   => '',
    'where'   => "",
    'limit'   => '5',
    'order'   => 'post.published_time DESC',
    'page'    => '',
    'relation'=> '',
    'category_ids'=>$vo['id']
]);

$__PAGE_VAR_NAME__ = isset($articles_data['page'])?$articles_data['page']:'';

 if(is_array($articles_data['articles']) || $articles_data['articles'] instanceof \think\Collection || $articles_data['articles'] instanceof \think\Paginator): $i = 0; $__LIST__ = $articles_data['articles'];if( count($__LIST__)==0 ) : echo "" ;else: foreach($__LIST__ as $key=>$vv): $mod = ($i % 2 );++$i;?>

					                  <div class="js2_fr_li">
					                    <span class="js2_icon" style="background: url(/themes/index/public/assets/images/js2_icon1.png) 50% no-repeat;background-size: 100%;"></span>
					                    <div class="js2_ms_fr">
					                      <p><?php echo $vv['post_title']; ?></p>
					                      <p><?php echo $vv['post_content']; ?></p>
					                    </div>
					                  </div>
												
<?php endforeach; endif; else: echo "" ;endif; ?>
		                </div>
		              </li>
									
<?php endforeach; endif; else: echo "" ;endif; ?>
            </ul>
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
