<?php

/**
 * Created by PhpStorm.
 * User: xzjs
 * Date: 15/9/15
 * Time: 上午9:56
 */
namespace Org\MyClass;

/**
 * Class Creator
 * 
 * @package Org\MyClass
 */
abstract class Creator {
	/**
	 * 工厂虚方法
	 * 
	 * @return mixed
	 */
	protected abstract function factoryMethod($a);
	
	/**
	 * 获得工厂实例
	 * 
	 * @return mixed
	 */
	public function startFactory($a) {
		$mfg = $this->factoryMethod ( $a );
		return $mfg;
	}
}