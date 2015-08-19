<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/18
 * Time: 下午9:56
 */
namespace Home\Controller;

use Think\Controller;

class LineController extends Controller
{
    public function read($no){
        $Line=D("Line");
        $line=$Line->relation(true)->where("line_no=$no");
        return json_encode($line);
    }

    public function index(){
        echo 'hello';
    }
}