module CampaignsHelper

    
    def display_header
        if @user
            tag.h2("GAME MASTER #{@user.first_name.capitalize}'s Campaigns")
        else
            tag.h1("ALL CAMPAIGNS:")
        end
    end
        
end
