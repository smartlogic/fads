class CreateCampaignResults < ActiveRecord::Migration
  def self.up
    create_table 'campaign_results', :id => false do |t|
      t.decimal     :spend
      t.integer     :impressions
      t.integer     :clicks
      t.integer     :conversions
      t.references  :facebook_campaign, :foreign_key => true
      t.timestamp   :timestamp
    end
  end

  def self.down
    drop_table 'campaign_results'
  end
end
