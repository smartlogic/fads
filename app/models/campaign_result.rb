class CampaignResult < ActiveRecord::Base
  belongs_to :facebook_campaign
  
  before_create :record_timestamp

  private
  def record_timestamp
    write_attribute :timestamp, Time.now
  end
end
