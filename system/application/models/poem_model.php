<?
    class Poem_model extends Model{
        
        function Poem_model(){
            parent::Model();
            $this -> load -> database();
        }
        
        function author_poems($author_id){
            $query = $this-> db -> getwhere ("poems", array("author_id" => $author_id));
            return $query -> result();
        }
        
    }
?>
