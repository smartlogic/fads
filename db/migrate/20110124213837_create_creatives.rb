class CreateCreatives < ActiveRecord::Migration
  def self.up
    create_table :creatives do |t|
      t.string :title
      t.string :body
      t.string :image
      t.integer :creative_id
      t.string :link_url
      t.string :iupreview_url
      t.string :ad_type
      t.integer :related_object_id

      t.timestamps
    end
  end

  def self.down
    drop_table :creatives
  end
end
