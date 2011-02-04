class Campaign < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  belongs_to :client
  has_many :facebook_campaigns

  has_and_belongs_to_many :creatives
end
