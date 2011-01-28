class Client < ActiveRecord::Base
  belongs_to :agency

  has_many :target_groups
  has_many :campaigns
  has_many :creatives
end
