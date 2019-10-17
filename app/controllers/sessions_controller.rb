class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:email])
      session[:user_id] = user.id
      redirect_to session.delete(:referer) || tests_path
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
