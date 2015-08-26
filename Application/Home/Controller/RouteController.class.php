<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/26
 * Time: 上午10:04
 */
namespace Home\Controller;

use Think\Controller;

class RouteController extends Controller{
    public function ping(){
        $this->output("pong");
    }

    public function index(){

    }

    /**
     * 格式化输出
     * @param $str 要输出的字符串
     */
    private function output($str){
        echo "--$str";
    }
}