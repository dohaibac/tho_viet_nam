<? $this->load->view('/layout/header'); ?> 
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="page-bg">
		    <? $this->load->view('/layout/slidebar_left'); ?>
			<div id="content">
                <? echo form_open_multipart('author/input'); ?>
                <? echo $name; ?>: 
                <? echo form_input('name'); ?>
                <br />
                <? echo $introduction; ?>: 
                <textarea rows="5" name="introduction"></textarea>
                <br />
                <? echo $photo_file_name; ?>: 
                <input type="file" name="photo_file_name" size="20" />
                <br />
                <? echo form_submit('mysubmit','Submit!');  ?>
                <? echo form_close(); ?>
			</div>
			<? $this->load->view('/layout/slidebar_right'); ?>
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<? $this->load->view('/layout/footer'); ?>