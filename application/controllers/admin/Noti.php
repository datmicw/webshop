<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class noti extends MY_Controller {

	function __construct()
	{
		parent::__construct();
		$this->load->model('noti_model');
		$this->load->library('form_validation');
		$this->load->helper('form');
		$this->load->library('upload');
		$this->load->library('upload_library');
	}
	public function index()
	{
		$message_success = $this->session->flashdata('message_success');
		$this->data['message_success'] = $message_success;

		$message_fail = $this->session->flashdata('message_fail');
		$this->data['message_fail'] = $message_fail;

		$input = array();
		$input['order'] = array('id' , 'ASC');
		$noti = $this->noti_model->get_list($input);
		$this->data['noti']= $noti;

		$this->data['temp']='admin/noti/index.php';
		$this->load->view('admin/main',$this->data);
	}
	public function add()
	{
		$this->form_validation->set_error_delimiters('<div class="alert alert-danger" role="alert" style="padding:5px;border-bottom:0px;">', '</div>');

		if ($this->input->post()) {
			$this->form_validation->set_rules('name','Tên noti','required');
			$this->form_validation->set_rules('link','Liên kết','required');
			if ($this->form_validation->run()) {
				$path = './upload/noti/';
				$image_link ='';
				$image_link = $this->upload_library->upload($path,'image');
				$data = array();
				$data = array(
					'noti_name' => $this->input->post('name'),
					'noti_image_link' => $image_link,
					'noti_link' => $this->input->post('link'),
					'noti_sort' => $this->input->post('sort'),
					'noti_created' => date('Y-m-d H:i:s')
					);
				if ($this->noti_model->create($data)) {
					$this->session->set_flashdata('message_success', 'Thêm noti thành công');
				}else{
					$this->session->set_flashdata('message_fail', 'Thêm noti thất bại');
				}
				redirect(admin_url('noti'));
			}
		}

		$this->data['temp']='admin/noti/add';
		$this->load->view('admin/main',$this->data);
	}
	public function edit()
	{
		$id = $this->uri->segment(4);
		$noti = $this->noti_model->get_info($id);
		if (empty($noti)) {
			$this->session->set_flashdata('message_fail', 'noti không tồn tại');
			redirect(admin_url('noti'));
		}
		$this->data['noti'] = $noti; 
		if ($this->input->post()) {
			$this->form_validation->set_rules('name','Tên noti','required');
			$this->form_validation->set_rules('link','Liên kết','required');
			if ($this->form_validation->run()) {
				$data = array();
				$data = array(
					'name' => $this->input->post('name'),
					'link' => $this->input->post('link'),
					'sort' => $this->input->post('sort')
					);
				$path = './upload/noti/';
				$noti_image_link = '';
				$noti_image_link = $this->upload_library->upload($path,'image');
				if ($noti_image_link != '') {
					$data['noti_image_link'] = $noti_image_link;
					$image = './upload/noti/'.$noti->noti_image_link;
					if (file_exists($image)) {
						unlink($image);
					}
				}
				if ($this->noti_model->update($id,$data)) {
					$this->session->set_flashdata('message_success', 'Thay đổi noti thành công');
				}else{
					$this->session->set_flashdata('message_fail', 'Thay đổi noti thất bại');
				}
				redirect(admin_url('noti'));
			}
		}

		$this->data['temp']='admin/noti/edit';
		$this->load->view('admin/main',$this->data);
	}
	public function del()
	{
		$id = $this->uri->segment(4);
		$noti = $this->noti_model->get_info($id);
		
		if (empty($noti)) {
			$this->session->set_flashdata('message_fail', 'noti không tồn tại');
			redirect(admin_url('noti'));
		}
		$this->data['noti'] = $noti;
		if ($this->noti_model->delete($id)) {
			$image = './upload/noti/'.$noti->noti_image_link;
			if (file_exists($image)) {
				unlink($image);
			}
			$this->session->set_flashdata('message_success', 'Xóa noti thành công');
		}else{
			$this->session->set_flashdata('message_fail', 'Xóa noti thất bại');
		}
		redirect(admin_url('noti'));
	}
}
