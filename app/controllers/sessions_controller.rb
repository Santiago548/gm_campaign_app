class SessionsController < ApplicationController
  layout 'welcome'
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

  private

  def auth
      request.env['omniauth.auth']
  end

end
