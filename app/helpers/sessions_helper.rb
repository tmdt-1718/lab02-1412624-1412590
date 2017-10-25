module SessionsHelper
  # Logs in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end
  # Returns the current logged-in user (if any).
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end
  # return the friend_list of current_user
  def friend_list    
    if(current_user)
      @friend_list ||= FriendList.find_by(user_id: @current_user.id)
    end
  end 
  # Returns true if the user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end
    # Logs out the current user.
    def log_out
      session.delete(:user_id)
      @current_user = nil
    end
end