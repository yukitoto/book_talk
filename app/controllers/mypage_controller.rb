class MypageController < ApplicationController
  before_action :authenticate_user!
  def home
    @user = current_user
    @topics = Topic.where(user_id: current_user.id)
  end
end
