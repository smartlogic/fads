class Campaign < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  belongs_to :agency
end
