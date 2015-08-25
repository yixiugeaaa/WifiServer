<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/25
 * Time: 上午11:18
 */
header("Content-type: text/html; charset=utf-8");
$js=json_decode($_REQUEST["hook"]);//json转换
if($js->password!="123")die("ERROR!");//判断密码
$fp=fopen("D:/log.txt",'a');
$lastcommit=$js->push_data->commits[count($js->push_data->commits)-1];//获取最后的commit
if(strstr($lastcommit->message,"release"))//这里意为：如果最后的commit包含"release"则进行自动发布。
{
    exec('cd D:/xampp/htdocs/wifi git pull origin master');//进入目录
    fwrite($fp,"!!!".date('Y-m-d H:i:s')."\t".$lastcommit->message."\t".$lastcommit->author->name."\t"."Y"."\n");//进行记录
}
else
{
    fwrite($fp,date('Y-m-d H:i:s')."\t".$lastcommit->message."\t".$lastcommit->author->name."\t"."N"."\n");
}