class Creative < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :title, :presence => true, :length => {:maximum => 25}
  validates :body, :presence => true, :length => {:maximum => 135}
  validates :image, :presence => true
end
