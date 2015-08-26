<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/26
 * Time: 下午3:46
 */
namespace Home\Model;
use Think\Model\RelationModel;

class CommandModel extends RelationModel {
    // 自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );
}