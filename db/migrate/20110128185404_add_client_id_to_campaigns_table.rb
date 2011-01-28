class AddClientIdToCampaignsTable < ActiveRecord::Migration
  def self.up
    add_column :campaigns, :client_id, :integer
  end

  def self.down
    remove_column :campaigns, :client_id
  end
end
