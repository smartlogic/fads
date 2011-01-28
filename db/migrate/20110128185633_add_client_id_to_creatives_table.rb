class AddClientIdToCreativesTable < ActiveRecord::Migration
  def self.up
    add_column :creatives, :client_id, :integer
  end

  def self.down
    remove_column :creatives, :client_id
  end
end
