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
        //echo $ip;
        $ch = curl_init();
        $url = 'http://apis.baidu.com/apistore/iplookupservice/iplookup?ip='.$ip;
        $header = array(
            'apikey: 0bcf2748f57dff7a34abd845c016832a',
        );
        // 添加apikey到header
        curl_setopt($ch, CURLOPT_HTTPHEADER  , $header);
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);
        // 执行HTTP请求
        curl_setopt($ch , CURLOPT_URL , $url);
        $res = curl_exec($ch);

        var_dump(json_decode($res));
        //echo json_decode($res);
    }
}