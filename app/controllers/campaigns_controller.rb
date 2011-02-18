class CampaignsController < ApplicationController

  before_filter :authenticate_user!

  expose(:campaign)
  expose(:campaigns) {client.campaigns}
  expose(:existing_creatives) {campaign.creatives}
  expose(:available_creatives) {client.creatives - campaign.creatives}
  expose(:creative) {client.creatives.find_by_id(params[:creative_id])}

  def create
    if campaign.save
      flash[:notice] = "Campaign successfully created"
      redirect_to [client, campaign]
    else
      render :new
    end
  end

  def add_creative
    if creative
      campaign.creatives << creative
      campaign.save
      flash[:notice] = "Creative added"
    else
      flash[:error] = "Creative does not exist"
    end
    redirect_to [client, campaign]
  end

end
