class Experience < ActiveRecord::Base
  attr_accessible :company, :position
  
  belongs_to :user
  
  validates :user_id, presence: true
end
