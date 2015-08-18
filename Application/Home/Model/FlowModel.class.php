<?php
namespace Home\Model;
use Think\Model;

class FlowModel extends Model {
    // 定义自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );
}