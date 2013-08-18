class Skill < ActiveRecord::Base
  attr_accessible :score, :skill_type

  belongs_to :user

  validates :skill_type, presence: true, length: { maximum: 40}
  validates :user_id, presence: true
  default_scope order: 'skills.score ASC'

  

end
