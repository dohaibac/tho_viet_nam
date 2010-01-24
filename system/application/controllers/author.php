<?php

class Author extends Controller {

	function Author(){
		parent::Controller();	
	}
	
	function index(){
	    $data['title'] = "author";
		$this->load->view('/author/view', $data);
	}
}

/* End of file welcome.php */
/* Location: ./system/application/controllers/welcome.php */
