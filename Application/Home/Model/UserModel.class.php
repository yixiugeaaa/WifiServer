<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/25
 * Time: 上午9:17
 */
namespace Home\Model;
use Think\Model\RelationModel;

class UserModel extends RelationModel {
    // 自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );
}