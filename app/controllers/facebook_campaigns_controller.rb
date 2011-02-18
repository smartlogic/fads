class FacebookCampaignsController < ApplicationController
  before_filter :authenticate_user!

  expose(:campaign)
  expose(:facebook_campaigns) {campaign.facebook_campaigns}
  expose(:facebook_campaign)
end
