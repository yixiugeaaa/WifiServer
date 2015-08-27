<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/27
 * Time: 下午2:37
 */
namespace Home\Model;
use Think\Model\RelationModel;

class TlineModel extends RelationModel {

    protected $_link=array(
        'Line'=>self::HAS_MANY
    );
}