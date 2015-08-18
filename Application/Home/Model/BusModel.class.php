<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/18
 * Time: 下午9:48
 */
namespace Home\Model;
use Think\Model;

class FlowModel extends Model {
    // 自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );
}