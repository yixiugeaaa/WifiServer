<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/18
 * Time: 下午9:52
 */
namespace Home\Controller;

use Think\Controller;

class BusController extends Controller
{
    public function insert(){
        $bus=D('Bus');
        if($bus->create()){
            $result=$bus->add();
            if($result){
                return json_encode($result);
            }else{
                return json_encode('false');
            }
        }
    }

    public function add(){
        $this->display();
    }
}