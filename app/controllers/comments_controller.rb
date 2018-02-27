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
  	comment = Comment.find(params[:id])
    comment.update(comment_params)
    flash[:message] = 'comment edit ok'
    redirect_to "/posts/#{comment.post_id}"  
  end 

  def destroy
  	comment = Comment.find(params[:id])
    comment.destroy
    redirect_to "/posts/#{comment.post_id}" 
  end	



private
  def comment_params
  	params.require(:comment).permit(:message, :user_id, :post_id , :user_id)
  end  

end
