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
        $this->test($no);
        $Line=D("Line");
        $line=$Line->relation(true)->where("line_no=$no")->find();
        $result = json_encode($line);
        echo $result;
    }

    public function index(){
        echo 'hello';
    }

    //填充测试数据
    private function test($i){
        $Line=M("Line");
        $data=$Line->where("line_no=$i")->find();
        if($data){
            $Bus=M("Bus");
            //获取所有的公交车信息
            $str='line_id='.$data['id'];
            $busdatas=$Bus->where($str)->select();
            foreach($busdatas as $busdata){
                //修改公交车的位置信息
                $Bus->position_x=$busdata['position_x']+5*$busdata['direction'];
                $Bus->position_y=$busdata['position_y']+5*$busdata['direction'];
                //到达终点站变向
                if($Bus->position_x==40||$Bus->position==10){
                    $Bus->direction=-1*$busdata['direction'];
                }
                $Station=M("Station");
                //获得所有的站点信息
                $station_datas=$Station->where('line_id='.$data['id'])->select();
                //计算站点位置和公交位置确定公交车在什么地方
                foreach ($station_datas as $station_data) {
                    if(abs($Bus->position_x-$station_data['position_x'])<1){
                        $Bus->station_id=$station_data['id'];
                        $Bus->time=date("y-m-d h:i:sa");
                        break;
                    }
                }
                $Bus->where('id='.$busdata['id'])->save();
            }
        }
    }
}