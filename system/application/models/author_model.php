<?
    class Author_model extends Model{
        
        function Author(){
            parent::Model();
            $this -> load -> database();
        }
        
        function all(){
            $query = $this->db->get("authors");
            return $query -> result();
        }
        
        function get_author($id){
            $query = $this -> db -> getwhere("authors", array("id" => $id));
            return $query -> row_array();
        }
        
        function general(){
        
            $data['title'] = 'Add new author';
            $data['base']  = $this->config->item('base_url');
            
            $data['name']  = 'name';
            $data['introduction']     = 'introduction';
            $data['photo_file_name']  = 'photo_file_name';

            return $data;
        }

    }
?>