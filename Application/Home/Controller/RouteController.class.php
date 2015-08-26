<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/26
 * Time: 下午6:16
 */
namespace Home\Controller;

use Think\Controller;

class RouteController extends Controller
{
    public function index(){
        $Route=D('Route');
        $list=$Route->relation(true)->select();
        var_dump($list);
        $this->assign('list',$list);
        $this->show();
    }

    public function update(){
        $Command=M("Command");
        switch(I('post.sub')){
            case '磁盘使用率':
                $data['cmd']='Df';
                $data['mac']=I('post.mac');
                $data['finish']=0;
                $Command->add($data);
                $this->success('操作成功');
                break;
            default:
                break;
        }
    }

    public function edit($id,$mac){
        $this->assign('id',$id);
        $this->assign('mac',$mac);
        $this->display();
    }
}