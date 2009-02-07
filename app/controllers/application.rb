# Filters added to this controller apply to all controllers in the application.
# Likewise, all the methods added will be available for all controllers.

class ApplicationController < ActionController::Base
  
  helper :all # include all helpers, all the time
  #helper_method :logged_in?
	#helper_method :is_admin?
	  
  # See ActionController::RequestForgeryProtection for details
  # Uncomment the :secret if you're not using the cookie session store
  protect_from_forgery # :secret => '7aa1016d31504450be4eba23efd75e15'
  include AuthenticatedSystem
  #before_filter :current_user
  #before_filter :category
  #before_filter :login_from_cookie
  #before_filter :set_user_time_zone
  #before_filter :set_current_link
  #before_filter :style_color
  #before_filter :set_current_project, :if => :logged_in?
  # See ActionController::Base for details 
  # Uncomment this to filter the contents of submitted sensitive data parameters
  # from your application log (in this case, all fields with names like "password"). 
  # filter_parameter_logging :password
  
  # def local_request?
  #     false
  #   end
  #   
  #   def rescue_action_in_public(exception)
  #     case exception
  #     when ActiveRecord::RecordNotFound
  #       render :file => "#{RAILS_ROOT}/public/404.html", :status => 404
  #     else
  #       super
  #     end
  #   end
  #   
  private
  
  # def category
  #     # categories = Category.all
  #     # for ct in categories
  #     #   if ct.posts.size == 0
  #     #     ct.destroy
  #     #   end
  #     # end
  #     # 
  #     @categories = Category.all
  #   end
  #   
  def current_post
    # set the current post
  	@current_post ||= Post.find(session[:current_project]) rescue nil  	
  end
  
  # def set_current_link      
  #     @current_link = LINK_TABLE[[controller_name, action_name]]
  #     if @current_link.nil?
  #       # default to 1
  #       @current_link = 1
  #     end
  #       @current_link
  #   end
  #   
  # def set_user_time_zone
  #     if logged_in?
  # #     user = User.find(session[:user_id])
  #       Time.zone = @current_user.time_zone
  #     end
  #   end
	
	# def logged_in?
	#    @current_user
	#  end
	#  
	#  def current_user
	#    @current_user ||= User.find(session[:user_id]) rescue nil
	#  end
	# 
	#   # Sets a cookie if user wants to be remembered
	#   def login_from_cookie
	#     return unless cookies[:auth_token] && session[:user_id].nil?
	#     user = User.find_by_remember_token(cookies[:auth_token]) 
	#     if user && !user.remember_token_expires.nil? && Time.now < user.remember_token_expires 
	#       session[:user_id] = user.id
	#     end
	#   end
	#   
	#   # Set a cookie store color for user
	#   def style_color
	#     unless cookies[:style_color]
	#       cookies[:style_color] = "white"
	#     end    
	#     session[:style_color] = cookies[:style_color]
	#   end
	#     
	#   # Checks wether we are logged in. If not redirects to default
	#   def authorize
	#    unless logged_in?
	#       redirect_to login_path
	#     end
	#   end
	#   
	#   def is_admin?
	#      session[:admin]
	#   end
	#   
	#   def requires_admin
	#      unless session[:admin]
	#        #flash[:error] = "You are not authorized"
	#        redirect_to login_path(:admin => '1')
	#        #redirect_to root_path
	#     end
	#   end
	#   
	#   def logout_user
	#     if logged_in?
	#       session[:user_id] = nil
	#     end
	#   end
	#   
	#   def deauthorize
	#     if session[:admin] || session[:user_id]
	#       reset_session
	#     end
	#   end  
	#   
	#   def no_cache
	#     response.headers["Last-Modified"] = Time.now.httpdate
	#     response.headers["Expires"] = 0
	# 
	#     # HTTP 1.0
	#     response.headers["Pragma"] = "no-cache"
	# 
	#     # HTTP 1.1 'pre-check=0, post-check=0' (IE specific)
	#     response.headers["Cache-Control"] = 'no-store, no-cache, must-revalidate, max-age=0, pre-check=0, post-check=0'
	#   end
end
