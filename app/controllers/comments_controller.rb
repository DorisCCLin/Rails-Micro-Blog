class CommentsController < ApplicationController
  def new
  	@comment = Comment.new
  end

  def create
  	user = User.find_by_id(session[:user_id])
    post = Psot.find_by_id(params[:id])
    comment = Comment.new(comment_params)
        # @user.posts.create(post_params)
    if comment.save
       flash[:message] = 'Your post was created successfully'
       redirect_to "/posts/#{post.id}"
    else
        flash[:message] = 'try again'
        render '/posts/new'
    end
  end
  
  def show 
  	@comments = Comments_find

  
  end	



private
  def comment_params
  	params.require(:comment).permit(:message, :user_id, :post_id , :user_id)
  end  

end
