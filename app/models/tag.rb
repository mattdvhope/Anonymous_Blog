class Tag < ActiveRecord::Base
  validates :topic, :presence => true
end
