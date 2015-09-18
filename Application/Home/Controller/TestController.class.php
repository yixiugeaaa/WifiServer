<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/18
 * Time: 下午9:52
 */
namespace Home\Controller;

use Think\Controller;

class TestController extends Controller
{
    public function index(){
        $ip = $_SERVER["REMOTE_ADDR"];
        echo 'ip:'.$ip.'<br/>';
        $port=$_SERVER["REMOTE_PORT"];
        echo $port;
    }
}