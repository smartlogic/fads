class CreateFacebookCampaigns < ActiveRecord::Migration
  def self.up
    create_table :facebook_campaigns do |t|
      t.string    :name, :null => false
      t.string    :image
      t.string    :copy
      t.string    :gender
      t.boolean   :likes_law_and_order
      t.string    :image
      t.string    :copy
      t.integer   :population
      t.decimal   :bid
      t.decimal   :value_per_conversion
      t.integer   :campaign_id, :null => false
    end
    add_foreign_key :facebook_campaigns, :campaigns
  end

  def self.down
    remove_foreign_key :facebook_campaigns, :column => :campaign_id
    drop_table :facebook_campaigns
  end
end
