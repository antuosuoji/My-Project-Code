<?php
// +----------------------------------------------------------------------
// | ThinkCMF [ WE CAN DO IT MORE SIMPLE ]
// +----------------------------------------------------------------------
// | Copyright (c) 2013-2018 http://www.thinkcmf.com All rights reserved.
// +----------------------------------------------------------------------
// | Licensed ( http://www.apache.org/licenses/LICENSE-2.0 )
// +----------------------------------------------------------------------
// | Author: 老猫 <thinkcmf@126.com>
// +----------------------------------------------------------------------
namespace app\portal\controller;

use cmf\controller\AdminBaseController;
use think\Db;


class AdminMessageController extends AdminBaseController
{
 public function index()
 {
   $where=array();
   $list = Db::name('message')->where($where)->order("createtime DESC")->paginate(10);
   // 获取分页显示
   $page = $list->render();
   $this->assign('list', $list);
   $this->assign('page', $page);
   return $this->fetch();
 }
 // 删除
 public function delete()
 {
   $id=$this->request->param('id');
   Db::name('message')->where(['id'=>$id])->delete();
   $this->success('已删除');
 }



}


?>
