class MypageController < ApplicationController
  def home
    @user = current_user
    @topics = Topic.where(user_id: current_user.id)
  end
end
