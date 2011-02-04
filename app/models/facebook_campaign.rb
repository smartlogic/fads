class FacebookCampaign < ActiveRecord::Base
  belongs_to :campaign
  has_many :campaign_results
end
