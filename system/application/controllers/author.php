<?php

class Author extends Controller {

    //public $my_data = array();

	function Author(){
    
		parent::Controller();
        $this -> load -> model("author_model");
        //$this->load->library('MyMenu');
	}
	
	function index(){
        
        $data['query'] = $this -> author_model -> all();
        $data['title'] = "author";
		$this->load->view('/author/all_author', $data);
	}
    
    function get($id=null){
    
        if (!$id){
            $id = 1;
        }
        
        $data['title'] = "author";
        $data['query'] = $this -> author_model -> get_author($id);
        $this->load->view('/author/show', $data);
    }
    
    function input(){
        $this->load->helper('form');
        $this->load->model('author_model');
        $data = $this -> author_model -> general();
        $this -> load -> view('author/new',$data);
    }

}

?>