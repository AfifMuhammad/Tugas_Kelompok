<?php 


class Crud extends CI_Controller{

	function __construct(){
		parent::__construct();		
		$this->load->model('m_data');
		$this->load->helper('url');

	}

	function index(){
		$data['anggota'] = $this->m_data->tampil_data()->result();
		$this->load->view('v_tampil',$data);
	}

	function tambah(){
		$this->load->view('v_input');
	}

	function tambah_aksi(){
		$nama = $this->input->post('nama');
		$alamat = $this->input->post('alamat');
		$pekerjaan = $this->input->post('pekerjaan');

		$data = array(
			'nama' => $nama,
			'alamat' => $alamat,
			);
		$this->m_data->input_data($data,'anggota');
		redirect('');
	}

	function hapus($id){
		$where = array('id' => $id);
		$this->m_data->hapus_data($where,'anggota');
		redirect('crud/index');
	}

	function edit($id){
		$where = array('id' => $id);
		$data['anggota'] = $this->m_data->edit_data($where,'anggota')->result();
		$this->load->view('v_edit',$data);
	}

	function update(){
		$id = $this->input->post('id');
		$nama = $this->input->post('nama');
		$alamat = $this->input->post('alamat');
	 
		$data = array(
			'nama' => $nama,
			'alamat' => $alamat,
		);
	 
		$where = array(
			'id' => $id
		);
	 
		$this->m_data->update_data($where,$data,'anggota');
		redirect('');
	}

}