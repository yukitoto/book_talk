class CommentsController < ApplicationController
  before_action :set_comment, only: [:edit,:update,:destroy] 
  before_action :set_topic, only: [:new,:edit] 

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to topic_path(@comment.topic.id)
    else
      render :action => :new
    end
  end

  def edit
  end

  def update
    if @comment.update(comment_params)
      redirect_to topic_path(@comment.topic.id)
    else
      render :action => :edit
    end
  end

  def destroy
     topic_id = @comment.topic.id
    if @comment.destroy
      redirect_to topic_path(topic_id)
    else
      render :action => :index
    end
  end

  private

    def comment_params
      params.require(:comment).permit(:comment,:user_id,:topic_id)
    end

    def set_comment
      @comment = Comment.find(params[:id])
    end

    def set_topic
      @topic = Topic.find(params[:topic_id])
    end
end
