class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:email])
      session[:user_id] = user.id
      if session[:referer]
        redirect_to session[:referer]
        session.delete(:referer)
      else
        redirect_to tests_path
      end
    else
      flash.now[:alert] = 'Can not find match e-mail - password'
      render :new
    end
  end

  def destroy
    session.delete(:user_id)
    redirect_to login_path
  end
end
