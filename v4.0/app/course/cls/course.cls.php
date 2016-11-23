<?php

class course_course
{
	public $G;

	public function __construct(&$G)
	{
		$this->G = $G;
	}

	public function _init()
	{
		$this->categories = NULL;
		$this->tidycategories = NULL;
		$this->pdosql = $this->G->make('pdosql');
		$this->db = $this->G->make('pepdo');
		$this->pg = $this->G->make('pg');
		$this->ev = $this->G->make('ev');
	}

	public function getCourseList($args,$page,$number = 20,$order = 'cstime DESC,csid DESC')
	{
		$data = array(
			'select' => false,
			'table' => 'coursesubject',
			'query' => $args,
			'orderby' => $order
		);
		$r = $this->db->listElements($page,$number,$data);
		return $r;
	}

	public function delCourse($id)
	{
		return $this->db->delElement(array('table' => 'coursesubject','query' => array(array('AND',"csid = :csid",'csid',$id))));
	}

	public function modifyCourse($id,$args)
	{
		$data = array(
			'table' => 'coursesubject',
			'value' => $args,
			'query' => array(array('AND',"csid = :oldcsid",'oldcsid',$id))
		);
		return $this->db->updateElement($data);
	}

	public function addCourse($args)
	{
		return $this->db->insertElement(array('table' => 'coursesubject','query' => $args));
	}

	private function _getBasicCourseById($id)
	{
		$data = array(false,'coursesubject',array(array('AND',"csid = :csid",'csid',$id)));
		$sql = $this->pdosql->makeSelect($data);
		return $this->db->fetch($sql);
	}

	private function _modifyBasicCourseById($id,$args)
	{
		$data = array('coursesubject',$args,array(array('AND',"csid = :csid",'csid',$id)));
		$sql = $this->pdosql->makeUpdate($data);
		return $this->db->exec($sql);
	}

	public function modifyBasciCourse($id,$args)
	{
		$this->_modifyBasicCourseById($id,$args);
	}

	public function getBasicCourseById($id)
	{
		return $this->_getBasicCourseById($id);
	}

	public function getCourseById($id)
	{
		$data = array(false,'coursesubject',array(array('AND',"csid = :csid",'csid',$id)));
		$sql = $this->pdosql->makeSelect($data);
		return $this->db->fetch($sql);
	}

	public function getNearCourseById($id,$catid)
	{
		$r = array();
		$data = array(false,'coursesubject',array(array('AND',"csid < :csid",'csid',$id),array('AND',"cscatid = :catid",'catid',$catid)),false,"csid DESC",5);
		$sql = $this->pdosql->makeSelect($data);
		$r['pre'] = $this->db->fetchAll($sql);
		$data = array(false,'coursesubject',array(array('AND',"csid > :csid",'csid',$id),array('AND',"cscatid = :catid",'catid',$catid)),false,"csid ASC",5);
		$sql = $this->pdosql->makeSelect($data);
		$r['next'] = $this->db->fetchAll($sql);
		return $r;
	}
}

?>
