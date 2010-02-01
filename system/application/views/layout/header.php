<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
       "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta http-equiv="content-type" content="text/html;charset=UTF-8" />
  <title>Trang Tho Viet Nam - <?=$title;?></title>
<meta name="keywords" content="" />
<link rel="stylesheet" type="text/css" href="<?=$this->config->item('base_url');?>/public/default.css">
</head>
<body>
<div id="header">
	<div id="logo">
		<div id="random_poem">Random_poem</div>
	</div>
</div>
<div id="navigator">
<?
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
?>
<?=$menu;?>
</div>
