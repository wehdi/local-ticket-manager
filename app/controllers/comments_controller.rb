# Comments Controller
class CommentsController < ApplicationController
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.create(comment_params)
    @comment.user_id = current_user.id
    @user = User.find_by_id(157)
    if @comment.save
      redirect_to message_path(@message)
    else
      render 'new'
    end
  end

  def show
  
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
