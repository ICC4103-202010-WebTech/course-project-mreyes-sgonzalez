class MessagesController < ApplicationController

  def inbox
    @messages_send=Message.where(user_id: @current_profile.id)
    @messages_recieved=MessageUser.where(user_id: @current_profile.id)
  end

  def new
    @profiles=Profile.all
  end

  def create
    @message = Message.new(message_params)
  end
end