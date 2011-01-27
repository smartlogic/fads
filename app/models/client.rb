class Client < ActiveRecord::Base
  belongs_to :agency

  has_many :target_groups
end
