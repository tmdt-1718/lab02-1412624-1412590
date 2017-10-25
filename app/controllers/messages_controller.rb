class MessagesController < ApplicationController
    
    # show all receive message
    def index
        @inMessages =Message.where(receiver_id: current_user.id)   
        @outMessages =Message.where(sender_id: current_user.id)   
    end
    def new  
        @message = Message.new      
        @friendlist = friend_list
    end
    # send new message
    def create
        @message = Message.new(message_params)
        if @message.save
            flash[:success] = "Send successfully"
            redirect_to messages_path
        else
           render 'new'
        end
    end
    # change status of message
    def setReaded(id)
        Message.update(id, :status=>1, :seen_time => Time.new)
    end
    # destroy message have been seen
    private
        def message_params
            params.require(:message).permit(:receiver_id,:content,:seen_time).merge!({sender_id: current_user.id, status: 0 })
        end
   
end
