<?php
namespace app\api\controller;
use cmf\controller\HomeBaseController;
use qq\ErrorCase;
use qq\QC;
use qq\Recorder;
use qq\URL;
use qq\Oauth;
use think\Db;
use think\Request;
/**
 * 登录类，qq登录
 */
class LoginController extends HomeBaseController
{
   public function __construct()
   {
     require_once('../simplewind/vendor/qq/ErrorCase.class.php');
     require_once('../simplewind/vendor/qq/Oauth.class.php');
     require_once('../simplewind/vendor/qq/QC.class.php');
     require_once('../simplewind/vendor/qq/Recorder.class.php');
     require_once('../simplewind/vendor/qq/URL.class.php');
   }
   public function index(Request $request)
   {

     $redirect = $request->post("redirect");
     if (empty($redirect)) {
         $redirect = $request->server('HTTP_REFERER');
     } else {
         $redirect = base64_decode($redirect);
     }
     session('login_http_referer', $redirect);

     $qc=new QC();
     $qc->qq_login();
   }
   public function connect()
   {
     $qc =new QC();
     // 获取token
     $acs = $qc->qq_callback();
     $openid = $qc->get_openid();
     $qc = new QC($acs,$openid);
     $arr = $qc->get_user_info();
     $user=['openid'=>$openid,'nickname'=>$arr['nickname'],'sex'=>$arr['gender'],'province'=>$arr['province'],'city'=>$arr['city'],'avatar'=>$arr['figureurl_qq_1']];
    // 存储
    $log=$this->registerOauth($user);
    $session_login_http_referer = session('login_http_referer');
    $redirect                   = empty($session_login_http_referer) ? '/' : $session_login_http_referer;
    if($log == 0)
    {
      $this->redirect($redirect);
    }
    return;
   }
   public function registerOauth($user)
   {
     $openid=$user['openid'];
     $result=Db::name("third_party_user")->where('openid', $openid)->find();
     // 如果没有登录过
     if(!$result)
     {

       $data   = [
           'user_login'      => 'op_'.$this->GetGuid(),
           'user_email'      => '',
           'mobile'          => '',
           'user_nickname'   => $user['nickname'],
           'avatar'          => $user['avatar'],
           'sex'             => $user['sex'],
           'user_pass'       => cmf_password($this->GetGuid()),
           'last_login_ip'   => get_client_ip(0, true),
           'create_time'     => time(),
           'last_login_time' => time(),
           'user_status'     => 1,
           "user_type"       => 2,//会员
       ];
       $userId = Db::name("user")->insertGetId($data);
       $data   = Db::name("user")->where('id', $userId)->find();
       $userdata   = [
           'user_id'         => $userId,
           'openid'          => $openid,
           'third_party'     => "qq",
           'union_id'        => "WX",
           'last_login_ip'   =>  get_client_ip(0, true),
           'create_time'     => time(),
           'last_login_time' => time(),
       ];
       $partyuserId = Db::name("third_party_user")->insertGetId($userdata);
       cmf_update_current_user($data);
       return 0;
     }else
     {
         $data   = Db::name("user")->where('id', $result['user_id'])->find();
         // 更新登录信息
         $data_u = [
             'last_login_time' => time(),
             'last_login_ip'   => get_client_ip(0, true),
         ];
         Db::name('user')->where('id', $data["id"])->update($data_u);//更新登录时间
         Db::name('third_party_user')->where('user_id', $data["id"])->setInc('login_times',1);//更新登录次数
         cmf_update_current_user($data);//更新前台用户登录信息
         return 0;
     }
   }
   function GetGuid() {
       $s = str_replace('.', '', trim(uniqid('yt', true), 'yt'));
       return $s;
   }
}


?>
