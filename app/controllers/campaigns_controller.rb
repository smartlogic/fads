class CampaignsController < ApplicationController

  before_filter :authenticate_user!

  expose(:campaign)

  def create
    if campaign.save
      flash[:notice] = "Campaign successfully created"
      redirect_to campaign
    else
      render :new
    end
  end
end
