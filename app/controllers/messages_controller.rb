class MessagesController < ApplicationController
    def new
    end
    def show
    end
    def index
        if params[:id]
            @messages =Message.where('id < ? AND receiver_id = ?',params[:id], current_user.id).limit(5).order('id DESC')            
        else
            @messages =Message.where(receiver_id: current_user).limit(5).order('id DESC')
        end
        respond_to do |format|
            format.html
            format.js
        end
    end
    def destroy
    end
end
