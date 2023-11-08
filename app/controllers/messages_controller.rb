class MessagesController < ApplicationController

    before_action :authenticate_user!
    

    def show
        @receiver = User.find(params[:id])
        @messages = current_user.sent_messages.where(receiver: @receiver).or(current_user.received_messages.where(sender: @receiver))
    end

    def index
        @messages = current_user.sent_messages.or(current_user.received_messages)
    end

    def new
        @receiver = User.find(params[:id])
        @message = Message.new
    end
    
    def create
        @message = Message.new(message_params)
        @message.sender = current_user
        
        puts "Receiver ID: #{@message.receiver_id}"
      
        if @message.save
          flash[:success] = 'Message sent successfully!'
          redirect_to messages_path
        else
          flash[:error] = 'Error sending the message.'
          render :new
        end
    end
    
    private
    
    def message_params
        params.require(:message).permit(:content, :receiver_id)
    end
    
end
