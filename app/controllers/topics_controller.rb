class TopicsController < ApplicationController
  before_action :set_topic, only: [:show,:edit,:update,:destroy] 
  before_action :authenticate_user!,only:[:new,:create,:edit,:update,:destroy]

  def index
    @topics = Topic.all.reorder('created_at DESC')
  end

  def show
    @comments = @topic.comments
  end

  def new
    @topic = Topic.new
  end

  def create
    @topic = Topic.new(topic_params)
    if @topic.save
      redirect_to topics_path 
    else
      render :action => :new
    end
  end

  def edit
    @topic = Topic.find(params[:id])
  end

  def update
    if @topic.update(topic_params)
      redirect_to topics_path 
    else
      render :action => :edit
    end
  end

  def destroy
    if @topic.destroy
      redirect_to topics_path 
    else
      render :action => :index
    end
  end


  private


   def topic_params
     params.require(:topic).permit(:title,:detail,:book_title,:main_author,:user_id)
   end

   def set_topic
     @topic = Topic.find(params[:id])
   end
end
