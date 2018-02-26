class CommentsController < ApplicationController
  def new
  end

  def create
  	user = User.find_by_id(session[:user_id])
    post = Post.find_by_id(params[:id])
    comment = Comment.new(comment_params)
        # @user.posts.create(post_params)
    if comment.save
       flash[:message] = 'Your post was created successfully'
       redirect_to "/posts/#{comment.post_id}"
    else
        flash[:message] = 'try again'
        render '/posts/new'
    end
  end
  
  def show 
  end

  def update
  	@comment = Comment.find(params[:id])
    if @post.update(post_params)
      flash[:message] = 'post edit ok'
      redirect_to "/users/#{current_user.id}"
    else
      flash[:message] = 'try again'
      redirect_to edit_post_path
    end
  end 

  def destroy
  	comment = Post.find(params[:id])
    post.destroy
    redirect_to root_path
  end	



private
  def comment_params
  	params.require(:comment).permit(:message, :user_id, :post_id , :user_id)
  end  

end
