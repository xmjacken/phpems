<?php
/*
 * Created on 2016-5-19
 *
 * To change the template for this generated file go to
 * Window - Preferences - PHPeclipse - PHP - Code Templates
 */
class action extends app
{
	public function display()
	{
		$action = $this->ev->url(3);
		if(!method_exists($this,$action))
		$action = "index";
		$this->$action();
		exit;
	}

	private function coursejs()
	{
		$contentid = $this->ev->get('contentid');
		$r = $this->log->getLogByArgs(array(array('AND',"loguserid = :loguserid",'loguserid',$this->_user['sessionuserid']),array('AND',"logcourseid = :logcourseid",'logcourseid',$contentid)));
		if((TIME - $r['logtime']) > 10)echo "document.write('[已学习]');";
	}

	private function index()
	{
		$page = $this->ev->get('page');
		$csid = $this->ev->get('csid');
		$contentid = $this->ev->get('contentid');
		$course = $this->course->getCourseById($csid);
		$catbread = $this->category->getCategoryPos($course['cscatid']);
		$cat = $this->category->getCategoryById($course['cscatid']);
		$catbrother = $this->category->getCategoriesByArgs(array(array('AND',"catparent = :catparent",'catparent',$cat['catparent']),array('AND',"catinmenu = '0'")));
		$nearCourse = $this->course->getNearCourseById($csid,$course['cscatid']);
		$contents = $this->content->getCourseList(array(array("AND","coursecsid = :coursecsid",'coursecsid',$csid)));
		if($contentid)$content = $this->content->getCourseById($contentid);
		else
		$content = current($contents['data']);
		$r = $this->log->getLogByArgs(array(array('AND',"loguserid = :loguserid",'loguserid',$this->_user['sessionuserid']),array('AND',"logcourseid = :logcourseid",'logcourseid',$contents['courseid'])));
		if(!$r)$this->log->addLog(array('loguserid' => $this->_user['sessionuserid'],'logcourseid' => $contentid));
		$this->tpl->assign('cat',$cat);
		$this->tpl->assign('nearCourse',$nearCourse);
		$this->tpl->assign('page',$page);
		$this->tpl->assign('catbread',$catbread);
		$this->tpl->assign('course',$course);
		$this->tpl->assign('contents',$contents);
		$this->tpl->assign('content',$content);
		$this->tpl->assign('catbrother',$catbrother);
		$this->tpl->display('course_default');
	}
}


?>
