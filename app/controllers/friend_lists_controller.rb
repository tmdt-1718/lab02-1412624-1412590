class FriendListsController < ApplicationController
    def create
        @friendlist = FriendList.new(friend_list_params)
        if @friendlist.save
          flash[:success] = "Add friend success!"
          redirect_to users_path
        else
          render 'new'
        end
    end
    private  
    def friend_list_params
      params.require(:friend_list).permit(:friend_id, :user_id)
    end
end
