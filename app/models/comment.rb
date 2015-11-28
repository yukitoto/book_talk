class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :topic
  validates :comment , presence:true
end
