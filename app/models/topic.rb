class Topic < ActiveRecord::Base
  belongs_to :user 
  has_many :comments
  validates :title,:detail,:book_title,:main_author,:user_id, presence:true
  validates :title, length: { maximum: 30 }
end
