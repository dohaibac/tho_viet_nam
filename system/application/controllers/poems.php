<?php

class Poems extends Controller {

    //public $my_data = array();

	function Poems(){
    
		parent::Controller();
        $this -> load -> model("author_model");
        $this -> load -> model("poem_model");
        //$this->load->library('MyMenu');
	}
	
	function index(){        
        $data['query'] = $this -> author_model -> all();
        $data['title'] = "author";
		$this->load->view('/author/all_author', $data);
	}
    
    function show($id=null){
    
        if (!$id){
            $id = 1;
        }
        
        $data['title'] = "poem";
        $data['poem'] = $this -> poem_model -> get_poem($id);
        
        #$data['author'] = $this -> author_model -> get_author($poem -> author_id);
        #$data['poems'] = $this -> poem_model -> author_poems($poem -> author_id);
        
        $this->load->view('/poems/show', $data);
    }
    
    function input(){
        $this->load->helper('form');
        $this->load->model('author_model');
        $data = $this -> author_model -> general();
        $this -> load -> view('author/new',$data);
    }
}

?>
