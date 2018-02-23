class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def current_user
  	current_user = User.find_by_id(session[:user_id])
  end


  helper_method :current_user, :logged_in?
  #help_method is for views to acess to the functions.

  def logged_in?
  #boolean return	
  	current_user != nil
  end

  #filter
  def authenticate
  	if !logged_in?
      redirect_to root_path
    end 
  end

end
