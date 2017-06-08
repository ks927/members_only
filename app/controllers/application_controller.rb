class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
    
  # Logs in given user
  def sign_in(user)
      session[:user_id] = user.id
  end
    
    
  # Remembers given user in persistent session
  def remember(user)
     user.remember
     cookies.permanent.signed[:user_id] = user.id
     cookies.permanent[:remember_token] = user.remember_token
  end
    
  # Returns current signed-in user
  def current_user
      if (user_id = session[:user_id])
         @current_user ||= User.find_by(id: user_id) 
      elsif (user_id = cookies.signed[:user_id])
         user = User.find_by(id: user_id)
         if user && user.authenticated?(:remember, cookies[:remember_token])
             sign_in user
             @current_user = user
         end
      end
  end
  
  # Returns true if the current user is the given user
  def current_user?(user)
      user == current_user
  end
    
  # End session and forget user
  def sign_out
      forget(current_user)
      session.delete(:user_id)
      @current_user = nil
  end
    
  # Delete cookies
  def forget(user)
      cookies.delete(:user_id)
      cookies.delete(:remember_token)
  end
    
end
