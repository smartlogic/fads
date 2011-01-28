class Creative < ActiveRecord::Base
  mount_uploader :image, ImageUploader

  validates :name, :presence => true, :uniqueness => true
  validates :title, :presence => true, :length => {:maximum => 25}
  validates :body, :presence => true, :length => {:maximum => 135}
  validates :image, :presence => true
  validates :link_url, :presence => true

  belongs_to :client
  has_and_belongs_to_many :campaigns
end
