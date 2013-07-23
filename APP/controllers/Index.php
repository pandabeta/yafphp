<?php
/**
 * Index 控制器
 * @author 张洋 2050479@qq.com
 */
class IndexController extends Ctrl_Base{
	/**
	 * 首页
	 */
	public function indexAction(){
		
		$tMB = new BlogModel();
		$this->assign('blogs', $tMB->limit(20)->fList());
	}
}