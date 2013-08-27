class Tag < ActiveRecord::Base
  attr_accessible :name, :micropost_id
end
