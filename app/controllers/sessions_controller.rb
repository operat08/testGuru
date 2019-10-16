class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user&.authenticate(params[:email])
      session[:user_id] = user.id
      redirect_to session[:referer]
    else
      flash.now[:alert] = 'Can not find match e-mail password  '
      render :new
    end
  end

  def sign_out
    session.delete(:user_id)
  end
end
