# Messages Controller
class MessagesController < ApplicationController
  before_action :authenticate_user!, except: [:welcome]
  before_action :find_message, only: %I[show edit update destroy close]

  def index
    find_messages(false)
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

# Passe la column close a true = sujet clos
  def close
    @message.close = true
    @message.save
    redirect_back(fallback_location: messages_path)
  end

  def archive
    find_messages(true)
  end

  private

  def message_params
    params.require(:message).permit(:title, :description)
  end

  def find_message
    @message = Message.find(params[:id])
  end

  #
  def find_messages(stat)
    @messages =
      if current_user.admin?
        Message.where(close: stat).order('created_at DESC')
               .all.paginate(page: params[:page], per_page: 9)
               .includes(:user)
        
      else
        current_user.messages.where(close: stat).order('created_at DESC')
        .all.paginate(page: params[:page], per_page: 9)
      end
  end
end
