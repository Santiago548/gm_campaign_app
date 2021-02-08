module ApplicationHelper
    def current_user
        @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    end

    def logged_in?
        !!session[:user_id]
    end

    #def layout_pref
        #if logged_in? && current_user.game_master == true
            #layout 'game_master'
        #else
            #layout 'application'
        #end
    #end
end