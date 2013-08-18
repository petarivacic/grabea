class Education < ActiveRecord::Base
  attr_accessible :university_name, :graduation_date, :graduated

  belongs_to :user
  
  validates :user_id, presence: true
end
