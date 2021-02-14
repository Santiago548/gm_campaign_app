class SessionsController < ApplicationController
  def omniauth
      user = User.create_from_omniauth(auth)
    if user.save
        session[:user_id] = user.id
        redirect_to user_path(user)
    else
        flash[:message] = user.errors.full_messages.join(', ')
        redirect_to '/login'
    end
  end

  def new
  end

  def create
    !params[:username].blank? ? user = User.find_by_username(params[:username]) : user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to user_path(user)
    else
      flash[:message] = 'Invalid log in, please try again.'
      redirect_to '/login'
    end
  end
  
  def destroy
    session[:user_id] = nil
    redirect_to login_url, :notice => "Logged out"
  end

  private

  def auth
      request.env['omniauth.auth']
  end

end
