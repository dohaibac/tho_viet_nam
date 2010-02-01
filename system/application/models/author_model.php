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
        
            $data['base']       = $this->config->item('base_url');
            
            $data['title']      = 'Title';
            $data['author']     = 'Author';
            $data['publisher']  = 'Publisher';
            $data['year']       = 'Year';
            $data['years']      = array('2007'=>'2007',
                                        '2008'=>'2008',
                                        '2009'=>'2009');
            $data['available']  = 'Available';
            $data['summary']    = 'Summary';

            return $data;
        }

    }
?>