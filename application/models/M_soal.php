<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_soal extends CI_Model {

	public $variable;

	public function __construct()
	{
		parent::__construct();	
	}

	function tampil_data($table){
		$this->db->from($table);
		return $query = $this->db->get();
		// return $this->db->get($table);
	}

	function search($search,$table){
	    $where = array('id_soal', $search);
		return $this->db->get_where($table,$where);
		// return $this->db->get($table);
	}

	function tampilByKuesioner($where,$table){	
		return $this->db->get_where($table,$where);
	}

	function countSoal($where,$table){	
		return $this->db->get_where($table,$where);
	}

	function input_data($data,$table){
		$this->db->insert($table,$data);
	}
	
	function detail($where,$table){	
		return $this->db->get_where($table,$where);
	}

	function update_data($where,$data,$table){
		$this->db->where($where);
		$this->db->update($table,$data);
	}

	function hapus_data($where,$table){
		$this->db->where($where);
		$this->db->delete($table);
	}

}

/* End of file M_bidang.php */
/* Location: ./application/models/M_bidang.php */