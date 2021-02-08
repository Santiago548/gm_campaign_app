module ApplicationHelper
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!current_user
    end

    def layout_pref
        if logged_in? && current_user.game_master == true
            render partial: 'layouts/game_master'
        else
            render partial: 'layouts/player'
        end
    end
end