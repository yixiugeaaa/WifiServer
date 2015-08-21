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

    /**
     * 更新公交车当前的位置
     * @param $mac 公交车的mac
     * @param $x 经度
     * @param $y 纬度
     */
    public function update($mac,$x,$y){
        $Bus=M("Bus");
        $data=array('position_x'=>$x,'position_y'=>$y);
        $i = $Bus->where('mac='.$mac)->setField($data);
        echo $i;
    }
}