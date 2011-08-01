class ApplicationController < ActionController::Base
  protect_from_forgery
  def check_admin
    unless current_user.try(:admin?)
      redirect_to user_session_path, :notice => "Login first!"
    end
  end
  
  def which_user
      @user = current_user
  end
end
