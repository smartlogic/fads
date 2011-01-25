class Campaign < ActiveRecord::Base
  validates :name, :presence => true, :uniqueness => true
end
