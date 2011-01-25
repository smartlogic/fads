class TargetGroup < ActiveRecord::Base
  validates :name, :presence => true
end
