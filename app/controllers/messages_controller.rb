class MessagesController < ApplicationController
    def new
    end
    def show
    end
    def index
        @messages =Message.where(receiver_id: current_user)
    end
    def destroy
    end
end
