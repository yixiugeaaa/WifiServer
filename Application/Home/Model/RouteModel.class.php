<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/26
 * Time: 下午4:21
 */
namespace Home\Model;
use Think\Model\RelationModel;

class RouteModel extends RelationModel
{
    // 自动完成
    protected $_auto = array(
        array('create_time', 'time', 1, 'function'),
    );

    protected $_link=array(
        'Bus'=>self::BELONGS_TO
    );
}