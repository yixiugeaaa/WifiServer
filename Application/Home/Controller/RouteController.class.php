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
        //var_dump($list);
        $this->assign('list',$list);
        $this->show();
    }

    public function update(){
        $Command=M("Command");
        $mac_array=I('post.mac');
        foreach ($mac_array as $mac) {
            $data['mac']=$mac;
            $data['finish']=0;
            switch(I('post.sub')){
                case '磁盘使用率':
                    $data['cmd']='Df';
                    break;
                case '重启':
                    $data['cmd']='Reboot';
                    break;
                case '清理磁盘':
                    $data['cmd']='Clean';
                    break;
                case '修改ssid':
                    $data['cmd']='Ssid='.I('post.ssid');
                    $Route=M('Route');
                    $Route->ssid=I('post.ssid');
                    $Route->where('mac="'.$mac.'"')->save();
                    break;
                case '固件升级':
                    break;
                case '内容升级':
                    break;
                default:
                    break;
            }
            $Command->add($data);
        }
        $this->success('操作成功');
    }
}