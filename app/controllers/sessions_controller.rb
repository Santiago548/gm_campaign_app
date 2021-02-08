class SessionsController < ApplicationController
  def omniauth
      user = User.create_from_omniauth(auth)
    if user.save
        session[:user_id] = user.id
        redirect_to new_character_path
    else
        flash[:message] = user.errors.full_messages.join(', ')
        redirect_to characters_path
    end
  end

  def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u && u.authenticate(params[:password])
      session[:user_id] = u.id
      redirect_to user_path(u)
    else
      flash[:alert] = "Invalid login, Please try Again"
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
