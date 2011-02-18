class FacebookCampaign < ActiveRecord::Base
  belongs_to :campaign
  has_many :campaign_results
  has_many :campaign_snapshots, :through => :campaign_results

  def temporal_cpc
    campaign_results.inject([]) do |memo, cr|
      reduction = memo.inject(0, :+)
      memo << cr.cpc - reduction
    end
  end
end
