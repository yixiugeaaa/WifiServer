<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/25
 * Time: 上午11:18
 */
//exec("cd d:/xampp/htdocs/wifi/ git pull ",$output);
exec("D:");
exec("cd xampp/htdocs/wifi");
exec("git pull",$output);
$myfile=fopen("log.txt","w");
foreach ($output as $out) {
    fwrite($myfile,$out."\n");
}
fclose($myfile);
