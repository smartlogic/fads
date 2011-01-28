class CreateCampaignCreativeJoinTable < ActiveRecord::Migration
  def self.up
    create_table :campaigns_creatives, :id => false do |t|
      t.references :campaign
      t.references :creative
    end
  end

  def self.down
    drop_table :campaigns_creatives
  end
end
