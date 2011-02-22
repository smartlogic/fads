class CampaignResult < ActiveRecord::Base
  belongs_to :facebook_campaign
  belongs_to :campaign_snapshot  

  def cpc
    (spend/clicks).to_f
  end

end
