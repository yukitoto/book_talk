class Topic < ActiveRecord::Base
  belongs_to :user 
  has_many :comments
  validates :title,:detail,:book_title,:main_author, presence:true
end
