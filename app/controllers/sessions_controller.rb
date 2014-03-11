class SessionsController < ApplicationController


  def login
    user = User.find_by(email: params[:email])

    if user && user.authenticate(params[:password])
      session[:id] = user.id
      if current_user
        redirect_to root_path
      else
       redirect_to root_path
      end
    else
      flash[:error] = "Incorrect Email or Password"
      redirect_to root_path
    end

  end

  def logout
    session[:id] = nil
    flash[:success] = 'You have successfully logged out'
    redirect_to root_path
  end
end

