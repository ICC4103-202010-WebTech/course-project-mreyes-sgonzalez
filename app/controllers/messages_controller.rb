class MessagesController < ApplicationController

  def inbox
    @messages_send=Message.where(user_id: @current_profile.id)
    @messages_recieved=MessageUser.where(user_id: @current_profile.id)
  end

  def new
    @profiles=Profile.all
  end

  def create
    @message_out=Profile.where(name: params[:message_user][:profile]).first
    @message_user= MessageUser.new(user_id: @message_out.id)
    @message_user.save
    @message = Message.new(user_id: @current_profile.id, message: params[:message], message_user_id: @message_user.id)

    respond_to do |format|
      if @message.save
        format.html { redirect_to inbox_messages_path, notice: 'Message was successfully created.' }
        format.json { render :show, status: :created, location: @message }
      else
        format.html { render :new }
        format.json { render json: @message.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_organization
    @message = Message.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def message_params
      params.fetch(:messages, {}).permit(:message, :message_user =>[:profile])
  end

  def message_reply_params

  end


end