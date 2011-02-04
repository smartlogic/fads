class CreateCampaignSnapshots < ActiveRecord::Migration
  def self.up
    create_table :campaign_snapshots do |t|
      t.references :campaign, :foreign_key => true, :null => false
      t.timestamp :timestamp, :null => false
    end
    
    add_column :campaign_results, :campaign_snapshot_id, :integer, :null => false
    add_foreign_key :campaign_results, :campaign_snapshots
    remove_column :campaign_results, :timestamp
  end

  def self.down
    add_column :campaign_results, :timestamp, :timestamp
    remove_foreign_key :campaign_results, :column => :campaign_snapshot_id
    remove_column :campaign_results, :campaign_snapshot_id
    drop_table :campaign_snapshots
  end
end
