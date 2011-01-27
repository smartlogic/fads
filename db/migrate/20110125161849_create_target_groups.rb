class CreateTargetGroups < ActiveRecord::Migration
  def self.up
    create_table :target_groups do |t|
      t.string :name
      t.references :client

      t.timestamps
    end
  end

  def self.down
    drop_table :target_groups
  end
end
