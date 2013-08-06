class Post < ActiveRecord::Base
  attr_accessible :tag, :content, :user_id
  belongs_to :user
end
