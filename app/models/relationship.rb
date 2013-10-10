class Relationship < ActiveRecord::Base
  validates :tag_id, :presence => true
  validates :post_id, :presence => true
end
