class CreateCampaignResults < ActiveRecord::Migration
  def self.up
    create_table 'campaign_results', :id => false do |t|
      t.string  :gender
      t.boolean :likes_l_and_o
      t.string  :image
      t.string  :copy
      t.integer :population
      t.decimal :actual_bid
      t.string  :utm_content
      t.decimal :spend
      t.integer :impressions
      t.decimal :population_reached
      t.integer :clicks
      t.decimal :click_rate
      t.integer :conversions
      t.decimal :conversion_rate
      t.decimal :value_per_conversion
      t.decimal :effective_cpm
      t.decimal :effective_cpc
      t.decimal :effective_cpa
      t.decimal :value_created
      t.decimal :profit
      t.decimal :profit_margin
    end
  end

  def self.down
    drop_table 'campaign_results'
  end
end
