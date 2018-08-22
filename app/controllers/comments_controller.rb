# Comments Controller
# find_message: find message by id
# find_comment: find the messages comment
# comment_params: get the comment and permit only the content
# authenticate_user: devise method that  allow access only to authenticate users
class CommentsController < ApplicationController
  before_action :find_message
  before_action :find_comment, only: %i[edit update destroy]
  before_action :authenticate_user!
  def create
    @comment = @message.comments.create(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to message_path(@message)
    else
      redirect_to new_user_session_path
    end
  end

  def show; end

  def edit; end

  def update
    if @comment.update(comment_params)
      redirect_to message_path(@message)
    else
      render 'edit'
    end
  end

  def destroy
    @comment.destroy
    redirect_to message_path(@message)
  end

  private

  def comment_params
    params.require(:comment).permit(:content)
  end

  def find_message
    @message = Message.find(params[:message_id])
  end

  def find_comment
    @comment = @message.comments.find(params[:id])
  end
end
