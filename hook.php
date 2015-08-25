<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/25
 * Time: 上午11:18
 */
error_reporting ( E_ALL );
$dir = 'D:\\xampp\\htdocs\wifi\\';//该目录为git检出目录
$handle = popen('cd '.$dir.' && git pull 2>&1','r');
$read = stream_get_contents($handle);
printf($read);
pclose($handle);
echo 'hello';