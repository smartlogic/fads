class TargetGroup < ActiveRecord::Base
  validates :name, :presence => true

  belongs_to :client
end
