<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/19
 * Time: 上午8:53
 */
namespace Home\Model;
use Think\Model\RelationModel;

class StationModel extends RelationModel {
    protected $_link=array(
        'Line'=>self::BELONGS_TO
    );
}