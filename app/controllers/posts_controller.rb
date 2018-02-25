class PostsController < ApplicationController
  def index
  	@posts = Post.all 
  end

  def new
  	@post= Post.new 
  end

  def create
  	post = Post.new(post_params)
  	post.user_id = current_user.id
  	if post.save
  		p post.title
  		flash[:message] = 'post created ok'
  		redirect_to "/posts/#{post.id}"
  	else
  		flash[:message] = 'try again'
  		redirect_to posts_new_path
  	end
  end 	

  def show
  	@post = Post.find_by_id(params[:id])
  end

  def edit
  end

  def update
  	@post = Post.find(params[:id])
    if @post.update(post_params)
      flash[:message] = 'post edit ok'
      redirect_to "/users/#{current_user.id}"
    else
      flash[:message] = 'try again'
      redirect_to edit_post_path
    end
  end
	
  def destroy
  	post = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end	

private
  def post_params
  	params.require(:post).permit(:title, :content, :tag, :user_id)
  end  

end
