class Topic < ActiveRecord::Base
  belongs_to :user 
  validates :title,:detail,:book_title,:main_author, presence:true
end
