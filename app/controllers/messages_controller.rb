# Messages Controller
class MessagesController < ApplicationController
  before_action :find_message, only: %I[show edit update destroy]
  before_action :authenticate_user!, except: [:welcome]
  def index
    @messages =
      if current_user.admin?
        Message.all.order('created_at DESC')
               .all.paginate(page: params[:page], per_page: 9)
               .includes(:user)
      else
        current_user.messages.all.order('created_at DESC').includes(:user)
      end
  end

  def new
    @message = current_user.messages.build
  end

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      redirect_to root_path
    else
      render 'new'
    end
  end

  def show; end

  def edit; end

  def welcome; end

  def update
    if @message.update(message_params)
      redirect_to message_path
    else
      render 'edit'
    end
  end

  def destroy
    @message.destroy
    redirect_to messages_path
  end

  private

  def message_params
    params.require(:message).permit(:title, :description)
  end

  def find_message
    @message = Message.find(params[:id])
  end
end
