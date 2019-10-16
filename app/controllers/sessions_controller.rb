class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    puts '!!!!!!!!!'
    if user&.authenticate(params[:email])
      session[:user_id] = user.id
      redirect_to tests_path
    else
      flash.now[:alert] = 'Can not find match e-mail password  '
      render :new
    end
  end

  def sign_out
    session.delete(:user_id)
  end
end
