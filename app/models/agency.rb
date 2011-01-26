class Agency < ActiveRecord::Base
  has_many :users
  has_many :campaigns
  has_many :clients
end
