class MypageController < ApplicationController
  before_action :authenticate_user!
  def home
    @user = current_user
    @topics = @user.topics.reorder('created_at DESC')
  end
end
