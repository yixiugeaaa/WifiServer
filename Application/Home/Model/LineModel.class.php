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

    protected $_link=array(
        'Bus'=>self::HAS_MANY,
        'Station'=>self::MANY_TO_MANY,
        'Tline'=>self::BELONGS_TO
    );
}