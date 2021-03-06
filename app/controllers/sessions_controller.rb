class SessionsController < ApplicationController
    
  def new
  end
    
  def create
      @user = User.find_by(email: params[:session][:email])
      if @user && @user.authenticate(params[:session][:password])
          sign_in @user
          remember @user
          flash[:success] = "You're signed in!"
          redirect_to root_url
      else
          flash.now[:error] = "Invalid username/password. Try again."
          render 'new'
      end
  end
    
  def delete
     sign_out if signed_in?
     flash[:success] = "You're signed out!"
     redirect_to root_url
  end
end
