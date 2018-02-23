class UsersController < ApplicationController
  before_action :authenticate, only: [:edit, :destroy, :show
  ]
  
  def index
  	@users = User.all  
  end

  def new
  	@user = User.new
  end

  def create
  	user = User.new(user_params)
  	if user.save
  		flash[:message] = 'user created ok'
  		redirect_to '/users'
  	else
  		flash[:message] = 'try again'
  		redirect_to users_new_path
  	end
  end

  def show
  	@user = User.find_by_id(params[:id])
  end

  def edit
  	@user = User.find_by_id(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      flash[:message] = 'user edit ok'
      redirect_to "/users/#{@user.id}"
    else
      flash[:message] = 'try again'
      redirect_to edit_user_path
    end
  end

  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end

  def login
    user = User.find_by_username(params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id 
      flash[:message] = 'you logged in successfully'
      redirect_to "/users/#{user.id}"
    else 
      flash[:message] = 'try again'
      redirect_to '/login'
    end
  end

  def logout
    session[:user_id] = nil
    flash[:message] = 'logging out ok'
    redirect_to '/login'
  end

  def login_page
  end

private
  def user_params
  	params.require(:user).permit(:username, :email, :password)
  end

end