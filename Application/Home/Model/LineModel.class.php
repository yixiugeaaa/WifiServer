<?php
/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/8/18
 * Time: 下午9:54
 */
namespace Home\Model;
use Think\Model\RelationModel;

class LineModel extends RelationModel {
    // 自动完成
    protected $_auto    =   array(
        array('create_time','time',1,'function'),
    );

    protected $_link=array(
        'Bus'=>self::HAS_MANY,
        'Station'=>self::HAS_MANY
    );
}