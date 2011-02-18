class CampaignSnapshotsController < ApplicationController
  before_filter :authenticate_user!

  expose(:campaign)
  expose(:campaign_snapshots) {campaign.campaign_snapshots}
  expose(:campaign_snapshot)
end
