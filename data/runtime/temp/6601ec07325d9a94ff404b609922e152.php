<?php if (!defined('THINK_PATH')) exit(); /*a:4:{s:37:"themes/index/portal\list_culture.html";i:1533616267;s:45:"E:\demo6\public\themes\index\public\base.html";i:1533621848;s:45:"E:\demo6\public\themes\index\public\head.html";i:1533613451;s:47:"E:\demo6\public\themes\index\public\header.html";i:1533612465;}*/ ?>
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

function __parse_navigation290b4ba3c10a421fa8a56c0bf9de4f60($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation290b4ba3c10a421fa8a56c0bf9de4f60';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
                <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
              
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation290b4ba3c10a421fa8a56c0bf9de4f60($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation290b4ba3c10a421fa8a56c0bf9de4f60($menus); ?>
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

function __parse_navigation46e62de90cb4eecfc7fdf1b1e03b8189($menus,$level=1){
$_parse_navigation_func_name = '__parse_navigation46e62de90cb4eecfc7fdf1b1e03b8189';
if(is_array($menus) || $menus instanceof \think\Collection || $menus instanceof \think\Paginator): if( count($menus)==0 ) : echo "" ;else: foreach($menus as $key=>$menu): if(empty($menu['children'])): ?>
    <li class="">
    
            <a <?php if(CATID == $menu['catid']) echo 'class="bg"';?> href="<?php echo (isset($menu['href']) && ($menu['href'] !== '')?$menu['href']:''); ?>" target="<?php echo (isset($menu['target']) && ($menu['target'] !== '')?$menu['target']:''); ?>"><?php echo (isset($menu['name']) && ($menu['name'] !== '')?$menu['name']:''); ?></a>
          
    </li>
<?php endif; endforeach; endif; else: echo "" ;endif; 
}
    $navMenuModel = new \app\admin\model\NavMenuModel();
    $menus = $navMenuModel->navMenusTreeArray('1',0);
if(''==''): ?>
    <?php echo __parse_navigation46e62de90cb4eecfc7fdf1b1e03b8189($menus); else: ?>
    < id="" class="nav navbar-nav">
        <?php echo __parse_navigation46e62de90cb4eecfc7fdf1b1e03b8189($menus); ?>
    </>
<?php endif; ?>

    </ul>
</div>

      
      <!-- banner 区域 -->
      
	<div class="banner2">
			<img src="<?php echo cmf_get_image_url($category['more']['thumbnail']); ?>">
			<img src="<?php echo cmf_get_image_url($category['more']['thumbnail']); ?>">
		</div>

      <!--content 内容区域  -->
      
        <div class="wh1">
            <img class="wh1_z1" src="/themes/index/public/assets/images/wh1_z1.png">
            <div class="js1_tit">
                <p>企业文化</p>
                <p>CORPORATE CULTURE</p>
            </div>
            <div class="wh1_ch">
                <div class="wh1_ch2">
                    <ul>
                        <li>
                            <span>仁</span>
                            <P>以人为本</P>
                        </li>
                        <li>
                            <span>义</span>
                            <P>坚持正义</P>
                        </li>
                        <li>
                            <span>礼</span>
                            <P>尊重他人</P>
                        </li>
                        <li>
                            <span>智</span>
                            <P>服务社会</P>
                        </li>
                        <li>
                            <span>信</span>
                            <P>信守承诺</P>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wh2">
            <img class="wh2_z1" src="/themes/index/public/assets/images/wh2_z1.png">
            <div class="js1_tit">
                <p>企业理念</p>
                <p>OUR CONCEPT</p>

            </div>
            <div class="wh2_ch">
                <div class="wh2_ch2">
                    <ul>
                        <li>诚信守信为基础</li>
                        <li>铸造精品为标准</li>
                        <li>用户满意为己任</li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wh3">
            <div class="js1_tit">
                <p>企业战略</p>
                <p>ENTERPRISE STRATEGY</p>
            </div>
            <div class="wh3_ch">
                <div class="wh3_ch2">
                    <ul>
											
												<?php if(is_array($theme_vars['zhanlue']) || $theme_vars['zhanlue'] instanceof \think\Collection || $theme_vars['zhanlue'] instanceof \think\Paginator): if( count($theme_vars['zhanlue'])==0 ) : echo "" ;else: foreach($theme_vars['zhanlue'] as $key=>$vo): endforeach; endif; else: echo "" ;endif; ?>
                        <li>
                            <span>定位</span>
                            <p>装配式一体化</br>360°服务平台</p>
                        </li>
                        <li>
                            <span>使命</span>
                            <p>聚焦服务体系</br>为建筑行业创造最大价值</p>
                        </li>
                        <li>
                            <span>愿景</span>
                            <p>用中国技术</br>做沟通世界的桥梁</p>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="wh4">
            <img src="/themes/index/public/assets/images/dt.png">
            <img src="/themes/index/public/assets/images/dt_b.png">
            <img class="wh4_z1" src="/themes/index/public/assets/images/wh4_z1.png">
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
