<?php
namespace Home\Controller;

use Think\Controller;

class IndexController extends Controller
{
    public function index()
    {
        $this->show();
    }

    /**
     * @param $phone
     * @param $mac
     * @param int $type 0为登陆，1为注册
     */
    public function auth($phone, $mac, $type = 0)
    {
        if ($type == 1) {
            $User = D("User");
            $data["phone"] = $phone;
            $data["mac"] = $mac;
            $User->create($data);
            $id=$User->add();
            $Flow=D("Flow");
            $data["user_id"]=$id;
            $data["flow_num"]=100;
            $Flow->create($data);
            $Flow->add();
        } elseif ($type == 0) {
            $User = M("User"); // 实例化User对象
            $data = $User->where('phone='.$phone)->find();
            if(!isset($data)){
                echo "Auth: 0";
                return;
            }
        }else{
            echo "Auth: 0";
            return;
        }
        echo "Auth: 1";
    }

    public function portal(){

    }


}