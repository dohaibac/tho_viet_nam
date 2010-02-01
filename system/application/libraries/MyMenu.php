<?php

class MyMenu{
   function show_menu(){
   
          $obj =& get_instance();
          $obj->load->helper('url');
          
          $menu  = "<ul>";
          $menu .= "<li>";
          $menu .= anchor("news/","Tin T&#7913;c");
          $menu .= "</li>";
          $menu .= "<li>";
          $menu .= anchor("author/","T&#225;c gi&#7843;");
          $menu .= "</li>";
          $menu .= "<li>";
          $menu .= anchor("download/","T&#7843;i V&#7873;");
          $menu .= "</li>";
          $menu .= "<li>";
          $menu .= anchor("rule/","Quy &#272;&#7883;nh");
          $menu .= "</li>";
          $menu .= "<li>";
          $menu .= anchor("contact/","Li&#234;n H&#7879;");
          $menu .= "</li>";
          $menu .= "</ul>";
          
          return $menu;
   }
}

?>