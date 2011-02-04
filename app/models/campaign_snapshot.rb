class CampaignSnapshot < ActiveRecord::Base
  belongs_to :campaign
  has_many :campaign_results
  
  before_create :record_timestamp

  private
  def record_timestamp
    write_attribute :timestamp, Time.now
  end
end
