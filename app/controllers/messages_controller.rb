class MessagesController < ApplicationController
    def new  
        @message = Message.new      
    end

    def create
        @message = Message.new(message_params)
        render 'new' 
    end

    private
    def message_params
        params.require(:messages).permit(:status,:sender_id,:receiver_id,:content,:sent_time,:seen_time)
        
    end
end
