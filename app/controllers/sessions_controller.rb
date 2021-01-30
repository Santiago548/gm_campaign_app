class SessionsController < ApplicationController
 
  def omniauth
    user = User.find_or_create_by(uid: auth['uid'], provider: auth['provider']) do |u|
      u.username = auth['info']['first_name']
      u.email = auth['info']['email']
      u.first_name = auth['info']['first_name']
      u.last_name = auth['info']['last_name']
      u.password = SecureRandom.hex(12)
    end
    if user.save
      session[:user_id] = user.id
      redirect_to new_character_path
    else
      flash[:message] = user.errors.full_messages.join(', ')
       redirect_to characters_path
    end
  end

  private

  def auth
    request.env['omniauth.auth']
  end

end
