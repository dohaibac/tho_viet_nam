<? $this->load->view('/layout/header'); ?> 
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="page-bg">
		    <? $this->load->view('/layout/slidebar_left'); ?>
			<div id="content">
                <? echo form_open('authour/input'); ?>
                <? echo $title; ?>: 
                <? echo form_input('title'); ?>
                </br>
                <? echo $author; ?>: 
                <? echo form_input('author'); ?>
                </br>
                <? echo $publisher; ?>: 
                <? echo form_input('publisher'); ?>
                </br>
                <? echo $year; ?>: 
                <? echo form_dropdown('year',$years); ?>
                </br>
                <? echo $available; ?>: 
                <? echo form_checkbox('available','yes',TRUE); ?>
                </br>
                <? echo $summary; ?>: 
                <? echo form_textarea('summary'); ?>
                </br>
                <? echo form_submit('mysubmit','Submit!');  ?>
                <? echo form_close(); ?>
			</div>
			<? $this->load->view('/layout/slidebar_right'); ?>
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<? $this->load->view('/layout/footer'); ?>