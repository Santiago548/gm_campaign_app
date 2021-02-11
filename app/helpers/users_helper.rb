module UsersHelper

def user_header
    @users.find_all { |obj| obj == true }
        if @users == false
            tag.fieldset(tag.h2("PLAYERS:"))
        else
            tag.fieldset(tag.h2("GAME MASTERS:"))
        end
    end
end