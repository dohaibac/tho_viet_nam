class CommentsController < ApplicationController
  # GET /comments/1/edit
  def edit
    @comment = Comment.find(params[:id])

    respond_to do |format|
      format.html {
        redirect_to project_task_path(@project, @comment.task) 
      }
      
      format.js {
        render :update do |page|
          if @comment.user_id == @current_user.id
            page[@comment].select(".user_action").first.hide
            page[@comment].select(".comment_content").first.hide
            page.insert_html :bottom, "comment_#{@comment.id}", :partial => 'edit'
          end
        end        
      }
    end    
  end

  # POST /comments
  # POST /comments.xml
  def create
    @comment = Comment.new(params[:comment])
    @comment.markup_content = RedCloth.new(params[:comment][:content]).to_html
    @comment.user_id = current_user.id
    
    @comment_saved = @comment.save
    
    #Notifier.deliver_new_comment_created(@comment, @current_user) if @comment_saved
    
    respond_to do |format|
      format.html {
        if @comment_saved
          flash[:notice] = 'Comment was successfully created'
        end   
        
      	redirect_to project_task_path(@comment.task.project, @comment.task)
      }
      
      # Ajax found in create.rjs.js
      format.js
    end
  end

  # PUT /comments/1
  # PUT /comments/1.xml
  def update
    @comment = Comment.find(params[:id])
    @comment.updated_by = @current_user.id
    @comment.content = params[:content]
    @comment.markup_content = RedCloth.new(params[:content]).to_html

    respond_to do |format|
      format.html { 
        if @comment.user_id == @current_user.id
          if @comment.save
            flash[:notice] = 'Comment was successfully updated.'
            redirect_to(project_task_path(@project, @comment.task))
          else
            render :action => "edit"
          end        
        else
          render :action => "edit"
        end          
      }
      format.js {
        render :update do |page|
          if @comment.user_id == @current_user.id
            if @comment.save
              #@current_user.create_event("updated the comment", @comment, @comment.task.project_id)
              page[@comment].select(".comment_edit").first.remove
              page["comment_markup_#{@comment.id}"].replace_html @comment.markup_content
              page[@comment].select(".comment_content").first.show
              page[@comment].select(".user_action").first.show
            end
          end
        end        
      }
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.xml
  def destroy
    @comment = Comment.find(params[:id])
    #@comment.destroyer = @current_user.id
    @comment.destroy if @comment.user_id == @current_user.id
    
    #@current_user.create_event("deleted the comment", @comment, @project.id)
    #Event.create(:user_id => @current_user.id, :message => 'deleted the comment', :eventable => @comment)

    respond_to do |format|
      format.html { redirect_to(project_task_path(@comment.task.project, @comment.task)) }
      format.js {
        render :update do |page|
            #page[@comment].visual_effect :highlight, :startcolor => "#ff0000", :endcolor => "#ffffff", :duration => 1
            page[@comment].visual_effect :fade, :duration => 0.2
            page << "updateCommentsHeader(false)"
            #page.delay(1) {
            #page.alert("asdf")
            page[@comment].remove
            #}
        end
      }
    end
  end
end
