<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Superuser extends CI_Controller {

	public function __construct()
	{
		parent::__construct();

		if(!$this->session->userdata('auth')){
			redirect('main');
		}
		$this->blade->sebarno('ctrl', $this);
		$this->load->library('session');
		$this->load->model('m_config');
		$this->load->model('m_kuesioner');
		$this->load->model('m_soal');
		$this->load->model('m_user');
		$this->load->model('m_responden');
		$this->load->model('m_jawaban');
		$this->data['config'] = $this->m_config->ambil('config',1)->row();
	}

	public function index()
	{
		$data            = $this->data;
		$data['menu']    = "dashboard";
		$where           = array('peserta.id_user' => $this->session->userdata('authmember_id'));
		$where        = array('id_user' => $this->session->userdata('authmember_id'));
		$data['user'] = $this->m_user->detail($where,'user')->row();
		echo $this->blade->nggambar('admin.home',$data);


	}

	public function autocomplete()
	{
		if (isset($_GET['term'])) {
            $result = $this->m_responden->search_reponden($_GET['term']);
            if (count($result) > 0) {
            foreach ($result as $row)
                $arr_result[] = array(
                			"id_responden" => $row->id_responden,
                			"nim" => $row->nim,
                			"nama"=>$row->nama,
                			"instansi" => $row->instansi,
                		);
                echo json_encode($arr_result);
            }
        }
	}

	public function getsoalajax(){
		if (isset($_GET['id_soal'])) {

		$where = array('id_soal' => $_GET['id_soal']);
		$row = $this->m_soal->detail($where,'soal')->row();

		        $arr_result = array(
                			"id_soal" => $row->id_soal,
                			"soal" => $row->soal,
                			"jenis"=>$row->jenis,
                		);
                echo json_encode($arr_result);
        }
	}

	// Start Config
	public function config ($type=null){
		$data         = $this->data;
		// $data         = $this->data;
		$data['menu'] = "config";

		if ($this->input->is_ajax_request()) {

			switch ($type) {

				case 'update':

					$logoname 		= $data['config']->logo;
					$iconname 		= $data['config']->icon;

					if (!empty($_FILES['logo']['name'])) {
						$upload 	= $this->upload('./assets/images/website/config/logo/','logo','logo');

						if($upload['auth']	== false){
							echo goResult(false,$upload['msg']);
							return;
						}

						$logoname 	= $upload['msg']['file_name'];
						if(!empty($logoname)){remFile(base_url().'assets/images/website/config/logo/'.$data['config']->logo);}
					}

					if (!empty($_FILES['icon']['name'])) {
						$upload 	= $this->upload('./assets/images/website/config/icon/','icon','icon');
						if($upload['auth']	== false){
							echo goResult(false,$upload['msg']);
							return;
						}

						$iconname 	= $upload['msg']['file_name'];
						if(!empty($iconname)){remFile(base_url().'assets/images/website/config/icon/'.$data['config']->icon);}
					}

					$id             = 1;
					$name           = $this->input->post('name');
					$email          = $this->input->post('email');
					$phone          = $this->input->post('phone');
					$facebook       = $this->input->post('facebook');
					$instagram      = $this->input->post('instagram');
					$address        = $this->input->post('address');
					$description    = $this->input->post('description');
					$meta_deskripsi = $this->input->post('meta_deskripsi');
					$meta_keyword   = $this->input->post('meta_keyword');

					$data = array(
						'name'           => $name,
						'email'          => $email,
						'phone'          => $phone,
						'facebook'       => $facebook,
						'instagram'      => $instagram,
						'address'        => $address,
						'description'    => $description,
						'icon'           => $iconname,
						'logo'           => $logoname,
						'meta_deskripsi' => $meta_deskripsi,
						'meta_keyword'   => $meta_keyword
					);

					$where = array(
						'id' => $id
					);

					if($this->m_config->update_data($where,$data,'config')){
						echo goResult(true,"Data Telah Di Perbarui");
						return;
					}

					break;

				default:
					echo goResult(false,"Konfigurasi Telah Di Simpan");
					return;
					break;
			}
		   return;
		}

		echo $this->blade->nggambar('admin.config.index',$data);
		return;
	}
	// End Config
	
	// Start soal
	public function soal($url=null,$id=null,$id_kuesioner=null)
	{
		$data             = $this->data;
		$data['menu']     = "soal";
		$data['soal'] = $this->m_responden->tampil_data('soal')->result();

		if ($url=="create") {
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.responden.content',$data);
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true) {

			$soal  = $this->input->post('soal');
			$id_kuesioner  = $this->input->post('id_kuesioner');
			$jenis  = $this->input->post('jenis');

			
			$data = array(
				'id_kuesioner' => $id_kuesioner,
				'soal'       => $soal,
				'jenis'      => $jenis,
			);

			if($this->m_soal->input_data($data,'soal')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_responden' => $id);
			$data['responden'] = $this->m_responden->detail($where,'responden')->row();
			echo $this->blade->nggambar('admin.responden.content',$data);
		}
		else if ($url=="jawab" && $this->input->is_ajax_request() == true) {

			$kuesioner = $this->input->post('kuesioner');
			$nim       = $this->input->post('id_responden');

			$data = array(
				'id_kuesioner' => $kuesioner,
				'id_responden'       => $nim,
			); 
			$id = $this->m_jawaban->input_data($data,'jawaban');
			
			$soals = $this->m_responden->tampil_data('soal')->result();

			$hasil = 0;

			foreach ($soals as $soal) {
				if ($this->input->post('jawaban-'.$soal->id_soal)) {
					$jawaban = $this->input->post('jawaban-'.$soal->id_soal);
					$id_soal = $soal->id_soal;

					$arrjawab = array(
						'id_jawaban' => $id,
						'id_soal' => $id_soal,
						'jawaban' => $jawaban,
 					);

 					$hasil = $hasil + $this->hitungSoal($soal->jenis,$jawaban);

					$this->m_jawaban->input_data($arrjawab,'detail_jawaban');

				}
			}

			$dataid = array(
					'id_jawaban' => $id,
			);

			$hasil = $hasil * 2.5;

			$datajawab = array(
					'hasil' => $hasil,
			);



			$this->m_jawaban->update_data($dataid,$datajawab,'jawaban');


			echo goResult(true,"Data Telah Di Dijawab dengan Hasil $hasil");
			return;
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true) {
			$where           = array('id_responden' => $id);

			$nama  = $this->input->post('nama');
			$nim = $this->input->post('nim');
			$instansi = $this->input->post('instansi');
			$jurusan = $this->input->post('jurusan');

			$data = array(
				'nama'       => $nama,
				'nim'   => $nim,
				'instansi' => $instansi,
				'jurusan' => $jurusan
			);

			if($this->m_responden->update_data($where,$data,'responden')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="deleted" && $id != null && $id_kuesioner != null) {
			$where           = array('id_soal' => $id);
			if ($this->m_responden->hapus_data($where,'soal')) {

			}
			redirect('superuser/kuesioner/update/'.$id_kuesioner);
		}
		else {
			echo $this->blade->nggambar('admin.responden.index',$data);
			return;
		}
	}
	// End soal
	// 
	function hitungSoal($jenis,$jawaban){

		if ($jenis == 'positif') {
			return ($jawaban - 1);
		}else if ($jenis == 'negatif') {
			return (5 - $jawaban);
		}

	}

	function countSoal($id_kuesioner=null)
	{
		$where           = array('id_kuesioner' => $id_kuesioner);
		return $this->m_soal->countSoal($where,'soal')->num_row();
	}

	// Start responden
	public function responden($url=null,$id=null)
	{
		$data             = $this->data;
		$data['menu']     = "responden";
		$data['responden'] = $this->m_responden->tampil_data('responden')->result();

		if ($url=="create") {
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.responden.content',$data);
			return;
		}
		else if ($url == "search") {
			$query  = $this->input->post('query');
			$respondens = $this->m_responden->search($query)->result();

			$arrRespond = array();
			foreach ($respondens as $value) {
				$arrRespond[] = $value->nama;
			}

			echo json_encode($arrRespond);
			// return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true) {

			$nama  = $this->input->post('nama');
			$nim = $this->input->post('nim');
			$instansi = $this->input->post('instansi');
			$jurusan = $this->input->post('jurusan');

			$data = array(
				'nama'       => $nama,
				'nim'   => $nim,
				'instansi' => $instansi,
				'jurusan' => $jurusan
			);

			if($this->m_responden->input_data($data,'responden')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_responden' => $id);
			$data['responden'] = $this->m_responden->detail($where,'responden')->row();
			echo $this->blade->nggambar('admin.responden.content',$data);
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true) {
			$where           = array('id_responden' => $id);

			$nama  = $this->input->post('nama');
			$nim = $this->input->post('nim');
			$instansi = $this->input->post('instansi');
			$jurusan = $this->input->post('jurusan');

			$data = array(
				'nama'       => $nama,
				'nim'   => $nim,
				'instansi' => $instansi,
				'jurusan' => $jurusan
			);

			if($this->m_responden->update_data($where,$data,'responden')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="deleted" && $id != null) {
			$where           = array('id_responden' => $id);
			if ($this->m_responden->hapus_data($where,'responden')) {

			}
			redirect('superuser/responden/');
		}
		else {
			echo $this->blade->nggambar('admin.responden.index',$data);
			return;
		}
	}
	// End responden


	// Start kuesioner
	public function kuesioner($url=null,$id=null)
	{
		$data             = $this->data;
		$data['menu']     = "kuesioner";
		$data['kuesioner'] = $this->m_kuesioner->tampil_data('kuesioner')->result();

		if ($url=="create") {
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.kuesioner.content',$data);
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true) {

			$kode      = $this->input->post('kode_kuesioner');
			$judul     = $this->input->post('judul');
			$skala     = $this->input->post('skala');
			$deskripsi = $this->input->post('deskripsi');

			$data = array(
				'kode_kuesioner' => $kode,
				'judul'          => $judul,
				'skala'          => $skala,
				'deskripsi'      => $deskripsi,
			);

			if($this->m_kuesioner->input_data($data,'kuesioner')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_kuesioner' => $id);
			$data['kuesioner'] = $this->m_kuesioner->detail($where,'kuesioner')->row();

			$data['soal'] = $this->m_soal->tampilByKuesioner($where,'soal')->result();

			echo $this->blade->nggambar('admin.kuesioner.content',$data);
		}
		else if ($url=="jawab" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_kuesioner' => $id);
			$data['kuesioner'] = $this->m_kuesioner->detail($where,'kuesioner')->row();

			$data['soal'] = $this->m_soal->tampilByKuesioner($where,'soal')->result();

			echo $this->blade->nggambar('admin.kuesioner.jawab',$data);
		}
		else if ($url=="listjawaban" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_kuesioner' => $id);
			$data['kuesioner'] = $this->m_kuesioner->detail($where,'kuesioner')->row();

			$data['jawaban'] = $this->m_jawaban->detailFull($where,'jawaban')->result();
			$data['total'] = $this->m_jawaban->detailFull($where,'jawaban')->num_rows();

			echo $this->blade->nggambar('admin.kuesioner.list_jawaban',$data);
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true) {
			$where           = array('id_kuesioner' => $id);

			$kode      = $this->input->post('kode_kuesioner');
			$judul     = $this->input->post('judul');
			$skala     = $this->input->post('skala');
			$deskripsi = $this->input->post('deskripsi');

			$data = array(
				'kode_kuesioner' => $kode,
				'judul'          => $judul,
				'skala'          => $skala,
				'deskripsi'      => $deskripsi,
			);

			if($this->m_kuesioner->update_data($where,$data,'kuesioner')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="deleted" && $id != null) {
			$where           = array('id_kuesioner' => $id);
			if ($this->m_kuesioner->hapus_data($where,'kuesioner')) {

			}
			redirect('superuser/kuesioner/');
		}
		else {
			echo $this->blade->nggambar('admin.kuesioner.index',$data);
			return;
		}
	}
	// End kuesioner
	

	// Start hasil
	public function hasil($url=null,$id=null)
	{
		$data             = $this->data;
		$data['menu']     = "hasil";
		$data['hasil'] = $this->m_kuesioner->tampil_data('kuesioner')->result();

		if ($url=="create") {
			$data['type']			= "create";
			echo $this->blade->nggambar('admin.kuesioner.content',$data);
			return;
		}
		else if ($url == "created" && $this->input->is_ajax_request() == true) {

			$kode      = $this->input->post('kode_kuesioner');
			$judul     = $this->input->post('judul');
			$skala     = $this->input->post('skala');
			$deskripsi = $this->input->post('deskripsi');

			$data = array(
				'kode_kuesioner' => $kode,
				'judul'          => $judul,
				'skala'          => $skala,
				'deskripsi'      => $deskripsi,
			);

			if($this->m_kuesioner->input_data($data,'kuesioner')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="update" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_kuesioner' => $id);
			$data['kuesioner'] = $this->m_kuesioner->detail($where,'kuesioner')->row();

			$data['soal'] = $this->m_soal->tampilByKuesioner($where,'soal')->result();

			echo $this->blade->nggambar('admin.kuesioner.content',$data);
		}
		else if ($url=="jawab" && $id!=null) {
			$data['type']    = "update";
			$where           = array('id_kuesioner' => $id);
			$data['kuesioner'] = $this->m_kuesioner->detail($where,'kuesioner')->row();

			$data['soal'] = $this->m_soal->tampilByKuesioner($where,'soal')->result();

			echo $this->blade->nggambar('admin.kuesioner.jawab',$data);
		}
		else if ($url=="updated" && $id!=null && $this->input->is_ajax_request() == true) {
			$where           = array('id_kuesioner' => $id);

			$kode      = $this->input->post('kode_kuesioner');
			$judul     = $this->input->post('judul');
			$skala     = $this->input->post('skala');
			$deskripsi = $this->input->post('deskripsi');

			$data = array(
				'kode_kuesioner' => $kode,
				'judul'          => $judul,
				'skala'          => $skala,
				'deskripsi'      => $deskripsi,
			);

			if($this->m_kuesioner->update_data($where,$data,'kuesioner')){
				echo goResult(true,"Data Telah Di Tambahkan");
				return;
			}
		}
		else if ($url=="deleted" && $id != null) {
			$where           = array('id_kuesioner' => $id);
			if ($this->m_kuesioner->hapus_data($where,'kuesioner')) {

			}
			redirect('superuser/kuesioner/');
		}
		else {
			echo $this->blade->nggambar('admin.hasil.index',$data);
			return;
		}
	}
	// End hasil 
	



	//---------------------------------------------------------------------
	//--------------------------------------------------------fungsi global
	private function upload($dir,$name ='userfile',$filename=null){
		$config['upload_path']      = $dir;
        $config['allowed_types']    = 'gif|jpg|png|jpeg|docx|doc|pdf';
        $config['max_size']         = 8000;
        $config['encrypt_name'] 	= FALSE;
        $config['file_name'] 		= $filename;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload($name))
        {
        		$data['auth'] 	= false;
                $data['msg'] 	= $this->upload->display_errors();
                return $data;
        }
        else
        {
        		$data['auth']	= true;
        		$data['msg']	= $this->upload->data();
        		return $data;
        }
	}

	private function upload1($dir,$name ='user',$filename=null){
		// echo $filename;
		$config['upload_path']      = $dir;
        $config['allowed_types']    = 'gif|jpg|png|jpeg|docx|doc|pdf';
        $config['max_size']         = 8000;
        $config['encrypt_name'] 	= FALSE;
        $config['file_name'] 		= $filename;

        $this->load->library('upload', $config);

        if ( ! $this->upload->do_upload($name))
        {
        		$data['auth'] 	= false;
                $data['msg'] 	= $this->upload->display_errors();
                return $data;
        }
        else
        {
        		$data['auth']	= true;
        		$data['msg']	= $this->upload->data();
        		return $data;
        }
	}

	private function upload_files($path,$files){

        $config = array(
            'upload_path'   => $path,
            'allowed_types' => 'gif|jpg|png|jpeg',
            'max_size'		=> '10000',
            'overwrite'     => false,
            'encrypt_name'  => FALSE
        );

        $this->load->library('upload', $config);

        $images 		= array();
        $data['msg']	= array();
        $data['auth']	= false;
        foreach ($files['name'] as $key => $image) {
			$_FILES['images[]']['name']     = $files['name'][$key];
			$_FILES['images[]']['type']     = $files['type'][$key];
			$_FILES['images[]']['tmp_name'] = $files['tmp_name'][$key];
			$_FILES['images[]']['error']    = $files['error'][$key];
			$_FILES['images[]']['size']     = $files['size'][$key];

			$value 		= str_replace(' ', '_', $_FILES['images[]']['name']);
            $config['file_name'] 		= $value;
            $this->upload->initialize($config);

            if ($this->upload->do_upload('images[]')) {
            	$data['auth']		= true;
            	array_push($data['msg'],$this->upload->data());
            } else {
            	$data['auth']		= ($data['auth']==true) ? true : false;
            	array_push($data['msg'],$this->upload->display_errors());
            }
        }

        return $data;
    }

    private function isImage($file){
		if ((($_FILES[$file]['type'] == 'image/gif') || ($_FILES[$file]['type'] == 'image/jpeg') || ($_FILES[$file]['type'] == 'image/png'))){
			return true;
		}
		else {
			return false;
		}
	}
}
