<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/25
 * Time: 上午9:20
 */
namespace Home\Controller;

use Think\Controller;

class UserController extends Controller{
    public function update($id,$num=0){
        $User=M("User");
        $User->where('id=' . $id)->setInc('flow', $num);
        $data=$User->where('id='.$id)->find();
        //var_dump($data);
        echo $data['flow'];
    }
}
