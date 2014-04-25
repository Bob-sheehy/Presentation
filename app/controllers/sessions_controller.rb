class SessionsController < ApplicationController
  skip_before_action :authorize
  
  # Guides.rubyonrails.org. 2014. Action Controller Overview — Ruby on Rails Guides. [online] 
  #Available at: http://guides.rubyonrails.org/action_controller_overview.html [Accessed: 17 Mar 2014].
  # Book Ruby, S., Thomas, D. and Hansson, D. H. n.d. Agile web development with Rails 4.
  #64  Hartl, M. 2014. Ruby on Rails Tutorial: Learn Rails by Example. [online] 
  #Available at: http://ruby.railstutorial.org/chapters/sign-in-sign-out [Accessed: 6 Mar 2014].
  #
  
  
  def new
  end

  def create
  admin_user = AdminUser.find_by(name: params[:name])
  if admin_user and admin_user.authenticate(params[:password])
  session[:admin_user_id] = admin_user.id
  redirect_to home_path
  else
  redirect_to login_url, alert: "Invalid user/password combination"
 end
end

  def destroy
  session[:admin_user_id] = nil
  redirect_to home_url, notice: "Logged out"
  end
end
