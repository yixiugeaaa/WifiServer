<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/26
 * Time: 上午10:04
 */
namespace Home\Controller;

use Think\Controller;

class CommandController extends Controller{
    /**
     * @param $mac 路由器mac地址
     * @param $cmd 命令
     * @param $arg 回执参数
     */
    public function ping($mac,$cmd='0',$arg=0){
        $Command=M("Command");
        if($cmd == '0') {
            $data = $Command->where('mac="'.$mac.'" and finish=0')->find();
            if ($data) {
                if($data['cmd']=='Reboot'){
                    $data['finish']=1;
                    $Command->save($data);
                    $this->output("pong");
                }else {
                    $this->output($data['cmd']);
                }
            } else {
                $this->output("pong");
            }
        }else{
            switch($cmd){
                case "Df":
                    $Route=M('Route');
                    $Route->useage_rate=$arg;
                    $Route->where('mac="'.$mac.'"')->save();
                    $Command->finish=1;
                    $Command->where('mac="'.$mac.'"')->save();
                    break;
                case "Reboot":
                case "Ssid":
                    $data=$Command->where('mac="'.$mac.'"')->find();
                    if($arg!=$data['ssid']) {
                        //一些操作
                    }
                    break;
                case "FirmwareUpdate":
                    $data=$Command->where("mac=$mac")->find();
                    if($arg!=$data['firmware_update']) {
                        //一些操作
                    }
                    break;
                case "ContentsUpdate":
                    $data=$Command->where("mac=$mac")->find();
                    if($arg!=$data['contents_update']) {
                        //一些操作
                    }
                    break;
                default:
                    break;
            }
            $this->output('pong');
        }
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