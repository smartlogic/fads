class CreateCampaignsTable < ActiveRecord::Migration
  def self.up
    create_table :campaigns do |t|
      t.integer :campaign_id
      t.integer :account_id
      t.string :name, :limit => 100
      t.datetime :time_start
      t.datetime :time_stop
      t.integer :daily_budget
      t.integer :campaign_status
      t.integer :lifetime_budget
    end
  end

  def self.down
    drop_table :campaigns
  end
end
