class ApplicationController < ActionController::Base
  before_action :authorize
  # Prevent CSRF attacks by raising an exception.
  # Ref Book Ruby, S., Thomas, D. and Hansson, D. H. n.d. Agile web development with Rails 4.
  # Hartl, M. 2014. Ruby on Rails Tutorial: Learn Rails by Example. [online] Available at: http://ruby.railstutorial.org/chapters/sign-in-sign-out.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  protected
  
  def authorize
      unless AdminUser.find_by(id: session[:admin_user_id])
	  redirect_to login_url, notice: "Please Log in" 
	 end
	end
  
  
  
end
