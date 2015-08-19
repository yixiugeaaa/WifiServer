<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/18
 * Time: 下午9:48
 */
namespace Home\Model;
use Think\Model\RelationModel;

class BusModel extends RelationModel {
    // 自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );

    protected $_link=array(
        'Line' => self::BELONGS_TO
    );
}