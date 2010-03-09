<? $this->load->view('/layout/header'); ?> 
<div id="wrapper">
	<!-- start page -->
	<div id="page">
		<div id="page-bg">
		    <? $this->load->view('/layout/slidebar_left'); ?>
			<div id="content">
			
                <div class="poem_header">
                    <div class="poem_title">
                      <?= $poem['poemname'] ?>
                    </div>

                    <div class="author_poem_title">
                        <?=anchor("author/show/".$author -> id , $author -> name);?>
                    </div>
                </div>
                
                <div class="poem_content">
                  <?= $poem['content'] ?>
                </div>
                
                <div class="poem_vote">
                    Danh gia cua ban ve tac pham nay:
                    <?= form_open("poem/mark_update_poem")?>
                        <? for ($counter = 1; $counter <= 10; $counter += 1) { ?>
                            <input name="mark" type="radio" value="<?=$counter?>" /> <?=$counter ?> &nbsp; 
                        <? } ?>
                        <?=form_submit('submit', 'binh chon')?>
                    <?= form_close(); ?>
                </div>
                
                <p>
                  <b>Views: </b>   <?= $poem['views'] ?><br/>
                  <b>Avg vote : </b>  <?= $poem['avg_vote'] ?>
                </p>

                <hr>
                <? #if current_user ?>
                <?#= link_to 'Dong gop phien ban tot hon', edit_poem_path($poem) ?>

                <?# form_for($comment) do |f| ?>
                  <?#= f.error_messages ?>
                  <?#=f.hidden_field :poem_id ?>
                  <p>
                    <?#= fckeditor_textarea('comment', 'content', :toolbarSet => 'Simple', :width => '100%', :height => '200px') ?>
                  </p>
                  <p>
                    <?#= f.submit 'Create' ?>
                  </p>
                <?# end ?>
                <?# else ?>
                    Ban phai dang nhap de co the viet binh luan ve bai tho nay
                <?# end ?> 
                <div class="poem_comments">
                <?# $poem.comments.each do |comment| ?>
                  <div class="comment">
                    <hr class="separate_comment">
                    <div class="user_comment"><?#=comment.user.email ?></div>    
                    <div class="content_comment"><?#= comment.content ?></div>
                    <!-- first version, user cannot edit or destroy, only admin can do that
                    <div class="action_comment"><?#= link_to 'Edit', edit_comment_path(comment) ?> <?#= link_to 'Destroy', comment, :confirm => 'Are you sure?', :method => :delete ?></div>
                    -->
                  </div>
                <?# end ?>
                </div>
            </div>
			<? $this->load->view('/layout/slidebar_right'); ?>
			<div style="clear: both;">&nbsp;</div>
		</div>
	</div>
</div>
<? $this->load->view('/layout/footer'); ?>
