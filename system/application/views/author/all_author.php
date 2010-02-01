<? $this->load->view('/layout/header'); ?> 
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="page-bg">
		    <? $this->load->view('/layout/slidebar_left'); ?>
			<div id="content">
                <? foreach($query as $author){ ?>
                        <?=$author -> name;?> <br/>
                <? } ?>
			</div>
			<? $this->load->view('/layout/slidebar_right'); ?>
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<? $this->load->view('/layout/footer'); ?>