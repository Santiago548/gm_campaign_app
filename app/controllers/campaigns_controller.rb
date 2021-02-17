class CampaignsController < ApplicationController
    def new
        if logged_in? && current_user.game_master
            @campaign = Campaign.new
        else
            render partial: 'layouts/errors_gm'
        end
    end 

    def show
        @campaign = Campaign.find_by(id: params[:id])
        @characters = Character.all
    end 
    
    def index
        if params[:search]
            @campaigns = Campaign.where("name like ?", "%#{params[:search]}%")     
        else
            @campaigns = Campaign.all 
        end
    end 

    def create
        @campaign = Campaign.new(campaign_params)
        if @campaign.save
            redirect_to campaign_path(@campaign)
        else
            render :new
        end
    end 

    def edit
        @campaign = Campaign.find(params[:id])
    end

    def update
        campaign = Campaign.find(params[:id])
        campaign.update(campaign_params)
        redirect_to campaign_path(campaign)
    end 

    def destroy
        @campaign = Campaign.find_by(id: params[:id])
        @campaign.destroy
        redirect_to campaigns_path
    end 


    private

    def campaign_params
        params.require(:campaign).permit(:name,
            :gm_name,
            :gm_email, 
            :gm_phone_number,
            :start_date,
            :end_date,
            :next_session,
            :session_active,
            :quest_log,
            :search
        )
    end 
end
