class CampaignsController < ApplicationController
    def new
        @campaign = Campaign.new
    end 

    def show
        @campaign = Campaign.find_by(id: params[:id])
        @characters = Character.all
    end 
    
    def index
        @campaigns = Campaign.all 
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
            :quest_log
        )
    end 
end
