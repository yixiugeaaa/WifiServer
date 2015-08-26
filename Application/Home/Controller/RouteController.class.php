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
        echo "pong";
    }
}