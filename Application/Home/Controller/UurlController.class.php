<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/21
 * Time: 下午4:03
 */
namespace Home\Controller;

use Think\Controller;

class UurlController extends Controller
{
    public function insert()
    {
        $upload = new \Think\Upload();// 实例化上传类
        $upload->maxSize = 3145728;// 设置附件上传大小
        $upload->exts = array('json');// 设置附件上传类型
        $upload->rootPath = './Uploads/'; // 设置附件上传根目录
        $upload->savePath = ''; // 设置附件上传（子）目录
        $upload->saveName='time';
        // 上传文件
        $info = $upload->upload();
        if (!$info) {// 上传错误提示错误信息
            echo $upload->getError();
        } else {// 上传成功
            $path="./Uploads/".$info['json']['savepath'].$info['json']['savename'];
            $myfile = fopen($path, "r") or die("Unable to open file!");
            $str=fread($myfile,filesize($path));
            $uurls=json_decode($str);
            fclose($myfile);
            if($uurls){
                foreach ($uurls->Content as $uurl) {
                    $Bus=M("Bus");
                    $bus_id=$Bus->where('mac='.$uurls->Dmac)->getField('id');
                    $User=M('User');
                    $user_id=$User->where('mac='.$uurl->Umac)->getField('id');
                    $Uurl=M("Uurl");
                    $data['bus_id']=$bus_id;
                    $data['user_id']=$user_id;
                    $data['url']=$uurl->Url;
                    $data['time']=$uurl->Time;
                    $Uurl->add($data);
                }
            }
        }
        echo "true";
    }
}