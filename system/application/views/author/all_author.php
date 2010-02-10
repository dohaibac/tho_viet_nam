<? $this->load->view('/layout/header'); ?> 
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="page-bg">
		    <? $this->load->view('/layout/slidebar_left'); ?>
			<div id="content">
                <? 
                    $index = 0;
                    foreach($query as $author){
                ?>
                    <div class="<? if ($index % 2 == 0){ ?>author_left<? } else {?>author_right<?} ?>">
                        <? if ($author -> photo_file_name){ ?>
                            <img src="<?=$author -> photo_file_name?>" border="0" width="100" /><br />
                        <? } ?>
                        <?=anchor("author/show/".$author -> id , $author -> name);?>
                        <??>
                    </div>
                <? 
                $index += 1;
                } ?>
			</div>
			<? $this->load->view('/layout/slidebar_right'); ?>
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<? $this->load->view('/layout/footer'); ?>
