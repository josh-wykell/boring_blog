class SessionsController < ApplicationController
  
   def create
    user = User.authorize_with(request.env["omniauth.auth"])
    if user
      session[:user_id] = user.id
      redirect_to root_path :notice "Loggin Successful"
    else
      redirect_to root_path, :notice => "Fail."
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, :notice => "Signed out!"
  end
end