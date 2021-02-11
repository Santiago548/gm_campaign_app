module UsersHelper

    def user_header
        if params[:player]
        tag.fieldset(tag.h2("PLAYERS:"))
        else
        tag.fieldset(tag.h2("GAME MASTERS:"))
        end
    end
end