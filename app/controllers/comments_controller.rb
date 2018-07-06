# Comments Controller
class CommentsController < ApplicationController
  def create
    @message = Message.find(params[:message_id])
    @comment = @message.comments.create(comment_params)
    @comment.user_id = current_user.id
    @user = User.find_by_id(@comment.user_id)
    @user.save
    if @comment.save
      redirect_to message_path(@message)
    else
      render 'new'
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
