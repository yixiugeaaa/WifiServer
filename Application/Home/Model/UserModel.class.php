<?php
namespace Home\Model;
use Think\Model;
class UserModel extends Model {
    // 验证
    protected $_validate    =   array(
        array('phone','require','手机号时必须的'),
    );
    // 自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );
}