class MypageController < ApplicationController
  def home
    @topics = Topic.where(user_id: current_user.id)
  end
end
