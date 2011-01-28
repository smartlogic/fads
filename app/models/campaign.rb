class Campaign < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true

  belongs_to :agency
  belongs_to :client

  has_and_belongs_to_many :creatives
end
