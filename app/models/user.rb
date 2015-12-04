class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :topics,dependent: :destroy
  validates :user_name, length: { maximum: 20 }
  validates :introduction, length: { maximum: 30 }
  mount_uploader :image, ImageUploader
end
