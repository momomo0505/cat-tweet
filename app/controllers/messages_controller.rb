class MessagesController < ApplicationController
  before_action :authenticate_user!

  def index
    @recipient = User.find(params[:user_id])
    @messages = Message.where(sender_id: current_user.id, recipient_id: @recipient.id)
                      .or(Message.where(sender_id: @recipient.id, recipient_id: current_user.id))
                      .order(created_at: :desc)
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    @message.sender = current_user
    if @message.save
      redirect_to user_messages_path(@message.recipient)
    else
      render :index
    end
  end

  private

  def message_params
    params.require(:message).permit(:content, :recipient_id)
  end
end