<? $this->load->view('/layout/header'); ?> 
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="page-bg">
		    <? $this->load->view('/layout/slidebar_left'); ?>
			<div id="content">
			
			    <div class="author_name">
                  <?=$query['name']; ?>
                </div>

                <div id="author_introduction">
                    <? if ($query['photo_file_name'] ){ ?>
                        <div class="author_image">
                            <img src="<?=$query['photo_file_name']?>" border="0" width="100" />
                        </div>
                    <? } ?>
                    <?=$query['introduction']?>
                </div>
                
                <table class="tbl_list_poems" align="center">
                  <tr>
                    <td>Poemname</td>
                    <td>Vote number</td>
                    <td>Avg vote</td>
                    <td>Views</td>
                  </tr>

                <? foreach($poems as $poem){ ?>
                  <tr>
                    <td><?= anchor("poems/show/".$poem -> id , $poem -> poemname); ?></td>
                    <td><?=$poem -> vote_number ?></td>
                    <td><?=$poem -> avg_vote ?></td>
                    <td><?=$poem -> views ?></td>
                  </tr>
                <? } ?>
                </table>

			
			</div>
			<? $this->load->view('/layout/slidebar_right'); ?>
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<? $this->load->view('/layout/footer'); ?>
